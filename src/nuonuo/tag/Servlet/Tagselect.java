package nuonuo.tag.Servlet;

import nuonuo.answers.Biz.AnswerBiz;
import nuonuo.answers.Biz.AnswerBizImpl;
import nuonuo.questions.Question;
import nuonuo.tag.Biz.TagBizImpl;
import nuonuo.tag.Biz.TagsBiz;
import nuonuo.tag.Tags;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/*
 * Created by 15R-5537 on 2017/5/16.
 */
public class Tagselect extends HttpServlet {
    private TagsBiz biz = new TagBizImpl();
    private AnswerBiz answerBiz= new AnswerBizImpl();
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
       doGet(req,res);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String id=req.getParameter("id");
        res.setContentType("text/html;charset=UTF-8");
        List<Question> questionList=biz.findQusetion_Tags(id);
        Tags tags=biz.find_TagsById(id);
        List<Tags> tagsList = biz.findAll_Tags();
        if(questionList.size()!=0){
            req.setAttribute("tagsList",tagsList);
            req.setAttribute("tagone",tags);
            req.setAttribute("questionList",questionList);
            req.getRequestDispatcher("/topic.jsp").forward(req, res);
        }else {
            res.sendRedirect(req.getContextPath()+"/homepagefill.jsp");
        }
    }
}
