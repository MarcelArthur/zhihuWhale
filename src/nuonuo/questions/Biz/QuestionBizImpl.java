package nuonuo.questions.Biz;/*
 * Created by 15R-5537 on 2017/5/10.
 */

import nuonuo.questions.Dao.QuestionDao;
import nuonuo.questions.Dao.QuestionDapImpl;
import nuonuo.questions.Question;
import nuonuo.tag.Tags;

import java.sql.SQLException;
import java.util.List;

public class QuestionBizImpl implements QuestionBiz {
    private QuestionDao dao = new QuestionDapImpl();
    @Override
    public boolean addQuestion(Question question) {
        try {
            return dao.addQuestion(question);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Question> selectAllQuestion(String qtitle) {
        try {
            return dao.selectAllQuestion(qtitle);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Question> selectQuestionById(String aid) {
        try {
            return dao.selectQuestionById(aid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean updateQuestion(Question question) {
        try {
            return dao.updateQuestion(question);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Question> findQuestionByAid(String aid) {
        try {
            return dao.findQuestionByAid(aid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int Questionnum(String aliasid) {
        try {
            return dao.Questionnum(aliasid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    @Override
    public boolean Delete_Questioon(Question question) {
        try {
            return dao.Delete_Questioon(question);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Question find_Questionone(Object qid) {
        try {
            return dao.find_Questionone(qid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Tags> findTags_Question(String qid) {
        try {
            return dao.findTags_Question(qid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Question find_one(String qtitle) {
        try {
            return dao.find_one(qtitle);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Question> Find_List() {
        try {
            return dao.Find_List();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
