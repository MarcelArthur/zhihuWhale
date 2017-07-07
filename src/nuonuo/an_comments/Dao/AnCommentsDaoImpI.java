package nuonuo.an_comments.Dao;/*
 * Created by 15R-5537 on 2017/5/9.
 */

import com.wenqian.tools.jdbc.TxQueryRunner;
import nuonuo.an_comments.AnComments;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import uitls.CommonUtils;

import java.sql.SQLException;
import java.util.List;

public class AnCommentsDaoImpI implements AnCommentsDao{
    QueryRunner qr = new TxQueryRunner();
    @Override
    public boolean AnCommentsDao_add(AnComments anComments) throws SQLException {
        anComments.setAcid(CommonUtils.getUUid());
        StringBuffer sql = new StringBuffer();
        sql.append("insert into tb_ancomments ");
        sql.append("values(?, ?, ");
        sql.append("?, ?, ?)");
        int cnt=qr.update(sql.toString(), anComments.getAcid(),anComments.getAlias().getAid(),anComments.getAnswer().getAnid(),anComments.getAnccontent(),anComments.getAnccdata());
        return cnt > 0;
    }

    @Override
    public boolean AnCommentsDao_drop(String anid, String aid) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("delete from tb_ancomments ");
        sql.append("where anid = ? and aid = ?");
        int cnt = qr.update(sql.toString(), anid,aid);
        return cnt > 0;
    }

    @Override
    public List<AnComments> AnCommentsDao_findAll(String anid) throws SQLException {
        StringBuffer sql = new StringBuffer();
        sql.append("select * from tb_ancomments ");
        sql.append("where anid = ?");
        List<AnComments> anComments = qr.query(sql.toString(),new BeanListHandler<>(AnComments.class),anid);
        return anComments;
    }
}
