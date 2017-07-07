package nuonuo.questions.Servlet;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.wenqian.tools.servlet.BaseServlet;
import nuonuo.aliasp.Alias;
import nuonuo.aliasp.biz.AliasBiz;
import nuonuo.aliasp.biz.AliasBizImpl;
import nuonuo.questions.Biz.QuestionBiz;
import nuonuo.questions.Biz.QuestionBizImpl;
import nuonuo.questions.Question;
import nuonuo.tag.Biz.TagBizImpl;
import nuonuo.tag.Biz.TagsBiz;
import nuonuo.tag.Tags;
import nuonuo.userp.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import com.alibaba.fastjson.*;
/*
 * Created by 15R-5537 on 2017/5/10.
 */
public class QuestionAction extends BaseServlet {
    private QuestionBiz qbiz = new QuestionBizImpl();
    private TagsBiz tbiz = new TagBizImpl();
    private AliasBiz abiz = new AliasBizImpl();
    public String Question_add(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        User user= (User) req.getSession().getAttribute("user");
        String title = req.getParameter("que_title");
        String describe = req.getParameter("que_describe");
        String tag =req.getParameter("que_tags");
        String[] tagitem =tag.split("，");

        List<Tags> tags = new LinkedList<>();
        for (String aTagitem : tagitem) {
            Tags tagone = tbiz.exact_search(aTagitem);
            tags.add(tagone);
        }
        //这里有个tags集合需要处理

        Question question = new Question();
        question.setQtitle(title);
        question.setQdescribe(describe);
        question.setAlias(user.getAlias());
        question.setTags(tags);
        question.setAlias(user.getAlias());
        boolean isQuestion = qbiz.addQuestion(question);
        String target = "";
        if(isQuestion){
            req.setAttribute("question",question);
            target="f:/question.jsp";
        }else {
            req.setAttribute("msgerror","添加问题失败,请检查网络");
            target="f:/homepagefill.jsp";
        }

        return target;
    }
    /*模糊查询问题终于搞定了！！！！！！*/
    public void Question_title(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String qtitle = req.getParameter("question_title");
        List<Question> questions = qbiz.selectAllQuestion(qtitle);
        System.out.println(questions);
        res.setContentType("text/html;charset=utf-8");
        SerializerFeature[] featureArr = { SerializerFeature.WriteClassName };
        String json = JSON.toJSONString(questions,true);
        res.getWriter().print(json);
    }
    public String find_questionList(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        List<Question> questions=qbiz.Find_List();
        for(Question question:questions){
            Alias alias= abiz.find_Alias(question.getAid());
            question.setAlias(alias);
        }
        String targe="";
        if(questions.size()!=0){
            req.setAttribute("questions",questions);
            targe="f:/questionmanage.jsp";
        }else {
            req.setAttribute("msger","网络连接不稳定");
            targe="f:/questionmanage.jsp";
        }
        return targe;
    }
    public void Question_select(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }

}
