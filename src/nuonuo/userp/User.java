package nuonuo.userp;

import nuonuo.aliasp.Alias;

import java.util.Date;

/*
 * Created by 15R-5537 on 2017/4/23.
 */
public class User {
    private String userid;
    private String uaccount;
    private String upwd;
    private int status;
    private int anthority;
    private Date udate;
    private Alias alias;


    public User() {
        super();
    }

    public User(String userid, String uaccount, String upwd, int status, int anthority, Date udate) {
        super();
        this.userid = userid;
        this.uaccount = uaccount;
        this.upwd = upwd;
        this.status = status;
        this.anthority = anthority;
        this.udate = udate;
    }

    public User(String userid, String uaccount, String upwd, int status, int anthority, Date udate, Alias alias) {
        super();
        this.userid = userid;
        this.uaccount = uaccount;
        this.upwd = upwd;
        this.status=status;
        this.anthority = anthority;
        this.udate = udate;
        this.alias =alias;

    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUaccount() {
        return uaccount;
    }

    public void setUaccount(String uaccount) {
        this.uaccount = uaccount;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Alias getAlias() {
        return alias;
    }

    public void setAlias(Alias alias) {
        this.alias = alias;
    }

    public int getAnthority() {
        return anthority;
    }

    public void setAnthority(int anthority) {
        this.anthority = anthority;
    }

    public Date getUdate() {
        return udate;
    }

    public void setUdate(Date udate) {
        this.udate = udate;
    }

    @Override
    public String toString() {
        return "User{" +
                "userid='" + userid + '\'' +
                ", uaccount='" + uaccount + '\'' +
                ", upwd='" + upwd + '\'' +
                ", status=" + status +
                ", anthority=" + anthority +
                ", udate=" + udate +
                '}';
    }
}
