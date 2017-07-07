package nuonuo.aliasp;

import nuonuo.answers.Answer;
import nuonuo.questions.Question;
import nuonuo.tag.Tags;
import nuonuo.userp.User;

import java.util.List;

/*
 * Created by 15R-5537 on 2017/4/23.
 */
public class Alias {
    private String aid;
    private String aname;
    private String adescribe;
    private User user;
    /*一的一方进行展示*/
    private List<Question> questions;
    private List<Answer> answers;
    private List<Tags> tags;



    public Alias() {
        super();
    }

    public Alias(String aid, User user,String aname, String adescribe) {
        super();
        this.aid = aid;
        this.user = user;
        this.aname = aname;
        this.adescribe = adescribe;
    }

    public Alias(String aid, String aname, String adescribe, User user, List<Question> questions, List<Answer> answers, List<Tags> tags) {
        super();
        this.aid = aid;
        this.aname = aname;
        this.adescribe = adescribe;
        this.user = user;
        this.questions = questions;
        this.answers = answers;
        this.tags = tags;
    }

    public List<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAdescribe() {
        return adescribe;
    }

    public void setAdescribe(String adescribe) {
        this.adescribe = adescribe;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Answer> answers) {
        this.answers = answers;
    }

    public List<Tags> getTags() {
        return tags;
    }

    public void setTags(List<Tags> tags) {
        this.tags = tags;
    }

}
