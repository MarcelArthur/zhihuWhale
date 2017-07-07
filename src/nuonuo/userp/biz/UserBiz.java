package nuonuo.userp.biz;/*
 * Created by 15R-5537 on 2017/4/23.
 */

import nuonuo.userp.User;

import java.util.List;


public interface UserBiz {
    /*查找用户的方法*/
    public User findUser(String uname, String upwd);

    /*新增用户的方法*/
    public boolean addUser(User user);

    /*更新用户的方法*/
    public boolean UpdateUser(User user);

    public User findUserById(String userid);

    public boolean UpdataUserStatus(int status, String userid);

    public boolean findUserByName(String uname);

    List<User> findUserAll();

    /*没有删除用户的方法~~~~~*/
}
