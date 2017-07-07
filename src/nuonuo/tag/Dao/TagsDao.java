package nuonuo.tag.Dao;/*
 * Created by 15R-5537 on 2017/5/8.
 */

import nuonuo.questions.Question;
import nuonuo.tag.Tags;

import java.sql.SQLException;
import java.util.List;

public interface TagsDao {
    /*增加云标签的方法*/
    boolean add_Tags(Tags Tag) throws SQLException;

    /*更新云标签的方法*/
    boolean update_Tags(Tags Tag) throws SQLException;

    /*查询所有云标签的方法*/
    List<Tags> findAll_Tags() throws SQLException;

    /*根据标签名查询相似云标签的方法*/
    List<Tags> find_Tags(String tname) throws SQLException;

    Tags exact_search(String tname) throws SQLException;

    Tags find_TagsById(Object tid) throws SQLException;

    /*删除云标签的方法*/
    boolean delete_Tags(Tags Tag) throws SQLException;

    /*查询某一个云标签下的问题*/
    List<Question> findQusetion_Tags(String tid) throws SQLException;


}
