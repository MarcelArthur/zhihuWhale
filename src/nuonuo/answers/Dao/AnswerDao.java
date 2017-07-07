package nuonuo.answers.Dao;/*
 * Created by 15R-5537 on 2017/5/9.
 */

import nuonuo.answers.Answer;

import java.sql.SQLException;
import java.util.List;

public interface AnswerDao {
    boolean Answer_add(Answer answer);

    boolean Answer_drop(String aid,String qid) throws SQLException;

    boolean Answer_edit(Answer answer);

    List<Answer> answersfindByAid(String aid) throws SQLException;

    Answer selectanswer(String aid,String qid) throws SQLException;

    List<Answer> answerfindList() throws SQLException;

    List<Answer> answerfindListByQ(String qid) throws SQLException;

}

