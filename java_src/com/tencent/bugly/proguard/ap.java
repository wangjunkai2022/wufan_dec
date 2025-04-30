package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class ap extends k implements Cloneable {

    /* renamed from: n  reason: collision with root package name */
    private static Map<String, String> f59696n;

    /* renamed from: o  reason: collision with root package name */
    private static /* synthetic */ boolean f59697o = true;

    /* renamed from: m  reason: collision with root package name */
    private static ao f59695m = new ao();

    /* renamed from: a  reason: collision with root package name */
    public boolean f59698a = true;

    /* renamed from: b  reason: collision with root package name */
    public boolean f59699b = true;

    /* renamed from: c  reason: collision with root package name */
    public boolean f59700c = true;

    /* renamed from: d  reason: collision with root package name */
    public String f59701d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f59702e = "";

    /* renamed from: f  reason: collision with root package name */
    public ao f59703f = null;

    /* renamed from: g  reason: collision with root package name */
    public Map<String, String> f59704g = null;

    /* renamed from: h  reason: collision with root package name */
    public long f59705h = 0;

    /* renamed from: j  reason: collision with root package name */
    private String f59707j = "";

    /* renamed from: k  reason: collision with root package name */
    private String f59708k = "";

    /* renamed from: l  reason: collision with root package name */
    private int f59709l = 0;

    /* renamed from: i  reason: collision with root package name */
    public int f59706i = 0;

    static {
        HashMap hashMap = new HashMap();
        f59696n = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59698a, 0);
        jVar.a(this.f59699b, 1);
        jVar.a(this.f59700c, 2);
        String str = this.f59701d;
        if (str != null) {
            jVar.a(str, 3);
        }
        String str2 = this.f59702e;
        if (str2 != null) {
            jVar.a(str2, 4);
        }
        ao aoVar = this.f59703f;
        if (aoVar != null) {
            jVar.a((k) aoVar, 5);
        }
        Map<String, String> map = this.f59704g;
        if (map != null) {
            jVar.a((Map) map, 6);
        }
        jVar.a(this.f59705h, 7);
        String str3 = this.f59707j;
        if (str3 != null) {
            jVar.a(str3, 8);
        }
        String str4 = this.f59708k;
        if (str4 != null) {
            jVar.a(str4, 9);
        }
        jVar.a(this.f59709l, 10);
        jVar.a(this.f59706i, 11);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f59697o) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ap apVar = (ap) obj;
        return l.a(this.f59698a, apVar.f59698a) && l.a(this.f59699b, apVar.f59699b) && l.a(this.f59700c, apVar.f59700c) && l.a(this.f59701d, apVar.f59701d) && l.a(this.f59702e, apVar.f59702e) && l.a(this.f59703f, apVar.f59703f) && l.a(this.f59704g, apVar.f59704g) && l.a(this.f59705h, apVar.f59705h) && l.a(this.f59707j, apVar.f59707j) && l.a(this.f59708k, apVar.f59708k) && l.a(this.f59709l, apVar.f59709l) && l.a(this.f59706i, apVar.f59706i);
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59698a = iVar.a(0, true);
        this.f59699b = iVar.a(1, true);
        this.f59700c = iVar.a(2, true);
        this.f59701d = iVar.b(3, false);
        this.f59702e = iVar.b(4, false);
        this.f59703f = (ao) iVar.a((k) f59695m, 5, false);
        this.f59704g = (Map) iVar.a((i) f59696n, 6, false);
        this.f59705h = iVar.a(this.f59705h, 7, false);
        this.f59707j = iVar.b(8, false);
        this.f59708k = iVar.b(9, false);
        this.f59709l = iVar.a(this.f59709l, 10, false);
        this.f59706i = iVar.a(this.f59706i, 11, false);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb, int i2) {
        h hVar = new h(sb, i2);
        hVar.a(this.f59698a, "enable");
        hVar.a(this.f59699b, "enableUserInfo");
        hVar.a(this.f59700c, "enableQuery");
        hVar.a(this.f59701d, "url");
        hVar.a(this.f59702e, "expUrl");
        hVar.a((k) this.f59703f, "security");
        hVar.a((Map) this.f59704g, "valueMap");
        hVar.a(this.f59705h, "strategylastUpdateTime");
        hVar.a(this.f59707j, "httpsUrl");
        hVar.a(this.f59708k, "httpsExpUrl");
        hVar.a(this.f59709l, "eventRecordCount");
        hVar.a(this.f59706i, "eventTimeInterval");
    }
}
