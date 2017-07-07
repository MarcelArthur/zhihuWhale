package nuonuo.userp.dao;

import nuonuo.userp.User;

import java.sql.SQLException;
import java.util.List;

/*
 * Created by 15R-5537 on 2017/4/23.
 */
public interface UserDao {
    /*查找用户的方法*/
    public User findUser(String uname, String upwd) throws SQLException;

    /*新增用户的方法*/
    public boolean addUser(User user) throws SQLException;

    /*更新用户的方法*/
    public boolean UpdateUser(User user) throws SQLException;

    /*管理员可调用此方法对违规用户禁止登陆*/
    public boolean UpdataUserStatus(int status, String userid) throws SQLException;

    /*调用方法查询对应的昵称名*/
    public User findUserById(String userid) throws SQLException;

    public boolean findUserByName(String uname) throws SQLException;

    List<User> findUserAll() throws SQLException;

    /*没有删除用户的方法~~~~~*/
}
