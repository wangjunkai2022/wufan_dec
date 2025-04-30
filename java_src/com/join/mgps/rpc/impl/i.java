package com.join.mgps.rpc.impl;

import com.join.mgps.rpc.retrofit2.RetrofitApi;
/* compiled from: RpcLoginImpl.java */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: b  reason: collision with root package name */
    private static i f51591b;

    /* renamed from: a  reason: collision with root package name */
    private final q1.i f51592a;

    public i(q1.i iVar) {
        this.f51592a = iVar;
    }

    public static i b() {
        if (f51591b == null) {
            f51591b = new i((q1.i) RetrofitApi.getRetrofit2(com.join.mgps.rpc.g.F).create(q1.i.class));
        }
        return f51591b;
    }

    public q1.i a() {
        return this.f51592a;
    }
}
