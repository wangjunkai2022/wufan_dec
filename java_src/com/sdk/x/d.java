package com.sdk.x;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.sdk.Unicorn.base.api.CallBack;
import com.sdk.a.e;
import com.sdk.f.g;
/* loaded from: classes4.dex */
public class d<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56709a = "com.sdk.x.d";

    /* renamed from: b  reason: collision with root package name */
    public static Boolean f56710b = Boolean.valueOf(g.f56647b);

    /* renamed from: c  reason: collision with root package name */
    public CallBack<T> f56711c;

    /* renamed from: d  reason: collision with root package name */
    public Context f56712d;

    /* renamed from: e  reason: collision with root package name */
    public d<T>.a f56713e;

    /* renamed from: f  reason: collision with root package name */
    public e f56714f;

    /* renamed from: g  reason: collision with root package name */
    public int f56715g;

    /* loaded from: classes4.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public Handler f56716a = new Handler(Looper.getMainLooper());

        /* renamed from: b  reason: collision with root package name */
        public long f56717b;

        public a(long j4) {
            this.f56717b = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f56714f != null) {
                com.sdk.o.b.c(d.f56709a, "超时，已取消请求", d.f56710b);
                d.this.f56714f.a();
            }
            d.this.a(1, "超时", 101005, null, com.sdk.o.c.a().f56639c);
        }
    }

    public d(Context context, int i2, CallBack<T> callBack) {
        this.f56711c = callBack;
        this.f56712d = context;
        i2 = i2 <= 0 ? 30 : i2;
        this.f56715g = i2;
        d<T>.a aVar = new a(i2 * 1000);
        this.f56713e = aVar;
        aVar.f56716a.postDelayed(aVar, aVar.f56717b);
        com.sdk.o.c.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r14) {
        /*
            r13 = this;
            android.content.Context r0 = r13.f56712d
            com.sdk.p.f$b r1 = com.sdk.p.f.b.f56684b
            java.lang.String r1 = r1.a()
            java.lang.String r0 = com.sdk.b.a.a(r0, r14, r1)
            java.lang.Boolean r1 = com.sdk.o.b.b(r0)
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L28
            java.lang.String r7 = com.sdk.b.a.b(r0)
            java.lang.String r6 = com.sdk.b.a.a(r0)
            r3 = 0
            r5 = 100
            java.lang.String r4 = "成功"
            r2 = r13
            r2.a(r3, r4, r5, r6, r7)
            return
        L28:
            android.content.Context r0 = r13.f56712d
            boolean r1 = com.sdk.r.b.f56690a
            r2 = 1
            if (r1 == 0) goto L30
            goto L76
        L30:
            java.lang.String r1 = "access_limit_time"
            java.lang.Long r3 = com.sdk.j.a.b(r0, r1)
            long r4 = java.lang.System.currentTimeMillis()
            if (r3 != 0) goto L45
            java.lang.Long r3 = java.lang.Long.valueOf(r4)
            com.sdk.j.a.a(r0, r1, r3)
        L43:
            r0 = 1
            goto L78
        L45:
            long r6 = r3.longValue()
            long r6 = r4 - r6
            r8 = 600000(0x927c0, double:2.964394E-318)
            r10 = 0
            java.lang.String r3 = "access_limit_count"
            int r12 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r12 <= 0) goto L65
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            com.sdk.j.a.a(r0, r1, r4)
        L5d:
            java.lang.Long r1 = java.lang.Long.valueOf(r10)
            com.sdk.j.a.a(r0, r3, r1)
            goto L43
        L65:
            java.lang.Long r1 = com.sdk.j.a.b(r0, r3)
            if (r1 != 0) goto L6c
            goto L5d
        L6c:
            long r0 = r1.longValue()
            r3 = 30
            int r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r5 > 0) goto L77
        L76:
            goto L43
        L77:
            r0 = 0
        L78:
            if (r0 != 0) goto L83
            r14 = 201001(0x31129, float:2.81662E-40)
            java.lang.String r0 = "操作频繁请,稍后再试"
            r13.a(r2, r14, r0)
            return
        L83:
            android.content.Context r0 = r13.f56712d
            com.sdk.x.a r1 = new com.sdk.x.a
            r1.<init>(r13, r14)
            com.sdk.y.a r2 = new com.sdk.y.a
            r2.<init>(r0, r1)
            com.sdk.Unicorn.base.framework.bean.DataInfo r5 = new com.sdk.Unicorn.base.framework.bean.DataInfo
            r5.<init>()
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            java.lang.String r0 = "serviceType"
            r5.putData(r0, r14)
            java.lang.String r14 = com.sdk.Unicorn.base.framework.utils.app.AppUtils.getLocalIPAddress()
            java.lang.String r0 = "privateIp"
            r5.putData(r0, r14)
            java.lang.String r14 = "newVersion"
            java.lang.String r0 = "10"
            r5.putData(r14, r0)
            java.lang.String r3 = r2.f56663i
            com.sdk.g.a r6 = new com.sdk.g.a
            r6.<init>(r2)
            com.sdk.a.g$a r8 = com.sdk.a.g.a.POST
            r7 = 0
            java.lang.String r4 = "/dro/netm/v1.0/qc"
            com.sdk.a.e r14 = r2.a(r3, r4, r5, r6, r7, r8)
            r13.f56714f = r14
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sdk.x.d.a(int):void");
    }

    public final void a(int i2, int i4, String str) {
        String str2 = com.sdk.o.c.a().f56639c;
        if (com.sdk.o.b.a(str2).booleanValue()) {
            str2 = com.sdk.r.a.a(20);
        }
        d<T>.a aVar = this.f56713e;
        if (aVar != null) {
            aVar.f56716a.removeCallbacks(aVar);
        }
        CallBack<T> callBack = this.f56711c;
        if (callBack != null) {
            callBack.onFailed(i2, i4, str, str2);
            this.f56711c = null;
        }
        com.sdk.u.a.a();
    }

    public final void a(int i2, String str, int i4, T t3, String str2) {
        if (com.sdk.o.b.a(str2).booleanValue()) {
            str2 = com.sdk.r.a.a(20);
        }
        String str3 = str2;
        d<T>.a aVar = this.f56713e;
        if (aVar != null) {
            aVar.f56716a.removeCallbacks(aVar);
        }
        CallBack<T> callBack = this.f56711c;
        if (callBack != null) {
            callBack.onSuccess(i2, str, i4, t3, str3);
            this.f56711c = null;
        }
        com.sdk.u.a.a();
    }
}
