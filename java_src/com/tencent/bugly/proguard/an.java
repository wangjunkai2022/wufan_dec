package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class an extends k {

    /* renamed from: i  reason: collision with root package name */
    private static byte[] f59683i;

    /* renamed from: j  reason: collision with root package name */
    private static Map<String, String> f59684j;

    /* renamed from: a  reason: collision with root package name */
    public byte f59685a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f59686b = 0;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f59687c = null;

    /* renamed from: f  reason: collision with root package name */
    private String f59690f = "";

    /* renamed from: d  reason: collision with root package name */
    public long f59688d = 0;

    /* renamed from: g  reason: collision with root package name */
    private String f59691g = "";

    /* renamed from: e  reason: collision with root package name */
    public String f59689e = "";

    /* renamed from: h  reason: collision with root package name */
    private Map<String, String> f59692h = null;

    static {
        f59683i = r0;
        byte[] bArr = {0};
        HashMap hashMap = new HashMap();
        f59684j = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59685a, 0);
        jVar.a(this.f59686b, 1);
        byte[] bArr = this.f59687c;
        if (bArr != null) {
            jVar.a(bArr, 2);
        }
        String str = this.f59690f;
        if (str != null) {
            jVar.a(str, 3);
        }
        jVar.a(this.f59688d, 4);
        String str2 = this.f59691g;
        if (str2 != null) {
            jVar.a(str2, 5);
        }
        String str3 = this.f59689e;
        if (str3 != null) {
            jVar.a(str3, 6);
        }
        Map<String, String> map = this.f59692h;
        if (map != null) {
            jVar.a((Map) map, 7);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f59685a = iVar.a(this.f59685a, 0, true);
        this.f59686b = iVar.a(this.f59686b, 1, true);
        this.f59687c = iVar.c(2, false);
        this.f59690f = iVar.b(3, false);
        this.f59688d = iVar.a(this.f59688d, 4, false);
        this.f59691g = iVar.b(5, false);
        this.f59689e = iVar.b(6, false);
        this.f59692h = (Map) iVar.a((i) f59684j, 7, false);
    }
}
