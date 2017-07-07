package uitls;

import java.util.UUID;

/*
 * Created by 15R-5537 on 2017/4/23.
 */
public class CommonUtils {
    public static String getUUid(){
        return UUID.randomUUID().toString().replace("-","");
    }
}



