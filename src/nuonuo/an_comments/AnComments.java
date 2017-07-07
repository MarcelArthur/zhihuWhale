package nuonuo.an_comments;/*
 * Created by 15R-5537 on 2017/5/9.
 */

import nuonuo.aliasp.Alias;
import nuonuo.answers.Answer;

import java.util.Date;

public class AnComments {
    private String acid;
    private Alias alias;
    private Answer answer;
    private String anccontent;
    private Date anccdata;

    public AnComments() {
        super();
    }

    public AnComments(String acid, Alias alias, Answer answer, String anccontent, Date anccdata) {
        super();
        this.acid = acid;
        this.alias = alias;
        this.answer = answer;
        this.anccontent = anccontent;
        this.anccdata = anccdata;
    }

    public String getAcid() {
        return acid;
    }

    public void setAcid(String acid) {
        this.acid = acid;
    }

    public Alias getAlias() {
        return alias;
    }

    public void setAlias(Alias alias) {
        this.alias = alias;
    }

    public Answer getAnswer() {
        return answer;
    }

    public void setAnswer(Answer answer) {
        this.answer = answer;
    }

    public String getAnccontent() {
        return anccontent;
    }

    public void setAnccontent(String anccontent) {
        this.anccontent = anccontent;
    }

    public Date getAnccdata() {
        return anccdata;
    }

    public void setAnccdata(Date anccdata) {
        this.anccdata = anccdata;
    }
}
