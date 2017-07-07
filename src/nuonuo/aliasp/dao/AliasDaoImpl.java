package nuonuo.aliasp.dao;/*
 * Created by 15R-5537 on 2017/4/23.
 */

import com.wenqian.tools.jdbc.TxQueryRunner;
import nuonuo.aliasp.Alias;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import uitls.CommonUtils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AliasDaoImpl implements AliasDao {
    QueryRunner qr = new TxQueryRunner();

    @Override
    public boolean addAlias(Alias alias) throws SQLException {
        int cnt = 0;
        alias.setAid(CommonUtils.getUUid());
        StringBuffer sql = new StringBuffer();
        sql.append("insert into tb_alias ");
        sql.append("values (");
        sql.append("?, ?, ");
        sql.append("?, ?)");
        cnt = qr.update(sql.toString(), alias.getAid(), alias.getUser().getUserid(), alias.getAname(), alias.getAdescribe());
        return cnt > 0;
    }

    @Override
    public boolean updateAlias(Alias alias) throws SQLException {
        int cnt = 0;
        StringBuffer sql = new StringBuffer();
        sql.append("update tb_alias ");
        sql.append("set aname = ?, ");
        sql.append("adescribe = ? ");
        sql.append("where aid = ?");
        cnt = qr.update(sql.toString(), new Object[]{alias.getAname(), alias.getAdescribe(), alias.getAid()});

        return cnt > 0 ? true : false;
    }
    public Alias selectAlias(String aname) throws SQLException {

        StringBuffer sql = new StringBuffer();
        sql.append("select * from ");
        sql.append("tb_alias ");
        sql.append("where aname = ?");
        return qr.query(sql.toString(),new BeanHandler<Alias>(Alias.class), aname);
    }

    @Override
    public Alias findAliasById(String userid) throws SQLException {
        String sql = "select * from tb_alias " +
                "where userid = ?";
        return qr.query(sql, new BeanHandler<>(Alias.class), userid);
    }

    @Override
    public List<Alias> findAllAiasLike(String aname) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("select * from tb_Alias ");
        sql.append("where aname link %?%");
        return qr.query(sql.toString(),new BeanListHandler<Alias>(Alias.class), aname);
    }

    @Override
    public Alias find_Alias(String aid) throws SQLException {
        String sql ="select * from tb_Alias where aid = ?";
        return qr.query(sql,new BeanHandler<Alias>(Alias.class),aid);
    }
}
