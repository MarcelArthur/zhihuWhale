package nuonuo.aliasp.biz;/*
 * Created by 15R-5537 on 2017/4/23.
 */

import nuonuo.aliasp.Alias;
import nuonuo.aliasp.dao.AliasDao;
import nuonuo.aliasp.dao.AliasDaoImpl;
import nuonuo.userp.User;
import nuonuo.userp.dao.UserDao;
import nuonuo.userp.dao.UserDaoImpI;

import java.sql.SQLException;
import java.util.List;

public class AliasBizImpl implements AliasBiz{
    private AliasDao dao =new AliasDaoImpl();
    @Override
    public boolean addAlias(Alias alias) {
        try {
            return dao.addAlias(alias);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateAlias(Alias alias) {
        try {
            return dao.updateAlias(alias);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Alias selectAlias(String aname) {
        try {
            return dao.selectAlias(aname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Alias findAliasById(String userid) {
        try {
            return dao.findAliasById(userid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Alias> findAllAiasLike(String aname) {
        try {
            return dao.findAllAiasLike(aname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Alias find_Alias(String aid) {
        try {
            return dao.find_Alias(aid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
