package nuonuo.tag.Servlet;

import com.alibaba.fastjson.JSON;
import com.wenqian.tools.servlet.BaseServlet;
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
 * Created by 15R-5537 on 2017/5/12.
 */
public class TagsAction extends BaseServlet {
    private static final long seriaLVersionUID = 1L;
    private TagsBiz biz = new TagBizImpl();
    public String addTags(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String tname=req.getParameter("NewBee");
        Tags tags =new Tags();
        tags.setTname(tname);
        boolean isTags= biz.add_Tags(tags);
        String target="";
        if(isTags){
            req.setAttribute("msgInfo","添加信息成功");
            target="f:/adminmanage.jsp";
        }else{
            req.setAttribute("msgInfo","添加信息失败");
            target="f:/adminmanage.jsp";
        }
        return target;
    }

    public void fuzzy_Tags(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String tname =  req.getParameter("tags_tname");
        List<Tags> tags = biz.find_Tags(tname);
        res.setContentType("text/html;charset=utf-8");
        String tag_json = JSON.toJSONString(tags,true);
        res.getWriter().print(tag_json);
    }
    public String Topic_serach(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        List<Tags> tagsList = biz.findAll_Tags();
        String tar="";
        if(tagsList.size()!=0){
            req.setAttribute("tagsList",tagsList);
            tar="f:/topic.jsp";
        }else {
            req.setAttribute("msgerror","网络连接不稳定");
            tar="homepagefill.jsp";
        }
        return tar;
    }
    public String Topic_manage(HttpServletRequest req,HttpServletResponse res) throws  ServletException, IOException{
        String tort="";
        List<Tags> tagsList = biz.findAll_Tags();
        if(tagsList.size()!=0){
            req.setAttribute("tagList",tagsList);
            tort="f:/topicmanage.jsp";
        }else {
            req.setAttribute("msgerror","网络连接不稳定");
        }
        return tort;
    }
}
