package nuonuo.questions.Dao;/*
 * Created by 15R-5537 on 2017/4/25.
 */

import com.wenqian.tools.jdbc.TxQueryRunner;
import nuonuo.questions.Question;
import nuonuo.tag.Dao.TagsDao;
import nuonuo.tag.Dao.TagsDaoImpl;
import nuonuo.tag.Tags;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;
import uitls.CommonUtils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuestionDapImpl implements QuestionDao {
    private QueryRunner qr =new TxQueryRunner();
    @Override
    public boolean addQuestion(Question question) throws SQLException {
        int cnt = 0;
        question.setQid(CommonUtils.getUUid());
        String sql = "insert into tb_question(qid, aid, qtitle, qdescribe) " +
                "values(?, ?, ?, ?)";
        cnt=qr.update(sql, question.getQid(),question.getAlias().getAid(),question.getQtitle(),question.getQdescribe());
        List<Tags> tags =question.getTags();
        if(cnt>0){
            for(Tags tag:tags){
                String sqld ="insert into question_tags(qid, tid) values(?, ?)";
                int cnt2=qr.update(sqld, question.getQid(), tag.getTid());
                if(cnt2 > 0){
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public List<Question> selectAllQuestion(String qtitle) throws SQLException {
        return qr.query("select * from tb_question where qtitle like  ? ",new BeanListHandler<>(Question.class), '%'+qtitle+'%');

    }

    @Override
    public List<Question> selectQuestionById(String aid) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("select * from tb_question where aid = ? ");

        return qr.query(sql.toString(),new BeanListHandler<Question>(Question.class), aid);
    }

    @Override
    public boolean updateQuestion(Question question) throws SQLException {
        StringBuilder sql =new StringBuilder();
        sql.append("update tb_question q, tb_alias a set qid = ?,");
        sql.append(" aid = ?, qtitle = ?, ");
        sql.append("qdescribe = ? where a.aid = q.aid");
        qr.update(sql.toString(), question.getQid(),question.getAlias().getAid(),question.getQtitle(),question.getQdescribe());
        return false;
    }

    @Override
    public List<Question> findQuestionByAid(String aid) throws SQLException {
        StringBuffer sql =new StringBuffer();
        sql.append("select * from ");
        sql.append("tb_question where aid = ? ");
        return qr.query(sql.toString(),new BeanListHandler<Question>(Question.class), aid);
    }

    @Override
    public int Questionnum(String aliasid) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("select * from ");
        sql.append("tb_question where aid = ?");
        return qr.update(sql.toString(),new Object[]{aliasid});
    }

    @Override
    public boolean Delete_Questioon(Question question) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("delete from question_tags");
        sql.append("where qid = ? ");
        int cnt = qr.update(sql.toString(),new Object[]{question.getQid()});
        return cnt > 0;
    }

    @Override
    public Question find_Questionone(Object qid) throws SQLException {
        String sql = "select * from tb_question " +
                "where qid = ?";
        return qr.query(sql,new BeanHandler<>(Question.class),qid);
    }

    @Override
    public List<Tags> findTags_Question(String qid) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("select * from question_tags ");
        sql.append("where qid = ?");
        List tids = qr.query(sql.toString(),new ColumnListHandler("tid"),qid);
        if(tids!=null){
            TagsDao tDao = new TagsDaoImpl();
            List<Tags> Questiontags = new ArrayList<>();
            for(Object tid:tids){
                Tags tags = tDao.find_TagsById(tid);
                Questiontags.add(tags);
            }
            return Questiontags;
        }
        return null;
    }

    @Override
    public Question find_one(String qtitle) throws SQLException {
        String sql ="select * from tb_question " +"where qtitle = ?";
        return qr.query(sql,new BeanHandler<>(Question.class),qtitle);
    }

    @Override
    public List<Question> Find_List() throws SQLException {
        String sql = "select * from tb_question";
        return qr.query(sql,new BeanListHandler<Question>(Question.class));
    }


}
