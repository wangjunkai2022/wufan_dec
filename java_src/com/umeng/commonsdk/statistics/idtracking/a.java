package com.umeng.commonsdk.statistics.idtracking;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* compiled from: AbstractIdTracker.java */
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f61342a = 10;

    /* renamed from: b  reason: collision with root package name */
    private final int f61343b = 100;

    /* renamed from: c  reason: collision with root package name */
    private final String f61344c;

    /* renamed from: d  reason: collision with root package name */
    private List<com.umeng.commonsdk.statistics.proto.a> f61345d;

    /* renamed from: e  reason: collision with root package name */
    private com.umeng.commonsdk.statistics.proto.b f61346e;

    public a(String str) {
        this.f61344c = str;
    }

    private boolean g() {
        com.umeng.commonsdk.statistics.proto.b bVar = this.f61346e;
        String b4 = bVar == null ? null : bVar.b();
        int h4 = bVar == null ? 0 : bVar.h();
        String a4 = a(f());
        if (a4 == null || a4.equals(b4)) {
            return false;
        }
        if (bVar == null) {
            bVar = new com.umeng.commonsdk.statistics.proto.b();
        }
        bVar.a(a4);
        bVar.a(System.currentTimeMillis());
        bVar.a(h4 + 1);
        com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
        aVar.a(this.f61344c);
        aVar.c(a4);
        aVar.b(b4);
        aVar.a(bVar.e());
        if (this.f61345d == null) {
            this.f61345d = new ArrayList(2);
        }
        this.f61345d.add(aVar);
        if (this.f61345d.size() > 10) {
            this.f61345d.remove(0);
        }
        this.f61346e = bVar;
        return true;
    }

    public boolean a() {
        return g();
    }

    public String b() {
        return this.f61344c;
    }

    public boolean c() {
        com.umeng.commonsdk.statistics.proto.b bVar = this.f61346e;
        return bVar == null || bVar.h() <= 100;
    }

    public com.umeng.commonsdk.statistics.proto.b d() {
        return this.f61346e;
    }

    public List<com.umeng.commonsdk.statistics.proto.a> e() {
        return this.f61345d;
    }

    public abstract String f();

    public void a(com.umeng.commonsdk.statistics.proto.b bVar) {
        this.f61346e = bVar;
    }

    public void a(List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.f61345d = list;
    }

    public String a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0 || "0".equals(trim) || "unknown".equals(trim.toLowerCase(Locale.US))) {
            return null;
        }
        return trim;
    }

    public void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        this.f61346e = cVar.c().get(this.f61344c);
        List<com.umeng.commonsdk.statistics.proto.a> h4 = cVar.h();
        if (h4 == null || h4.size() <= 0) {
            return;
        }
        if (this.f61345d == null) {
            this.f61345d = new ArrayList();
        }
        for (com.umeng.commonsdk.statistics.proto.a aVar : h4) {
            if (this.f61344c.equals(aVar.f61414a)) {
                this.f61345d.add(aVar);
            }
        }
    }
}
