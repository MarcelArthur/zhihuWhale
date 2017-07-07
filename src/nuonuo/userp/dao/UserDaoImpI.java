package nuonuo.userp.dao;/*
 * Created by 15R-5537 on 2017/4/23.
 */

import com.wenqian.tools.jdbc.TxQueryRunner;

import nuonuo.userp.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import uitls.CommonUtils;

import java.sql.SQLException;
import java.util.List;

public class UserDaoImpI implements UserDao {
    private QueryRunner qr = new TxQueryRunner();
    /*查找用户方法*/
    @Override
    public User findUser(String uaccount, String upwd) throws SQLException {
        User user = null;
        StringBuffer sql = new StringBuffer();
        sql.append("select * from tb_user ");
        sql.append("where uaccount = ? ");
        sql.append("and upwd= ?");
        user = qr.query(sql.toString(), new BeanHandler<User>(User.class),
                uaccount, upwd);
        return user;
    }
    /*新增用户的方法*/
    @Override
    public boolean addUser(User user) throws SQLException {
        int cnt = 0;
        user.setUserid(CommonUtils.getUUid());
        StringBuffer sql = new StringBuffer();
        sql.append("insert into tb_user(userid, uaccount, upwd) ");
        sql.append("values (");
        sql.append("?, ?, ?)");
        cnt = qr.update(sql.toString(), user.getUserid(),user.getUaccount(), user.getUpwd());

        return cnt > 0;

    }
    /*更新用户的方法*/
    @Override
    public boolean UpdateUser(User user) throws SQLException {
        int cnt=0;
        StringBuffer sql = new StringBuffer();
        sql.append("update tb_user ");
        sql.append("set uaccount = ?, upwd = ? ");
        sql.append("where userid = ? ");
        cnt=qr.update(sql.toString(),new Object[]{user.getUaccount(),user.getUpwd(),user.getUserid()});
        return cnt > 0 ? true: false;
    }

    /*管理员可以调用的改变用户权限的方法*/
    @Override
    public boolean UpdataUserStatus(int status, String userid) throws SQLException {
        int cnt =0;
        StringBuffer sql =new StringBuffer();
        sql.append("update tb_user ");
        sql.append("set status = ? ");
        sql.append("where userid = ?");
        cnt = qr.update(sql.toString(),new Object[]{status, userid});

        return cnt > 0? true :false;
    }

    /*根据userid查找关联的昵称*/
    @Override
    public User findUserById(String userid) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("select * from ");
        sql.append("tb_user where userid = ?");
        return qr.query(sql.toString(),new BeanHandler<User>(User.class),userid);
    }

    @Override
    public boolean findUserByName(String uname) throws SQLException {
        int cnt =0;
        StringBuffer sql = new StringBuffer();
        sql.append("select * from tb_user where uaccount = ?");
        cnt = qr.update(sql.toString(),uname);
        return cnt > 0;
    }

    @Override
    public List<User> findUserAll() throws SQLException {
        String sql = "select * from tb_user";
        return qr.query(sql,new BeanListHandler<>(User.class));
    }


}