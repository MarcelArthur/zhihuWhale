package nuonuo.answers.Servlet;

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
import java.io.IOException;
import java.util.List;

/*
 * Created by 15R-5537 on 2017/5/15.
 */
public class Answeraction extends BaseServlet {
    private AnswerBiz  abiz = new AnswerBizImpl();
    private QuestionBiz qbiz = new QuestionBizImpl();
    private AliasBiz aliasBiz = new AliasBizImpl();
    public void answer_add(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        User user = (User)req.getSession().getAttribute("user");
        String q_qtitle = req.getParameter("q_qtitle");
        String Editable = req.getParameter("Editable");
        Question question =qbiz.find_one(q_qtitle);


        Answer answer = new Answer();
        answer.setAlias(user.getAlias());
        answer.setAncontent(Editable);
        answer.setQuestion(question);
        res.setContentType("text/html;charset=utf-8");
        Answer answerone =abiz.selectanswer(user.getAlias().getAid(),question.getQid());
        if(answerone==null){
            boolean isanswer=abiz.Answer_add(answer);
            if(isanswer){
                res.getWriter().print(1);
            }
        }else{
            res.getWriter().print(0);
        }
    }

    public String answer_findAll(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String target="";
        List<Answer> answers=abiz.answerfindList();
        for (Answer answer:answers){
            Question question=qbiz.find_Questionone(answer.getQid());
            Alias alias=aliasBiz.find_Alias(answer.getAid());
            answer.setQuestion(question);
            answer.setAlias(alias);
        }
        if(answers.size()!=0){
            req.setAttribute("answers",answers);
            target="f:/answermanage.jsp";
        }else {
            req.setAttribute("msgerror","信息不正确");
        }
        return target;
    }
}
