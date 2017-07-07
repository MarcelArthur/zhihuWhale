package nuonuo.questions.Servlet;

import nuonuo.answers.Answer;
import nuonuo.answers.Biz.AnswerBiz;
import nuonuo.answers.Biz.AnswerBizImpl;
import nuonuo.questions.Biz.QuestionBiz;
import nuonuo.questions.Biz.QuestionBizImpl;
import nuonuo.questions.Question;
import nuonuo.tag.Tags;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/*
 * Created by 15R-5537 on 2017/5/22.
 */
public class Questionlist extends HttpServlet {
    private QuestionBiz qBiz =new QuestionBizImpl();
    private AnswerBiz anbiz = new AnswerBizImpl();
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doGet(req,res);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String qid = req.getParameter("method");
        res.setContentType("text/html;charset=UTF-8");
        Question question=qBiz.find_Questionone(qid);
        List<Tags> tags=qBiz.findTags_Question(qid);
        List<Answer> answers=anbiz.answerfindListByQ(qid);
        question.setAnswers(answers);
        question.setTags(tags);
        if(question!=null){
            req.setAttribute("question",question);
            req.getRequestDispatcher("/answer.jsp").forward(req,res);
        }else {
            req.setAttribute("meserror","网络连接异常");
            res.sendRedirect(req.getContextPath()+"/404.jsp");
        }
    }
}
