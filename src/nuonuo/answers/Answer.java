package nuonuo.answers;/*
 * Created by 15R-5537 on 2017/5/9.
 */

import nuonuo.aliasp.Alias;
import nuonuo.an_comments.AnComments;
import nuonuo.questions.Question;

import java.util.Date;
import java.util.List;

public class Answer {
    private String anid;
    private String qid;
    private String aid;
    private Alias alias;
    private Question question;
    private Date andate;
    private String ancontent;
    private List<AnComments> anComments;

    public Answer() {
        super();
    }


    public Answer(String anid, String aid, String qid, Date andate, String ancontent) {
        super();
        this.anid = anid;
        this.aid = aid;
        this.qid = qid;
        this.andate = andate;
        this.ancontent = ancontent;
    }

    public Answer(String anid, Alias alias, Question question, Date andate, String ancontent, List<AnComments> anComments) {
        this.anid = anid;
        this.alias = alias;
        this.question = question;
        this.andate = andate;
        this.ancontent = ancontent;
        this.anComments = anComments;
    }

    @Override
    public String toString() {
        return "Answer{" +
                "anid='" + anid + '\'' +
                ", qid='" + qid + '\'' +
                ", alias=" + alias +
                ", question=" + question +
                ", andate=" + andate +
                ", ancontent='" + ancontent + '\'' +
                '}';
    }

    public List<AnComments> getAnComments() {
        return anComments;
    }

    public void setAnComments(List<AnComments> anComments) {
        this.anComments = anComments;
    }

    public String getAnid() {
        return anid;
    }

    public void setAnid(String anid) {
        this.anid = anid;
    }

    public Alias getAlias() {
        return alias;
    }

    public void setAlias(Alias alias) {
        this.alias = alias;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public Date getAndate() {
        return andate;
    }

    public void setAndate(Date andate) {
        this.andate = andate;
    }

    public String getAncontent() {
        return ancontent;
    }

    public void setAncontent(String ancontent) {
        this.ancontent = ancontent;
    }

    public String getQid() {
        return qid;
    }

    public void setQid(String qid) {
        this.qid = qid;
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }
}
