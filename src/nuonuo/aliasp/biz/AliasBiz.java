package nuonuo.aliasp.biz;/*
 * Created by 15R-5537 on 2017/4/23.
 */

import nuonuo.aliasp.Alias;

import java.util.List;

public interface AliasBiz {
    /*增加昵称表*/
    public boolean addAlias(Alias alias);

    /*更新昵称表*/
    public boolean updateAlias(Alias alias);

    /*根据昵称名查询昵称表 并返回该用户信息*/
    public Alias selectAlias(String aname);

    /*根据用户的id查询昵称表*/
    public Alias  findAliasById(String userid);

    /*返回相似的用户名搜索结果集*/
    List<Alias> findAllAiasLike(String aname);

    public Alias find_Alias(String aid);
}
