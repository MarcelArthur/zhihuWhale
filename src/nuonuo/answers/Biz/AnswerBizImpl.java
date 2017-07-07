package nuonuo.answers.Biz;/*
 * Created by 15R-5537 on 2017/5/15.
 */

import nuonuo.answers.Answer;
import nuonuo.answers.Dao.AnswerDao;
import nuonuo.answers.Dao.AnswerDaoImpl;

import java.sql.SQLException;
import java.util.List;

public class AnswerBizImpl implements AnswerBiz{
    private AnswerDao dao = new AnswerDaoImpl();
    @Override
    public boolean Answer_add(Answer answer) {
        return dao.Answer_add(answer);
    }

    @Override
    public boolean Answer_drop(String aid, String qid) {
        try {
            return dao.Answer_drop(aid,qid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean Answer_edit(Answer answer) {
        return dao.Answer_edit(answer);
    }

    @Override
    public List<Answer> answersfindByAid(String aid) {
        try {
            return dao.answersfindByAid(aid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Answer selectanswer(String aid, String qid) {
        try {
            return dao.selectanswer(aid,qid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Answer> answerfindList() {
        try {
            return dao.answerfindList();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Answer> answerfindListByQ(String qid) {
        try {
            return dao.answerfindListByQ(qid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
