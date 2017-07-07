package nuonuo.userp.servlet;

import com.wenqian.tools.servlet.BaseServlet;
import nuonuo.aliasp.Alias;
import nuonuo.aliasp.biz.AliasBiz;
import nuonuo.aliasp.biz.AliasBizImpl;
import nuonuo.aliasp.dao.AliasDao;
import nuonuo.userp.User;
import nuonuo.userp.biz.UserBiz;
import nuonuo.userp.biz.UserBizImpI;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/*
 * Created by 15R-5537 on 2017/5/4.
 */
public class doUserServlet extends BaseServlet{
    private static final long seriaLVersionUID = 1L;
    private UserBiz biz =new UserBizImpI();
    private AliasBiz abiz = new AliasBizImpl();

    public String account_add(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String targetPage = "";
        String uaccount = req.getParameter("form-username");
        String upwd = req.getParameter("form-password");
        String reupwd = req.getParameter("form-repassword");
        boolean usuccess = biz.findUserByName(uaccount);


        if(uaccount !=null && "".equals(uaccount)){
            req.setAttribute("unameInfo","用户名不能为空");
        }
        if (!usuccess){
            req.setAttribute("unnameInfo","用户名已经被注册");
        }
        if(upwd != null && "".equals(upwd)){
            req.setAttribute("upwInfo","密码不能为空");
        }
        if(reupwd != null && reupwd.equals(upwd)){
            req.setAttribute("reupwd", "两次密码输入不一致");
        }



        User user = new User();
        user.setUaccount(uaccount);
        user.setUpwd(upwd);
        boolean isSuccess =biz.addUser(user);
        String msg ="";
        HttpSession Session =req.getSession();
        if(isSuccess){
            Session.setAttribute("user",user);
            targetPage ="f:/alias.jsp";
        }else {
            msg="用户注册失败";
            targetPage ="f:/index.jsp";
        }
        req.setAttribute("msg",msg);
        return targetPage;
    }

    public String account_find(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String uaccount = req.getParameter("form-username");
        String upwd = req.getParameter("form-password");
        if(uaccount !=null && "".equals(uaccount)){
            req.setAttribute("unameInfo","用户名不能为空");
        }
        if(upwd != null && "".equals(upwd)){
            req.setAttribute("upwInfo","密码不能为空");
        }

        HttpSession Session =req.getSession();
        String targe ="";
        User user = biz.findUser(uaccount,upwd);
        if(user==null){
            req.setAttribute("uerror","用户名或者密码错误");
            targe="f:/index.jsp";
        }else {
            Session.setAttribute("user",user);
            Alias alias=abiz.findAliasById(user.getUserid());
            if (alias!=null){
                user.setAlias(alias);
                targe="f:/homepagefill.jsp";
            }else{
                req.setAttribute("aliasmsg","请填写昵称");
                targe="f:/alias.jsp";
            }
        }

        return targe;
    }

    public String login_out(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        User user = (User) req.getSession().getAttribute("user");
        String logoutrage ="";
        if(user!=null){
            /*清除session数据*/
            req.getSession().invalidate();
            logoutrage="r:/index.jsp";
        }else{
            logoutrage="";
        }
        return logoutrage;
    }

    public String find_user(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        UserBiz biz = new UserBizImpI();
        AliasBiz aliasBiz = new AliasBizImpl();
        List<User> userAll=biz.findUserAll();
        String admintar="";
        if(userAll!=null){
            req.setAttribute("users",userAll);
            admintar="f:/adminmanage.jsp";
        }else{
            req.setAttribute("msgerror","网络连接不稳定");
            admintar="f:/adminmanage.jsp";
        }
        return admintar;
    }
}