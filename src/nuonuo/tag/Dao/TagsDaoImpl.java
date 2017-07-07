package nuonuo.tag.Dao;/*
 * Created by 15R-5537 on 2017/5/8.
 */

import com.wenqian.tools.jdbc.TxQueryRunner;
import nuonuo.questions.Dao.QuestionDao;
import nuonuo.questions.Dao.QuestionDapImpl;
import nuonuo.questions.Question;
import nuonuo.tag.Tags;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;
import uitls.CommonUtils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TagsDaoImpl implements TagsDao{
    private QueryRunner qr = new TxQueryRunner();
    private QuestionDao QDao = new QuestionDapImpl();
    @Override
    public boolean add_Tags(Tags Tag) throws SQLException {
        Tag.setTid(CommonUtils.getUUid());
        String sql = "insert into tb_tags " +
                "values (?, ?)";
        int cnt = qr.update(sql, Tag.getTid(),Tag.getTname());
        return cnt > 0;
    }

    @Override
    public boolean update_Tags(Tags Tag) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("update tb_tags ");
        sql.append("set tname = ? where ");
        sql.append("tid = ?");
        int cnt = qr.update(sql.toString(), Tag.getTname(),Tag.getTid());
        return cnt > 0;
    }

    @Override
    public List<Tags> findAll_Tags() throws SQLException {
        String sql = "select * from tb_tags";
        return qr.query(sql,new BeanListHandler<Tags>(Tags.class));
    }

    @Override
    public List<Tags> find_Tags(String tname) throws SQLException {
        String sql = "select * from tb_tags where tname like ?";
        return qr.query(sql,new BeanListHandler<>(Tags.class),"%"+tname+"%");
    }

    @Override
    public Tags exact_search(String tname) throws SQLException {
        String sql ="select * from tb_tags where tname = ?";
        return qr.query(sql,new BeanHandler<>(Tags.class),tname);
    }

    @Override
    public Tags find_TagsById(Object tid) throws SQLException {
        String sql = "select * from tb_tags where tid = ?";
        Tags tags = qr.query(sql,new BeanHandler<>(Tags.class),tid);
        return tags;
    }

    @Override
    public boolean delete_Tags(Tags Tag) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("delete from tb_tags ");
        sql.append("where ?");
        int cnt = qr.update(sql.toString(),new Object[]{Tag.getTid()});
        return cnt > 0;
    }

    @Override
    public List<Question> findQusetion_Tags(String tid) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("select * from question_tags ");
        sql.append("where tid = ?");
        List qids= qr.query(sql.toString(),new ColumnListHandler("qid"),tid);
        if(qids!=null){
            List<Question> questions = new ArrayList<>();
            for(Object qid:qids){
                Question question = QDao.find_Questionone(qid);
                questions.add(question);
            }
            return questions;
        }else{
            System.out.print("没有获得对应的问题");
        }
        return null;
    }


}
