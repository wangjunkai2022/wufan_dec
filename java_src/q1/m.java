package q1;

import com.join.mgps.dto.UserPurchaseResponse;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
/* compiled from: IRpcPayClient.java */
/* loaded from: classes4.dex */
public interface m {
    @GET("/pay/emulator/get_all_permission")
    Call<UserPurchaseResponse> a(@Query("uid") String str, @Query("token") String str2);
}
