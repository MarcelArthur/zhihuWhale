package nuonuo.aliasp.servlet;

import com.alibaba.fastjson.JSON;
import com.wenqian.tools.servlet.BaseServlet;
import nuonuo.aliasp.Alias;
import nuonuo.aliasp.biz.AliasBiz;
import nuonuo.aliasp.biz.AliasBizImpl;
import nuonuo.answers.Answer;
import nuonuo.answers.Biz.AnswerBiz;
import nuonuo.answers.Biz.AnswerBizImpl;
import nuonuo.questions.Biz.QuestionBiz;
import nuonuo.questions.Biz.QuestionBizImpl;
import nuonuo.questions.Question;
import nuonuo.userp.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/*
 * Created by 15R-5537 on 2017/5/7.
 */
public class doAliasServlet extends BaseServlet {
    private static final long seriaLVersionUID =1L;
    private AliasBiz aliasBiz = new AliasBizImpl();
    private QuestionBiz qbiz = new QuestionBizImpl();
    private AnswerBiz anbiz = new AnswerBizImpl();
    public String alias_add(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String aliasname = req.getParameter("aliasname");
        String adescribe = req.getParameter("alias_describe");
        User user  = (User) req.getSession().getAttribute("user");

        Alias alias=new Alias();
        alias.setUser(user);
        alias.setAname(aliasname);
        alias.setAdescribe(adescribe);
        String targetPage="";
        boolean isalias =aliasBiz.addAlias(alias);
        if(isalias){
            user.setAlias(alias);
            req.getSession().removeAttribute("user");
            req.getSession().setAttribute("user",user);
            targetPage="r:/homepagefill.jsp";
        }else{
            req.setAttribute("msg","昵称名已被使用");
            targetPage="f:/alias.jsp";
        }
        return targetPage;

    }

    public void alias_update(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
    }
    /*ajax请求*/
    public List<Question> alias_setting(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        User user= (User) req.getSession().getAttribute("user");
        String aid = user.getAlias().getAid();
        return qbiz.findQuestionByAid(aid);
    }
    public void mytrends(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        User user = (User) req.getSession().getAttribute("user");
        List<Answer> answerAll=anbiz.answersfindByAid(user.getAlias().getAid());
        for(Answer answer:answerAll){
            Question question=qbiz.find_Questionone(answer.getQid());
            answer.setQuestion(question);
        }
        if(answerAll.size()!=0){
            String json = JSON.toJSONString(answerAll);
            res.getWriter().print(json);
        }
    }
    public void myaccount(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        User user= (User) req.getSession().getAttribute("user");

    }
    public String account_setting(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        String adescribe =req.getParameter("alias_desrcibe");
        String aname = req.getParameter("aliasname");
        HttpSession Session = req.getSession();
        String target="";
        User user= (User) Session.getAttribute("user");
        boolean ss= false;

        Alias alias = new Alias();
        if(aname!=null){
            alias.setAname(aname);
            alias.setAdescribe(adescribe);
            alias.setAid(user.getAlias().getAid());
            ss= aliasBiz.updateAlias(alias);
        }else{
            alias.setAname(user.getAlias().getAname());
            alias.setAdescribe(adescribe);
            alias.setAid(user.getAlias().getAid());
            ss=aliasBiz.updateAlias(alias);
        }
        if(!ss){
            res.getWriter().write("<script>alert('\"+更新失败，请重新填写+\"');</script>");
            target="r:/setting.jsp";
        }else {
            target="f:/setting.jsp";
            res.getWriter().write("<script>alert('\"+更新成功+\"');</script>");
            user.setAlias(alias);
        }

        return target;
    }

}
