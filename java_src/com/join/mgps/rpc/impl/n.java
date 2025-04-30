package com.join.mgps.rpc.impl;

import com.join.mgps.dto.UserPurchaseResponse;
import com.join.mgps.rpc.o;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
/* compiled from: RpcPayClientImpl.java */
/* loaded from: classes4.dex */
public class n implements o {

    /* renamed from: b  reason: collision with root package name */
    private static n f51602b = null;

    /* renamed from: c  reason: collision with root package name */
    public static String f51603c = "";

    /* renamed from: a  reason: collision with root package name */
    private final q1.m f51604a;

    public n(q1.m mVar) {
        this.f51604a = mVar;
    }

    public static n b() {
        if (f51602b == null) {
            String str = com.join.mgps.rpc.g.f51539p;
            f51603c = str;
            f51602b = new n((q1.m) RetrofitApi.getRetrofit2(str).create(q1.m.class));
        } else if (!com.join.mgps.rpc.g.f51539p.equals(f51603c)) {
            String str2 = com.join.mgps.rpc.g.f51539p;
            f51603c = str2;
            f51602b = new n((q1.m) RetrofitApi.getRetrofit2(str2).create(q1.m.class));
        }
        return f51602b;
    }

    @Override // com.join.mgps.rpc.o
    public UserPurchaseResponse a(String str, String str2) {
        try {
            q1.m mVar = this.f51604a;
            if (mVar != null) {
                return mVar.a(str, str2).execute().body();
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
