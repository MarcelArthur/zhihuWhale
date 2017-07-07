package nuonuo.userp.biz;/*
 * Created by 15R-5537 on 2017/4/23.
 */

import com.wenqian.tools.jdbc.JdbcUtils;
import nuonuo.aliasp.Alias;
import nuonuo.aliasp.dao.AliasDao;
import nuonuo.aliasp.dao.AliasDaoImpl;
import nuonuo.userp.User;
import nuonuo.userp.dao.UserDao;
import nuonuo.userp.dao.UserDaoImpI;

import java.sql.SQLException;
import java.util.List;

public class UserBizImpI implements UserBiz{
    UserDao dao =new UserDaoImpI();
    @Override
    public User findUser(String uname, String upwd){
        try {
            return dao.findUser(uname,upwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean addUser(User user){
        try {
            return dao.addUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean UpdateUser(User user){
        try {
            return dao.UpdateUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public User findUserById(String userid) {
        try {
            AliasDao adao = new AliasDaoImpl();
            User user = dao.findUserById(userid);
            Alias alias = adao.findAliasById(userid);
            user.setAlias(alias);
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public boolean UpdataUserStatus(int status, String userid) {
        try {
            return dao.UpdataUserStatus(status,userid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean findUserByName(String uname) {
        try {
            return dao.findUserByName(uname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User> findUserAll() {
        try {
            return dao.findUserAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
