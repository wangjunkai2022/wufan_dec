package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class ar extends k implements Cloneable {

    /* renamed from: f  reason: collision with root package name */
    private static ArrayList<aq> f59719f;

    /* renamed from: g  reason: collision with root package name */
    private static Map<String, String> f59720g;

    /* renamed from: a  reason: collision with root package name */
    public byte f59721a = 0;

    /* renamed from: b  reason: collision with root package name */
    public String f59722b = "";

    /* renamed from: c  reason: collision with root package name */
    public String f59723c = "";

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<aq> f59724d = null;

    /* renamed from: e  reason: collision with root package name */
    public Map<String, String> f59725e = null;

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59721a, 0);
        String str = this.f59722b;
        if (str != null) {
            jVar.a(str, 1);
        }
        String str2 = this.f59723c;
        if (str2 != null) {
            jVar.a(str2, 2);
        }
        ArrayList<aq> arrayList = this.f59724d;
        if (arrayList != null) {
            jVar.a((Collection) arrayList, 3);
        }
        Map<String, String> map = this.f59725e;
        if (map != null) {
            jVar.a((Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb, int i2) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59721a = iVar.a(this.f59721a, 0, true);
        this.f59722b = iVar.b(1, false);
        this.f59723c = iVar.b(2, false);
        if (f59719f == null) {
            f59719f = new ArrayList<>();
            f59719f.add(new aq());
        }
        this.f59724d = (ArrayList) iVar.a((i) f59719f, 3, false);
        if (f59720g == null) {
            HashMap hashMap = new HashMap();
            f59720g = hashMap;
            hashMap.put("", "");
        }
        this.f59725e = (Map) iVar.a((i) f59720g, 4, false);
    }
}
