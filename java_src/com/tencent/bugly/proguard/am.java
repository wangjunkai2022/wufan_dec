package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class am extends k {

    /* renamed from: y  reason: collision with root package name */
    private static byte[] f59657y;

    /* renamed from: z  reason: collision with root package name */
    private static Map<String, String> f59658z;

    /* renamed from: a  reason: collision with root package name */
    public int f59659a = 0;

    /* renamed from: b  reason: collision with root package name */
    public String f59660b = "";

    /* renamed from: c  reason: collision with root package name */
    public String f59661c = "";

    /* renamed from: d  reason: collision with root package name */
    public String f59662d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f59663e = "";

    /* renamed from: f  reason: collision with root package name */
    public String f59664f = "";

    /* renamed from: g  reason: collision with root package name */
    public int f59665g = 0;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f59666h = null;

    /* renamed from: i  reason: collision with root package name */
    public String f59667i = "";

    /* renamed from: j  reason: collision with root package name */
    public String f59668j = "";

    /* renamed from: k  reason: collision with root package name */
    public Map<String, String> f59669k = null;

    /* renamed from: l  reason: collision with root package name */
    public String f59670l = "";

    /* renamed from: m  reason: collision with root package name */
    public long f59671m = 0;

    /* renamed from: n  reason: collision with root package name */
    public String f59672n = "";

    /* renamed from: o  reason: collision with root package name */
    public String f59673o = "";

    /* renamed from: p  reason: collision with root package name */
    public String f59674p = "";

    /* renamed from: q  reason: collision with root package name */
    public long f59675q = 0;

    /* renamed from: u  reason: collision with root package name */
    private String f59679u = "";

    /* renamed from: r  reason: collision with root package name */
    public String f59676r = "";

    /* renamed from: v  reason: collision with root package name */
    private String f59680v = "";

    /* renamed from: w  reason: collision with root package name */
    private String f59681w = "";

    /* renamed from: s  reason: collision with root package name */
    public String f59677s = "";

    /* renamed from: t  reason: collision with root package name */
    public String f59678t = "";

    /* renamed from: x  reason: collision with root package name */
    private String f59682x = "";

    static {
        f59657y = r0;
        byte[] bArr = {0};
        HashMap hashMap = new HashMap();
        f59658z = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59659a, 0);
        jVar.a(this.f59660b, 1);
        jVar.a(this.f59661c, 2);
        jVar.a(this.f59662d, 3);
        String str = this.f59663e;
        if (str != null) {
            jVar.a(str, 4);
        }
        jVar.a(this.f59664f, 5);
        jVar.a(this.f59665g, 6);
        jVar.a(this.f59666h, 7);
        String str2 = this.f59667i;
        if (str2 != null) {
            jVar.a(str2, 8);
        }
        String str3 = this.f59668j;
        if (str3 != null) {
            jVar.a(str3, 9);
        }
        Map<String, String> map = this.f59669k;
        if (map != null) {
            jVar.a((Map) map, 10);
        }
        String str4 = this.f59670l;
        if (str4 != null) {
            jVar.a(str4, 11);
        }
        jVar.a(this.f59671m, 12);
        String str5 = this.f59672n;
        if (str5 != null) {
            jVar.a(str5, 13);
        }
        String str6 = this.f59673o;
        if (str6 != null) {
            jVar.a(str6, 14);
        }
        String str7 = this.f59674p;
        if (str7 != null) {
            jVar.a(str7, 15);
        }
        jVar.a(this.f59675q, 16);
        String str8 = this.f59679u;
        if (str8 != null) {
            jVar.a(str8, 17);
        }
        String str9 = this.f59676r;
        if (str9 != null) {
            jVar.a(str9, 18);
        }
        String str10 = this.f59680v;
        if (str10 != null) {
            jVar.a(str10, 19);
        }
        String str11 = this.f59681w;
        if (str11 != null) {
            jVar.a(str11, 20);
        }
        String str12 = this.f59677s;
        if (str12 != null) {
            jVar.a(str12, 21);
        }
        String str13 = this.f59678t;
        if (str13 != null) {
            jVar.a(str13, 22);
        }
        String str14 = this.f59682x;
        if (str14 != null) {
            jVar.a(str14, 23);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59659a = iVar.a(this.f59659a, 0, true);
        this.f59660b = iVar.b(1, true);
        this.f59661c = iVar.b(2, true);
        this.f59662d = iVar.b(3, true);
        this.f59663e = iVar.b(4, false);
        this.f59664f = iVar.b(5, true);
        this.f59665g = iVar.a(this.f59665g, 6, true);
        this.f59666h = iVar.c(7, true);
        this.f59667i = iVar.b(8, false);
        this.f59668j = iVar.b(9, false);
        this.f59669k = (Map) iVar.a((i) f59658z, 10, false);
        this.f59670l = iVar.b(11, false);
        this.f59671m = iVar.a(this.f59671m, 12, false);
        this.f59672n = iVar.b(13, false);
        this.f59673o = iVar.b(14, false);
        this.f59674p = iVar.b(15, false);
        this.f59675q = iVar.a(this.f59675q, 16, false);
        this.f59679u = iVar.b(17, false);
        this.f59676r = iVar.b(18, false);
        this.f59680v = iVar.b(19, false);
        this.f59681w = iVar.b(20, false);
        this.f59677s = iVar.b(21, false);
        this.f59678t = iVar.b(22, false);
        this.f59682x = iVar.b(23, false);
    }
}
