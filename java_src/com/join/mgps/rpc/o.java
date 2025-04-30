package com.join.mgps.rpc;

import com.join.mgps.dto.UserPurchaseResponse;
import retrofit2.http.GET;
import retrofit2.http.Path;
/* compiled from: RpcPayClient.java */
/* loaded from: classes4.dex */
public interface o {
    @GET("/pay/emulator/get_all_permission?uid={uid}&token={token}")
    UserPurchaseResponse a(@Path("uid") String str, @Path("token") String str2);
}
