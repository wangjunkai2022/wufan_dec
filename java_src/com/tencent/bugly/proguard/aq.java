package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class aq extends k {

    /* renamed from: i  reason: collision with root package name */
    private static Map<String, String> f59710i;

    /* renamed from: a  reason: collision with root package name */
    public long f59711a = 0;

    /* renamed from: b  reason: collision with root package name */
    public byte f59712b = 0;

    /* renamed from: c  reason: collision with root package name */
    public String f59713c = "";

    /* renamed from: d  reason: collision with root package name */
    public String f59714d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f59715e = "";

    /* renamed from: f  reason: collision with root package name */
    public Map<String, String> f59716f = null;

    /* renamed from: h  reason: collision with root package name */
    private String f59718h = "";

    /* renamed from: g  reason: collision with root package name */
    public boolean f59717g = true;

    static {
        HashMap hashMap = new HashMap();
        f59710i = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59711a, 0);
        jVar.a(this.f59712b, 1);
        String str = this.f59713c;
        if (str != null) {
            jVar.a(str, 2);
        }
        String str2 = this.f59714d;
        if (str2 != null) {
            jVar.a(str2, 3);
        }
        String str3 = this.f59715e;
        if (str3 != null) {
            jVar.a(str3, 4);
        }
        Map<String, String> map = this.f59716f;
        if (map != null) {
            jVar.a((Map) map, 5);
        }
        String str4 = this.f59718h;
        if (str4 != null) {
            jVar.a(str4, 6);
        }
        jVar.a(this.f59717g, 7);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59711a = iVar.a(this.f59711a, 0, true);
        this.f59712b = iVar.a(this.f59712b, 1, true);
        this.f59713c = iVar.b(2, false);
        this.f59714d = iVar.b(3, false);
        this.f59715e = iVar.b(4, false);
        this.f59716f = (Map) iVar.a((i) f59710i, 5, false);
        this.f59718h = iVar.b(6, false);
        this.f59717g = iVar.a(7, false);
    }
}
