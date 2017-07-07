package nuonuo.questions;/*
 * Created by 15R-5537 on 2017/4/24.
 */

import nuonuo.aliasp.Alias;
import nuonuo.answers.Answer;
import nuonuo.tag.Tags;

import java.util.LinkedList;
import java.util.List;

public class Question {
    private String qid;
    private String aid;
    private String qtitle;
    private String qdescribe;
    private Alias alias;
    private List<Tags> tags =new LinkedList<>();
    private List<Answer> answers;

    public Question() {
        super();
    }

    public Question(String qid,String aid, String qtitle, String qdescribe) {
        super();
        this.qid = qid;
        this.aid = aid;
        this.qtitle = qtitle;
        this.qdescribe = qdescribe;
    }

    public Question(String qid, String qtitle, String qdescribe, Alias alias, List<Tags> tags,List<Answer> answers) {
        super();
        this.qid = qid;
        this.qtitle = qtitle;
        this.qdescribe = qdescribe;
        this.alias = alias;
        this.tags = tags;
        this.answers=answers;
    }

    public List<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Answer> answers) {
        this.answers = answers;
    }

    public String getQid() {
        return qid;
    }

    public void setQid(String qid) {
        this.qid = qid;
    }

    public String getQtitle() {
        return qtitle;
    }

    public void setQtitle(String qtitle) {
        this.qtitle = qtitle;
    }

    public String getQdescribe() {
        return qdescribe;
    }

    public void setQdescribe(String qdescribe) {
        this.qdescribe = qdescribe;
    }

    public Alias getAlias() {
        return alias;
    }

    public void setAlias(Alias alias) {
        this.alias = alias;
    }

    public List<Tags> getTags() {
        return tags;
    }

    public void setTags(List<Tags> tags) {
        this.tags = tags;
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    @Override
    public String toString() {
        return "Question{" +
                "qid='" + qid + '\'' +
                ", qtitle='" + qtitle + '\'' +
                ", qdescribe='" + qdescribe + '\'' +
                '}';
    }
}
