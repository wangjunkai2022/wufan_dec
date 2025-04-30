package com.tencent.bugly.proguard;

import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class f extends k {

    /* renamed from: e  reason: collision with root package name */
    public byte[] f59740e;

    /* renamed from: i  reason: collision with root package name */
    private Map<String, String> f59744i;

    /* renamed from: j  reason: collision with root package name */
    private Map<String, String> f59745j;

    /* renamed from: m  reason: collision with root package name */
    private static /* synthetic */ boolean f59735m = true;

    /* renamed from: k  reason: collision with root package name */
    private static byte[] f59733k = null;

    /* renamed from: l  reason: collision with root package name */
    private static Map<String, String> f59734l = null;

    /* renamed from: a  reason: collision with root package name */
    public short f59736a = 0;

    /* renamed from: f  reason: collision with root package name */
    private byte f59741f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f59742g = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f59737b = 0;

    /* renamed from: c  reason: collision with root package name */
    public String f59738c = null;

    /* renamed from: d  reason: collision with root package name */
    public String f59739d = null;

    /* renamed from: h  reason: collision with root package name */
    private int f59743h = 0;

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f59736a, 1);
        jVar.a(this.f59741f, 2);
        jVar.a(this.f59742g, 3);
        jVar.a(this.f59737b, 4);
        jVar.a(this.f59738c, 5);
        jVar.a(this.f59739d, 6);
        jVar.a(this.f59740e, 7);
        jVar.a(this.f59743h, 8);
        jVar.a((Map) this.f59744i, 9);
        jVar.a((Map) this.f59745j, 10);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f59735m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        f fVar = (f) obj;
        return l.a(1, (int) fVar.f59736a) && l.a(1, (int) fVar.f59741f) && l.a(1, fVar.f59742g) && l.a(1, fVar.f59737b) && l.a((Object) 1, (Object) fVar.f59738c) && l.a((Object) 1, (Object) fVar.f59739d) && l.a((Object) 1, (Object) fVar.f59740e) && l.a(1, fVar.f59743h) && l.a((Object) 1, (Object) fVar.f59744i) && l.a((Object) 1, (Object) fVar.f59745j);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        try {
            this.f59736a = iVar.a(this.f59736a, 1, true);
            this.f59741f = iVar.a(this.f59741f, 2, true);
            this.f59742g = iVar.a(this.f59742g, 3, true);
            this.f59737b = iVar.a(this.f59737b, 4, true);
            this.f59738c = iVar.b(5, true);
            this.f59739d = iVar.b(6, true);
            if (f59733k == null) {
                f59733k = new byte[]{0};
            }
            this.f59740e = iVar.c(7, true);
            this.f59743h = iVar.a(this.f59743h, 8, true);
            if (f59734l == null) {
                HashMap hashMap = new HashMap();
                f59734l = hashMap;
                hashMap.put("", "");
            }
            this.f59744i = (Map) iVar.a((i) f59734l, 9, true);
            if (f59734l == null) {
                HashMap hashMap2 = new HashMap();
                f59734l = hashMap2;
                hashMap2.put("", "");
            }
            this.f59745j = (Map) iVar.a((i) f59734l, 10, true);
        } catch (Exception e4) {
            e4.printStackTrace();
            PrintStream printStream = System.out;
            printStream.println("RequestPacket decode error " + e.a(this.f59740e));
            throw new RuntimeException(e4);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb, int i2) {
        h hVar = new h(sb, i2);
        hVar.a(this.f59736a, "iVersion");
        hVar.a(this.f59741f, "cPacketType");
        hVar.a(this.f59742g, "iMessageType");
        hVar.a(this.f59737b, "iRequestId");
        hVar.a(this.f59738c, "sServantName");
        hVar.a(this.f59739d, "sFuncName");
        hVar.a(this.f59740e, "sBuffer");
        hVar.a(this.f59743h, "iTimeout");
        hVar.a((Map) this.f59744i, "context");
        hVar.a((Map) this.f59745j, "status");
    }
}
