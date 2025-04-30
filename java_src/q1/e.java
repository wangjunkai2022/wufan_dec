package q1;

import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ResultMainBean;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;
/* compiled from: IRpcConsoleGameClient.java */
/* loaded from: classes4.dex */
public interface e {
    @FormUrlEncoded
    @POST("/user/purchased")
    Call<ResultMainBean<List<AppBean>>> a(@FieldMap Map<String, String> map);
}
