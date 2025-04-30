package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class ak extends k {
    private static ArrayList<aj> A;
    private static Map<String, String> B;
    private static Map<String, String> C;

    /* renamed from: v  reason: collision with root package name */
    private static Map<String, String> f59629v;

    /* renamed from: w  reason: collision with root package name */
    private static ai f59630w;

    /* renamed from: x  reason: collision with root package name */
    private static ah f59631x;

    /* renamed from: y  reason: collision with root package name */
    private static ArrayList<ah> f59632y;

    /* renamed from: z  reason: collision with root package name */
    private static ArrayList<ah> f59633z;

    /* renamed from: a  reason: collision with root package name */
    public String f59634a = "";

    /* renamed from: b  reason: collision with root package name */
    public long f59635b = 0;

    /* renamed from: c  reason: collision with root package name */
    public String f59636c = "";

    /* renamed from: d  reason: collision with root package name */
    public String f59637d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f59638e = "";

    /* renamed from: f  reason: collision with root package name */
    public String f59639f = "";

    /* renamed from: g  reason: collision with root package name */
    public String f59640g = "";

    /* renamed from: h  reason: collision with root package name */
    public Map<String, String> f59641h = null;

    /* renamed from: i  reason: collision with root package name */
    public String f59642i = "";

    /* renamed from: j  reason: collision with root package name */
    public ai f59643j = null;

    /* renamed from: k  reason: collision with root package name */
    public int f59644k = 0;

    /* renamed from: l  reason: collision with root package name */
    public String f59645l = "";

    /* renamed from: m  reason: collision with root package name */
    public String f59646m = "";

    /* renamed from: n  reason: collision with root package name */
    public ah f59647n = null;

    /* renamed from: o  reason: collision with root package name */
    public ArrayList<ah> f59648o = null;

    /* renamed from: p  reason: collision with root package name */
    public ArrayList<ah> f59649p = null;

    /* renamed from: q  reason: collision with root package name */
    public ArrayList<aj> f59650q = null;

    /* renamed from: r  reason: collision with root package name */
    public Map<String, String> f59651r = null;

    /* renamed from: s  reason: collision with root package name */
    public Map<String, String> f59652s = null;

    /* renamed from: t  reason: collision with root package name */
    private String f59653t = "";

    /* renamed from: u  reason: collision with root package name */
    private boolean f59654u = true;

    static {
        HashMap hashMap = new HashMap();
        f59629v = hashMap;
        hashMap.put("", "");
        f59630w = new ai();
        f59631x = new ah();
        f59632y = new ArrayList<>();
        f59632y.add(new ah());
        f59633z = new ArrayList<>();
        f59633z.add(new ah());
        A = new ArrayList<>();
        A.add(new aj());
        HashMap hashMap2 = new HashMap();
        B = hashMap2;
        hashMap2.put("", "");
        HashMap hashMap3 = new HashMap();
        C = hashMap3;
        hashMap3.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59634a, 0);
        jVar.a(this.f59635b, 1);
        jVar.a(this.f59636c, 2);
        String str = this.f59637d;
        if (str != null) {
            jVar.a(str, 3);
        }
        String str2 = this.f59638e;
        if (str2 != null) {
            jVar.a(str2, 4);
        }
        String str3 = this.f59639f;
        if (str3 != null) {
            jVar.a(str3, 5);
        }
        String str4 = this.f59640g;
        if (str4 != null) {
            jVar.a(str4, 6);
        }
        Map<String, String> map = this.f59641h;
        if (map != null) {
            jVar.a((Map) map, 7);
        }
        String str5 = this.f59642i;
        if (str5 != null) {
            jVar.a(str5, 8);
        }
        ai aiVar = this.f59643j;
        if (aiVar != null) {
            jVar.a((k) aiVar, 9);
        }
        jVar.a(this.f59644k, 10);
        String str6 = this.f59645l;
        if (str6 != null) {
            jVar.a(str6, 11);
        }
        String str7 = this.f59646m;
        if (str7 != null) {
            jVar.a(str7, 12);
        }
        ah ahVar = this.f59647n;
        if (ahVar != null) {
            jVar.a((k) ahVar, 13);
        }
        ArrayList<ah> arrayList = this.f59648o;
        if (arrayList != null) {
            jVar.a((Collection) arrayList, 14);
        }
        ArrayList<ah> arrayList2 = this.f59649p;
        if (arrayList2 != null) {
            jVar.a((Collection) arrayList2, 15);
        }
        ArrayList<aj> arrayList3 = this.f59650q;
        if (arrayList3 != null) {
            jVar.a((Collection) arrayList3, 16);
        }
        Map<String, String> map2 = this.f59651r;
        if (map2 != null) {
            jVar.a((Map) map2, 17);
        }
        Map<String, String> map3 = this.f59652s;
        if (map3 != null) {
            jVar.a((Map) map3, 18);
        }
        String str8 = this.f59653t;
        if (str8 != null) {
            jVar.a(str8, 19);
        }
        jVar.a(this.f59654u, 20);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59634a = iVar.b(0, true);
        this.f59635b = iVar.a(this.f59635b, 1, true);
        this.f59636c = iVar.b(2, true);
        this.f59637d = iVar.b(3, false);
        this.f59638e = iVar.b(4, false);
        this.f59639f = iVar.b(5, false);
        this.f59640g = iVar.b(6, false);
        this.f59641h = (Map) iVar.a((i) f59629v, 7, false);
        this.f59642i = iVar.b(8, false);
        this.f59643j = (ai) iVar.a((k) f59630w, 9, false);
        this.f59644k = iVar.a(this.f59644k, 10, false);
        this.f59645l = iVar.b(11, false);
        this.f59646m = iVar.b(12, false);
        this.f59647n = (ah) iVar.a((k) f59631x, 13, false);
        this.f59648o = (ArrayList) iVar.a((i) f59632y, 14, false);
        this.f59649p = (ArrayList) iVar.a((i) f59633z, 15, false);
        this.f59650q = (ArrayList) iVar.a((i) A, 16, false);
        this.f59651r = (Map) iVar.a((i) B, 17, false);
        this.f59652s = (Map) iVar.a((i) C, 18, false);
        this.f59653t = iVar.b(19, false);
        this.f59654u = iVar.a(20, false);
    }
}
