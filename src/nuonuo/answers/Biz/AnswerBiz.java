package nuonuo.answers.Biz;/*
 * Created by 15R-5537 on 2017/5/15.
 */

import nuonuo.aliasp.Alias;
import nuonuo.answers.Answer;

import java.util.List;

public interface AnswerBiz {
    boolean Answer_add(Answer answer);

    boolean Answer_drop(String aid,String qid);

    boolean Answer_edit(Answer answer);

    List<Answer> answersfindByAid(String aid);

    Answer selectanswer(String aid,String qid);

    public List<Answer> answerfindList();

    List<Answer> answerfindListByQ(String qid);
}
