package com.join.mgps.rpc;

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
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
/* compiled from: RpcFriendClient.java */
/* loaded from: classes4.dex */
public interface i {
    @FormUrlEncoded
    @POST("/like/add")
    ResponseModel a(@FieldMap Map<String, Object> map);

    @POST("/friendRequest/add")
    ResponseModel b(@Body FriendReqBean friendReqBean);

    @GET("/friendRequest/multiSearch")
    ResponseModel<List<FriendBean>> c(@Query("uid") int i2, @Query("token") String str, @Query("account") String str2);

    @POST("/playersRecommend/get/v2")
    ResponseModel<List<FriendBean>> d(@Body FriendRecommendRequest friendRecommendRequest);

    @GET("/friendRequest/list")
    ResponseModel<List<FriendBean>> e(@Query("uid") String str, @Query("token") String str2, @Query("limit") int i2, @Query("page") int i4);

    @GET("/user/get")
    ResponseModel<FriendAccountInfo> f(@Query("uid") String str, @Query("token") String str2);

    @GET("/visitingCard/get")
    ResponseModel<FriendCardBean> g(@Query("uid") String str, @Query("token") String str2, @Query("ruid") String str3);

    @FormUrlEncoded
    @POST("/like/watch")
    ResponseModel h(@FieldMap Map<String, Object> map);

    @GET("/friendInfo/get")
    ResponseModel<FriendAccountInfo> i(@Query("uid") String str, @Query("token") String str2, @Query("ruid") String str3);

    @FormUrlEncoded
    @POST("/user/rejectBattleInvite/v2")
    ResponseModel j(@FieldMap Map<String, Object> map);

    @POST("/friendRequest/add")
    ResponseModel<FriendBackGameRspBean> k(@Body FriendBackGameReqBean friendBackGameReqBean);

    @GET("/like/list")
    ResponseModel<List<FriendBean>> l(@Query("uid") String str, @Query("token") String str2, @Query("limit") int i2, @Query("page") int i4);

    @FormUrlEncoded
    @POST("/friendRelation/delete")
    ResponseModel m(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/friendRequest/status")
    ResponseModel n(@FieldMap Map<String, Object> map);
}
