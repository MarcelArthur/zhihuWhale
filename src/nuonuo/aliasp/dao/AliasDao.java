package nuonuo.aliasp.dao;/*
 * Created by 15R-5537 on 2017/4/23.
 */

import nuonuo.aliasp.Alias;

import java.sql.SQLException;
import java.util.List;

public interface AliasDao {
    /*添加别名信息*/
    public boolean addAlias(Alias alias) throws SQLException;

    /*更新别名信息*/
    public boolean updateAlias(Alias alias) throws SQLException;

    /*根据昵称名查询昵称*/
    public Alias selectAlias(String aname) throws SQLException;

    /*根据用户id查询所对应的昵称名*/
    public Alias  findAliasById(String userid) throws SQLException;

    /*获取用户名相似的用户列表-----查询用户时使用 返回模糊查询的结果集*/
    List<Alias> findAllAiasLike(String aname) throws SQLException;

    Alias find_Alias(String aid) throws SQLException;
}
