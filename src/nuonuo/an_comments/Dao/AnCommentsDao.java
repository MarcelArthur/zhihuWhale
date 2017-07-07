package nuonuo.an_comments.Dao;/*
 * Created by 15R-5537 on 2017/5/9.
 */

import nuonuo.an_comments.AnComments;

import java.sql.SQLException;
import java.util.List;

public interface AnCommentsDao {
    boolean AnCommentsDao_add(AnComments anComments) throws SQLException;

    boolean AnCommentsDao_drop(String anid,String aid) throws SQLException;

    List<AnComments> AnCommentsDao_findAll(String anid) throws SQLException;

}
