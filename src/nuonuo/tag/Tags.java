package nuonuo.tag;/*
 * Created by 15R-5537 on 2017/4/24.
 */

import nuonuo.aliasp.Alias;
import nuonuo.questions.Question;

import java.util.LinkedList;
import java.util.List;

public class Tags {
    private String tid;
    private String tname;
    private List<Question> questiones = new LinkedList<>();




    public Tags() {
        super();
    }

    public Tags(String tid, String tname) {
        super();
        this.tid = tid;
        this.tname = tname;
    }

    public Tags(String tid, String tname, List<Question> questiones) {
        super();
        this.tid = tid;
        this.tname = tname;
        this.questiones = questiones;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public List<Question> getQuestiones() {
        return questiones;
    }

    public void setQuestiones(List<Question> questiones) {
        this.questiones = questiones;
    }

    @Override
    public String toString() {
        return "Tags{" +
                "tid='" + tid + '\'' +
                ", tname='" + tname + '\'' +
                '}';
    }
}
