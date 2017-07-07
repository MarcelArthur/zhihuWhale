package nuonuo.questions.Dao;/*
 * Created by 15R-5537 on 2017/4/25.
 */

import nuonuo.questions.Question;
import nuonuo.tag.Tags;

import java.sql.SQLException;
import java.util.List;

public interface QuestionDao {
    /*添加问题的方法*/
    boolean addQuestion(Question question) throws SQLException;

    /*根据qtitle查询提问类似问题的方法*/
    List<Question> selectAllQuestion(String qtitle) throws SQLException;

    /*根据所属用户id查询问题的方法*/
    List<Question> selectQuestionById(String aid) throws SQLException;

     /*更新编辑后的问题的方法*/
    boolean updateQuestion(Question question) throws SQLException;

    /*根据用户id查找相关的问题集合*/
    List<Question> findQuestionByAid(String aid) throws SQLException;

    /*根据aid查找相关问题的集合数*/
    int Questionnum(String aliasid) throws SQLException;

    /*删除相关问题及附属相关云标签*/
    boolean Delete_Questioon(Question question) throws SQLException;

    Question find_Questionone(Object qid) throws SQLException;

    List<Tags> findTags_Question(String qid) throws SQLException;

    Question find_one(String qtitle) throws SQLException;

    List<Question> Find_List() throws SQLException;

}
