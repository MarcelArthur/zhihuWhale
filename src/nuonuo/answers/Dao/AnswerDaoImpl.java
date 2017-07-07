package nuonuo.answers.Dao;/*
 * Created by 15R-5537 on 2017/5/9.
 */

import com.wenqian.tools.jdbc.JdbcUtils;
import com.wenqian.tools.jdbc.TxQueryRunner;

import nuonuo.answers.Answer;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import org.apache.commons.dbutils.handlers.ScalarHandler;
import uitls.CommonUtils;


import java.sql.SQLException;
import java.util.List;

public class AnswerDaoImpl implements AnswerDao{
    private QueryRunner qr = new TxQueryRunner();
    /*操作clob数据的方法*/
    /**
     * 没有写完的方法
     * */
    @Override
    public boolean Answer_add(Answer answer) {
        try {
            answer.setAnid(CommonUtils.getUUid());
            String sql = "insert into tb_answers(anid, aid, qid, ancontent) " +
                    "values(?, ?, " +
                    "?, ?)";
            int isanswer= qr.update(sql, answer.getAnid(),answer.getAlias().getAid(),answer.getQuestion().getQid(),"empty_clob()");
            if (isanswer > 0){
                String ancontents;
                ancontents=answer.getAncontent();
                if(ancontents!=null && !ancontents.isEmpty()){
                    String sqlup= "update tb_answers set ancontent = ? where anid = ?";
                    int cnt =qr.update(sqlup,ancontents,answer.getAnid());
                    return cnt > 0;
                }

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
    /*删除对应的回答数据*/
    @Override
    public boolean Answer_drop(String aid, String qid) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("delete from tb_answers ");
        sql.append("where aid = ? and qid = ?");
        int cnt = qr.update(sql.toString(), aid,qid);
        return cnt > 0;
    }
    /**
     * 没有写完的方法
     * */
    @Override
    public boolean Answer_edit(Answer answer) {
        StringBuffer sql  = new StringBuffer();
        sql.append("update tb_answers set ");
        sql.append("ancontent = ? where anid  = ?");
        return false;
    }

    @Override
    public List<Answer> answersfindByAid(String aid) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("select * from tb_answers ");
        sql.append("where aid = ?");
        return qr.query(sql.toString(),new BeanListHandler<Answer>(Answer.class),aid);
    }

    @Override
    public Answer selectanswer(String aid, String qid) throws SQLException {
        String sql = "select * from tb_answers " +
                "where aid = ? and qid = ?";
        return qr.query(sql,new BeanHandler<>(Answer.class),aid,qid);
    }

    @Override
    public List<Answer> answerfindList() throws SQLException {
        String sql = "select * from tb_answers";
        return qr.query(sql,new BeanListHandler<>(Answer.class));
    }

    @Override
    public List<Answer> answerfindListByQ(String qid) throws SQLException {
        String sql ="select * from tb_answers where qid = ?";
        return qr.query(sql,new BeanListHandler<>(Answer.class),qid);
    }


}
