package nuonuo.tag.Biz;/*
 * Created by 15R-5537 on 2017/5/12.
 */

import nuonuo.questions.Question;
import nuonuo.tag.Dao.TagsDao;
import nuonuo.tag.Dao.TagsDaoImpl;
import nuonuo.tag.Tags;

import java.sql.SQLException;
import java.util.List;

public class TagBizImpl implements TagsBiz {
    private TagsDao dao = new TagsDaoImpl();
    @Override
    public boolean add_Tags(Tags Tag) {
        try {
            return dao.add_Tags(Tag);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Tags exact_search(String tname) {
        try {
            return dao.exact_search(tname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Tags> find_Tags(String tname) {
        try {
            return dao.find_Tags(tname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Tags> findAll_Tags() {
        try {
            return dao.findAll_Tags();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Question> findQusetion_Tags(String tid) {
        try {
            return dao.findQusetion_Tags(tid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Tags find_TagsById(Object tid) {
        try {
            return dao.find_TagsById(tid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
