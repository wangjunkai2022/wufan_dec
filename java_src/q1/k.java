package q1;

import com.join.mgps.dto.OemData;
import com.join.mgps.dto.OemResponse;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
/* compiled from: IRpcOemClient.java */
/* loaded from: classes4.dex */
public interface k {
    @GET("/forum/gift/get_gift")
    Call<OemResponse<OemData.GiftGetCdkData>> a(@Query("uid") int i2, @Query("uid") String str, @Query("uid") String str2);

    @GET("/forum/gift/gift_detail")
    Call<OemResponse<OemData.GiftDetailData>> b(@Query("uid") int i2, @Query("uid") String str);
}
