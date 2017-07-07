package nuonuo.userp.servlet;

import com.wenqian.tools.servlet.BaseServlet;
import nuonuo.userp.User;
import nuonuo.userp.biz.UserBiz;
import nuonuo.userp.biz.UserBizImpI;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/*
 * Created by 15R-5537 on 2017/5/11.
 */
public class AdminServlet extends BaseServlet {
    private static final long seriaLVersionUID = 1L;
    private UserBiz biz = new UserBizImpI();
    public String admin_login(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String uaccount=req.getParameter("inputEmail3");
        String upwd =req.getParameter("inputPassword3");

        User user = biz.findUser(uaccount,upwd);
        System.out.println(user);
        String regtar="";
        if(user!=null && user.getAnthority()==1){
            HttpSession session = req.getSession();
            session.setAttribute("admin",user);
            regtar="f:/adminmanage.jsp";
        }else{
            req.setAttribute("msgerror","用户名或者密码出错也可能你不是管理员");
            regtar="f:/adminpage.jsp";
        }
        return regtar;
    }

    public String admin_loginout(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("admin");
        String tar ="";
        if(user!=null){
            req.getSession().invalidate();
            tar="r:/adminpage.jsp";
        }else{
            tar="r:/adminpage.jsp";
        }
        return tar;
    }
}
