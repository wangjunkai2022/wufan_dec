package com.join.mgps.rpc;

import com.join.mgps.dto.OemData;
import com.join.mgps.dto.OemResponse;
import retrofit2.http.GET;
import retrofit2.http.Path;
/* compiled from: RpcOemClient.java */
/* loaded from: classes4.dex */
public interface l {
    @GET("/forum/gift/get_gift?uid={uid}&token={token}&oid={oid}")
    OemResponse<OemData.GiftGetCdkData> a(@Path("uid") int i2, @Path("token") String str, @Path("oid") String str2);

    @GET("/forum/gift/gift_detail?uid={uid}&oid={oid}")
    OemResponse<OemData.GiftDetailData> b(@Path("uid") int i2, @Path("oid") String str);
}
