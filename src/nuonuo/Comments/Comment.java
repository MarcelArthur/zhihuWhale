package nuonuo.Comments;/*
 * Created by 15R-5537 on 2017/5/9.
 */

import nuonuo.aliasp.Alias;
import nuonuo.questions.Question;

import java.util.Date;

public class Comment {
    private String cid;
    private Alias alias;
    private Question question;
    private String ccontent;
    private Date cdata;

    public Comment() {
        super();
    }

    public Comment(String cid, Alias alias, Question question, String ccontent, Date cdata) {

        this.cid = cid;
        this.alias = alias;
        this.question = question;
        this.ccontent = ccontent;
        this.cdata = cdata;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
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

    public String getCcontent() {
        return ccontent;
    }

    public void setCcontent(String ccontent) {
        this.ccontent = ccontent;
    }

    public Date getCdata() {
        return cdata;
    }

    public void setCdata(Date cdata) {
        this.cdata = cdata;
    }
}
