package nuonuo.tag.Biz;/*
 * Created by 15R-5537 on 2017/5/12.
 */

import nuonuo.questions.Question;
import nuonuo.tag.Tags;

import java.util.List;

public interface TagsBiz {
    boolean add_Tags(Tags Tag);

    Tags exact_search(String tname);

    List<Tags> find_Tags(String tname);

    List<Tags> findAll_Tags();

    List<Question> findQusetion_Tags(String tid);

    Tags find_TagsById(Object tid);
}
