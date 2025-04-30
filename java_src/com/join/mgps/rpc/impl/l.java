package com.join.mgps.rpc.impl;

import com.join.mgps.dto.OemData;
import com.join.mgps.dto.OemResponse;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
/* compiled from: RpcOemClientImpl.java */
/* loaded from: classes4.dex */
public class l implements com.join.mgps.rpc.l {

    /* renamed from: b  reason: collision with root package name */
    private static l f51598b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.k f51599a;

    public l(q1.k kVar) {
        this.f51599a = kVar;
    }

    public static l c() {
        if (f51598b == null) {
            f51598b = new l((q1.k) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51542q).create(q1.k.class));
        }
        return f51598b;
    }

    @Override // com.join.mgps.rpc.l
    public OemResponse<OemData.GiftGetCdkData> a(int i2, String str, String str2) {
        try {
            q1.k kVar = this.f51599a;
            if (kVar != null) {
                return kVar.a(i2, str, str2).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public OemResponse<OemData.GiftDetailData> b(int i2, String str) {
        try {
            q1.k kVar = this.f51599a;
            if (kVar != null) {
                return kVar.b(i2, str).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
