package q1;

import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBackGameReqBean;
import com.join.mgps.dto.FriendBackGameRspBean;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendCardBean;
import com.join.mgps.dto.FriendRecommendRequest;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.ResponseModel;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
/* compiled from: IRpcFriendClient.java */
/* loaded from: classes4.dex */
public interface g {
    @FormUrlEncoded
    @POST("/like/add")
    Call<ResponseModel> a(@FieldMap Map<String, Object> map);

    @POST("/friendRequest/add")
    Call<ResponseModel> b(@Body FriendReqBean friendReqBean);

    @GET("/friendRequest/multiSearch")
    Call<ResponseModel<List<FriendBean>>> c(@Query("uid") int i2, @Query("token") String str, @Query("account") String str2);

    @POST("/playersRecommend/get/v2")
    Call<ResponseModel<List<FriendBean>>> d(@Body FriendRecommendRequest friendRecommendRequest);

    @GET("/friendRequest/list")
    Call<ResponseModel<List<FriendBean>>> e(@Query("uid") String str, @Query("token") String str2, @Query("limit") int i2, @Query("page") int i4);

    @GET("/user/get")
    Call<ResponseModel<FriendAccountInfo>> f(@Query("uid") String str, @Query("token") String str2);

    @GET("/visitingCard/get")
    Call<ResponseModel<FriendCardBean>> g(@Query("uid") String str, @Query("token") String str2, @Query("ruid") String str3);

    @FormUrlEncoded
    @POST("/like/watch")
    Call<ResponseModel> h(@FieldMap Map<String, Object> map);

    @GET("/friendInfo/get")
    Call<ResponseModel<FriendAccountInfo>> i(@Query("uid") String str, @Query("token") String str2, @Query("ruid") String str3);

    @FormUrlEncoded
    @POST("/user/rejectBattleInvite/v2")
    Call<ResponseModel> j(@FieldMap Map<String, Object> map);

    @POST("/friendRequest/add")
    Call<ResponseModel<FriendBackGameRspBean>> k(@Body FriendBackGameReqBean friendBackGameReqBean);

    @GET("/like/list")
    Call<ResponseModel<List<FriendBean>>> l(@Query("uid") String str, @Query("token") String str2, @Query("limit") int i2, @Query("page") int i4);

    @FormUrlEncoded
    @POST("/friendRelation/delete")
    Call<ResponseModel> m(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/friendRequest/status")
    Call<ResponseModel> n(@FieldMap Map<String, Object> map);
}
