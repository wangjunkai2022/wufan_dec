package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.r;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static int f59505a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f59506b = false;

    /* renamed from: c  reason: collision with root package name */
    public static int f59507c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f59508d = true;

    /* renamed from: e  reason: collision with root package name */
    public static int f59509e = 20480;

    /* renamed from: f  reason: collision with root package name */
    public static int f59510f = 20480;

    /* renamed from: g  reason: collision with root package name */
    public static long f59511g = 604800000;

    /* renamed from: h  reason: collision with root package name */
    public static String f59512h = null;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f59513i = false;

    /* renamed from: j  reason: collision with root package name */
    public static String f59514j = null;

    /* renamed from: k  reason: collision with root package name */
    public static int f59515k = 5000;

    /* renamed from: l  reason: collision with root package name */
    public static boolean f59516l = true;

    /* renamed from: m  reason: collision with root package name */
    public static boolean f59517m;

    /* renamed from: n  reason: collision with root package name */
    public static String f59518n;

    /* renamed from: o  reason: collision with root package name */
    public static String f59519o;

    /* renamed from: r  reason: collision with root package name */
    private static c f59520r;

    /* renamed from: p  reason: collision with root package name */
    public final b f59521p;

    /* renamed from: q  reason: collision with root package name */
    private final Context f59522q;

    /* renamed from: s  reason: collision with root package name */
    private final e f59523s;

    /* renamed from: t  reason: collision with root package name */
    private final NativeCrashHandler f59524t;

    /* renamed from: u  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f59525u;

    /* renamed from: v  reason: collision with root package name */
    private w f59526v;

    /* renamed from: w  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.crash.anr.b f59527w;

    /* renamed from: x  reason: collision with root package name */
    private Boolean f59528x;

    /* renamed from: y  reason: collision with root package name */
    private int f59529y = 31;

    /* renamed from: z  reason: collision with root package name */
    private boolean f59530z = false;

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.crash.c$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    final class AnonymousClass2 extends Thread {
        AnonymousClass2() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            ArrayList arrayList;
            if (!z.a(c.this.f59522q, "local_crash_lock", (long) com.join.mgps.data.c.f47286a)) {
                x.c("Failed to lock file for uploading local crash.", new Object[0]);
                return;
            }
            List<CrashDetailBean> a4 = c.this.f59521p.a();
            if (a4 != null && a4.size() > 0) {
                x.c("Size of crash list: %s", Integer.valueOf(a4.size()));
                int size = a4.size();
                if (size > 20) {
                    ArrayList arrayList2 = new ArrayList();
                    Collections.sort(a4);
                    for (int i2 = 0; i2 < 20; i2++) {
                        arrayList2.add(a4.get((size - 1) - i2));
                    }
                    arrayList = arrayList2;
                } else {
                    arrayList = a4;
                }
                c.this.f59521p.a(arrayList, 0L, false, false, false);
            } else {
                x.c("no crash need to be uploaded at this start", new Object[0]);
            }
            z.b(c.this.f59522q, "local_crash_lock");
        }
    }

    private c(int i2, Context context, w wVar, boolean z3, BuglyStrategy.a aVar, o oVar, String str) {
        f59505a = i2;
        Context a4 = z.a(context);
        this.f59522q = a4;
        this.f59525u = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.f59526v = wVar;
        u a5 = u.a();
        p a6 = p.a();
        b bVar = new b(i2, a4, a5, a6, this.f59525u, aVar, oVar);
        this.f59521p = bVar;
        com.tencent.bugly.crashreport.common.info.a a7 = com.tencent.bugly.crashreport.common.info.a.a(a4);
        this.f59523s = new e(a4, bVar, this.f59525u, a7);
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance(a4, a7, bVar, this.f59525u, wVar, z3, str);
        this.f59524t = nativeCrashHandler;
        a7.D = nativeCrashHandler;
        this.f59527w = com.tencent.bugly.crashreport.crash.anr.b.a(a4, this.f59525u, a7, wVar, a6, bVar, aVar);
    }

    public final synchronized void c() {
        this.f59523s.a();
        this.f59524t.setUserOpened(true);
        this.f59527w.a(true);
    }

    public final synchronized void d() {
        this.f59523s.b();
        this.f59524t.setUserOpened(false);
        this.f59527w.a(false);
    }

    public final void e() {
        this.f59523s.b();
    }

    public final void f() {
        this.f59523s.a();
    }

    public final void g() {
        this.f59524t.setUserOpened(false);
    }

    public final void h() {
        this.f59524t.setUserOpened(true);
    }

    public final void i() {
        this.f59527w.a(true);
    }

    public final void j() {
        this.f59527w.a(false);
    }

    public final void k() {
        this.f59524t.enableCatchAnrTrace();
    }

    public final synchronized void l() {
        int i2 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i2 < 30) {
                try {
                    x.a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", Integer.valueOf(i4));
                    z.b(5000L);
                    i2 = i4;
                } catch (Throwable th) {
                    if (x.a(th)) {
                        return;
                    }
                    th.printStackTrace();
                    return;
                }
            }
        }
    }

    public final boolean m() {
        return this.f59527w.a();
    }

    public final void n() {
        this.f59524t.checkUploadRecordCrash();
    }

    public final void o() {
        if (com.tencent.bugly.crashreport.common.info.a.b().f59364d.equals(AppInfo.a(this.f59522q))) {
            this.f59524t.removeEmptyNativeRecordFiles();
        }
    }

    public final boolean p() {
        return this.f59530z;
    }

    public final boolean q() {
        return (this.f59529y & 16) > 0;
    }

    public final boolean r() {
        return (this.f59529y & 8) > 0;
    }

    public final boolean s() {
        return (this.f59529y & 4) > 0;
    }

    public final boolean t() {
        return (this.f59529y & 2) > 0;
    }

    public final boolean u() {
        return (this.f59529y & 1) > 0;
    }

    public static synchronized c a(int i2, Context context, boolean z3, BuglyStrategy.a aVar, o oVar, String str) {
        c cVar;
        synchronized (c.class) {
            if (f59520r == null) {
                f59520r = new c(1004, context, w.a(), z3, aVar, null, null);
            }
            cVar = f59520r;
        }
        return cVar;
    }

    public final boolean b() {
        Boolean bool = this.f59528x;
        if (bool != null) {
            return bool.booleanValue();
        }
        String str = com.tencent.bugly.crashreport.common.info.a.b().f59364d;
        List<r> a4 = p.a().a(1);
        ArrayList arrayList = new ArrayList();
        if (a4 != null && a4.size() > 0) {
            for (r rVar : a4) {
                if (str.equals(rVar.f59799c)) {
                    this.f59528x = Boolean.TRUE;
                    arrayList.add(rVar);
                }
            }
            if (arrayList.size() > 0) {
                p.a().a(arrayList);
            }
            return true;
        }
        this.f59528x = Boolean.FALSE;
        return false;
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            cVar = f59520r;
        }
        return cVar;
    }

    public final void a(StrategyBean strategyBean) {
        this.f59523s.a(strategyBean);
        this.f59524t.onStrategyChanged(strategyBean);
        this.f59527w.c();
        w.a().a(new AnonymousClass2(), 3000L);
    }

    public final synchronized void a(boolean z3, boolean z4, boolean z5) {
        this.f59524t.testNativeCrash(z3, z4, z5);
    }

    public final void a(final Thread thread, final Throwable th, boolean z3, String str, byte[] bArr, final boolean z4) {
        this.f59526v.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    x.c("post a throwable %b", Boolean.valueOf(r2));
                    c.this.f59523s.a(thread, th, false, r5, r6);
                    if (z4) {
                        x.a("clear user datas", new Object[0]);
                        com.tencent.bugly.crashreport.common.info.a.a(c.this.f59522q).v();
                    }
                } catch (Throwable th2) {
                    if (!x.b(th2)) {
                        th2.printStackTrace();
                    }
                    x.e("java catch error: %s", th.toString());
                }
            }
        });
    }

    public final void a(CrashDetailBean crashDetailBean) {
        this.f59521p.e(crashDetailBean);
    }

    public final void a(long j4) {
        w.a().a(new AnonymousClass2(), j4);
    }

    public final void a(int i2) {
        this.f59529y = i2;
    }

    public final void a(boolean z3) {
        this.f59530z = z3;
    }
}
