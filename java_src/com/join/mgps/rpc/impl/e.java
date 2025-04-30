package com.join.mgps.rpc.impl;

import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: RpcConsoleGameClientImpl.java */
/* loaded from: classes4.dex */
public class e implements com.join.mgps.rpc.f {

    /* renamed from: b  reason: collision with root package name */
    private static e f51580b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.e f51581a;

    public e(q1.e eVar) {
        this.f51581a = eVar;
    }

    public static e b() {
        if (f51580b == null) {
            f51580b = new e((q1.e) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51566y).create(q1.e.class));
        }
        return f51580b;
    }

    public static e c() {
        e eVar = new e((q1.e) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.f51566y).create(q1.e.class));
        f51580b = eVar;
        return eVar;
    }

    @Override // com.join.mgps.rpc.f
    public ResultMainBean<List<AppBean>> a(Map<String, String> map) {
        try {
            q1.e eVar = this.f51581a;
            if (eVar != null) {
                return eVar.a(map).execute().body();
            }
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
