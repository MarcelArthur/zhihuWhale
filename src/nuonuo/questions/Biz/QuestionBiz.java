package nuonuo.questions.Biz;/*
 * Created by 15R-5537 on 2017/5/10.
 */

import nuonuo.questions.Question;
import nuonuo.tag.Tags;

import java.util.List;

public interface QuestionBiz {
    /*增加问题的方法*/
    boolean addQuestion(Question question);

    /*根据qtitle查询提问类似问题的方法*/
    List<Question> selectAllQuestion(String qtitle);

    /*根据所属用户id查询问题的方法*/
    List<Question> selectQuestionById(String aid);

    /*更新编辑后的问题的方法*/
    boolean updateQuestion(Question question);

    /*根据用户id查找相关的问题集合*/
    List<Question> findQuestionByAid(String aid);

    /*根据aid查找相关问题的集合数*/
    int Questionnum(String aliasid);

    /*删除相关问题及附属相关云标签*/
    boolean Delete_Questioon(Question question);

    Question find_Questionone(Object qid);

    List<Tags> findTags_Question(String qid);

    Question find_one(String qtitle);

    public List<Question> Find_List();
}
