package nuonuo.Comments.Dao;/*
 * Created by 15R-5537 on 2017/5/9.
 */

import nuonuo.Comments.Comment;

import java.util.List;

public interface CommentDao {

    /*增加评论*/
    boolean Comment_add(Comment comment);

    /*展示问题下的评论表*/
    List<Comment> Comment_findAll(String qid);

    /*删除评论*/
    boolean Comment_drop(String aid,String qid);

}
