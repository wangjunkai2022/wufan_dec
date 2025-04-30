package com.tencent.bugly.proguard;

import android.content.Context;
import java.util.Map;
import java.util.UUID;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private int f59821a;

    /* renamed from: b  reason: collision with root package name */
    private int f59822b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f59823c;

    /* renamed from: d  reason: collision with root package name */
    private final int f59824d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f59825e;

    /* renamed from: f  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f59826f;

    /* renamed from: g  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.strategy.a f59827g;

    /* renamed from: h  reason: collision with root package name */
    private final s f59828h;

    /* renamed from: i  reason: collision with root package name */
    private final u f59829i;

    /* renamed from: j  reason: collision with root package name */
    private final int f59830j;

    /* renamed from: k  reason: collision with root package name */
    private final t f59831k;

    /* renamed from: l  reason: collision with root package name */
    private final t f59832l;

    /* renamed from: m  reason: collision with root package name */
    private String f59833m;

    /* renamed from: n  reason: collision with root package name */
    private final String f59834n;

    /* renamed from: o  reason: collision with root package name */
    private final Map<String, String> f59835o;

    /* renamed from: p  reason: collision with root package name */
    private int f59836p;

    /* renamed from: q  reason: collision with root package name */
    private long f59837q;

    /* renamed from: r  reason: collision with root package name */
    private long f59838r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f59839s;

    public v(Context context, int i2, int i4, byte[] bArr, String str, String str2, t tVar, boolean z3, boolean z4) {
        this(context, i2, i4, bArr, str, str2, tVar, 2, com.facebook.imagepipeline.producers.s.f13217g, z4, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.tencent.bugly.proguard.an r4, boolean r5, int r6, java.lang.String r7) {
        /*
            r3 = this;
            int r4 = r3.f59824d
            r0 = 630(0x276, float:8.83E-43)
            if (r4 == r0) goto L1a
            r0 = 640(0x280, float:8.97E-43)
            if (r4 == r0) goto L17
            r0 = 830(0x33e, float:1.163E-42)
            if (r4 == r0) goto L1a
            r0 = 840(0x348, float:1.177E-42)
            if (r4 == r0) goto L17
            java.lang.String r4 = java.lang.String.valueOf(r4)
            goto L1c
        L17:
            java.lang.String r4 = "userinfo"
            goto L1c
        L1a:
            java.lang.String r4 = "crash"
        L1c:
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L2a
            java.lang.Object[] r6 = new java.lang.Object[r0]
            r6[r1] = r4
            java.lang.String r4 = "[Upload] Success: %s"
            com.tencent.bugly.proguard.x.a(r4, r6)
            goto L3d
        L2a:
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r2[r1] = r6
            r2[r0] = r4
            r4 = 2
            r2[r4] = r7
            java.lang.String r4 = "[Upload] Failed to upload(%d) %s: %s"
            com.tencent.bugly.proguard.x.e(r4, r2)
        L3d:
            long r6 = r3.f59837q
            long r0 = r3.f59838r
            long r6 = r6 + r0
            r0 = 0
            int r4 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r4 <= 0) goto L5d
            com.tencent.bugly.proguard.u r4 = r3.f59829i
            boolean r6 = r3.f59839s
            long r6 = r4.a(r6)
            long r0 = r3.f59837q
            long r6 = r6 + r0
            long r0 = r3.f59838r
            long r6 = r6 + r0
            com.tencent.bugly.proguard.u r4 = r3.f59829i
            boolean r0 = r3.f59839s
            r4.a(r6, r0)
        L5d:
            com.tencent.bugly.proguard.t r4 = r3.f59831k
            if (r4 == 0) goto L64
            r4.a(r5)
        L64:
            com.tencent.bugly.proguard.t r4 = r3.f59832l
            if (r4 == 0) goto L6b
            r4.a(r5)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.v.a(com.tencent.bugly.proguard.an, boolean, int, java.lang.String):void");
    }

    public final void b(long j4) {
        this.f59838r += j4;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x0218 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01b2 A[Catch: all -> 0x0321, TryCatch #0 {all -> 0x0321, blocks: (B:3:0x0007, B:5:0x001a, B:8:0x0022, B:11:0x0027, B:13:0x003b, B:15:0x003f, B:17:0x0043, B:20:0x0049, B:22:0x004f, B:24:0x0055, B:26:0x0082, B:27:0x0085, B:29:0x00b4, B:31:0x00ba, B:32:0x00ce, B:35:0x00d6, B:37:0x00ed, B:38:0x00fa, B:41:0x013d, B:43:0x0150, B:46:0x0158, B:49:0x015f, B:52:0x0167, B:64:0x01b2, B:66:0x01de, B:67:0x01e6, B:69:0x01ec, B:70:0x020d, B:75:0x0247, B:77:0x025a, B:79:0x026b, B:80:0x0273, B:82:0x0279, B:83:0x0294, B:85:0x029b, B:88:0x02a3, B:90:0x02a9, B:92:0x02b0, B:96:0x02c4, B:98:0x02d7, B:100:0x02de, B:95:0x02c3, B:103:0x02e6, B:54:0x0171, B:56:0x0177, B:57:0x017f, B:59:0x018d, B:60:0x0199, B:61:0x01a6, B:105:0x030c, B:107:0x0313, B:109:0x031a), top: B:117:0x0007 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.v.run():void");
    }

    public v(Context context, int i2, int i4, byte[] bArr, String str, String str2, t tVar, int i5, int i6, boolean z3, Map<String, String> map) {
        this.f59821a = 2;
        this.f59822b = com.facebook.imagepipeline.producers.s.f13217g;
        this.f59833m = null;
        this.f59836p = 0;
        this.f59837q = 0L;
        this.f59838r = 0L;
        this.f59839s = false;
        this.f59823c = context;
        this.f59826f = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.f59825e = bArr;
        this.f59827g = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.f59828h = s.a(context);
        this.f59829i = u.a();
        this.f59830j = i2;
        this.f59833m = str;
        this.f59834n = str2;
        this.f59831k = tVar;
        this.f59832l = null;
        this.f59824d = i4;
        if (i5 > 0) {
            this.f59821a = i5;
        }
        if (i6 > 0) {
            this.f59822b = i6;
        }
        this.f59839s = z3;
        this.f59835o = map;
    }

    private static boolean a(an anVar, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.common.strategy.a aVar2) {
        if (anVar == null) {
            x.d("resp == null!", new Object[0]);
            return false;
        }
        byte b4 = anVar.f59685a;
        if (b4 != 0) {
            x.e("resp result error %d", Byte.valueOf(b4));
            return false;
        }
        try {
            if (!z.a(anVar.f59689e) && !com.tencent.bugly.crashreport.common.info.a.b().j().equals(anVar.f59689e)) {
                p.a().a(com.tencent.bugly.crashreport.common.strategy.a.f59412a, com.alipay.sdk.packet.d.f9795p, anVar.f59689e.getBytes("UTF-8"), (o) null, true);
                aVar.f(anVar.f59689e);
            }
        } catch (Throwable th) {
            x.a(th);
        }
        aVar.f59369i = anVar.f59688d;
        int i2 = anVar.f59686b;
        if (i2 == 510) {
            byte[] bArr = anVar.f59687c;
            if (bArr == null) {
                x.e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(i2));
                return false;
            }
            ap apVar = (ap) a.a(bArr, ap.class);
            if (apVar == null) {
                x.e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(anVar.f59686b));
                return false;
            }
            aVar2.a(apVar);
        }
        return true;
    }

    public final void a(long j4) {
        this.f59836p++;
        this.f59837q += j4;
    }

    private static String a(String str) {
        if (z.a(str)) {
            return str;
        }
        try {
            return String.format("%s?aid=%s", str, UUID.randomUUID().toString());
        } catch (Throwable th) {
            x.a(th);
            return str;
        }
    }
}
