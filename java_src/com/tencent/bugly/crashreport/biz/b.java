package com.tencent.bugly.crashreport.biz;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.biz.a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static a f59342a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f59343b = false;

    /* renamed from: c  reason: collision with root package name */
    private static int f59344c = 10;

    /* renamed from: d  reason: collision with root package name */
    private static long f59345d = 300000;

    /* renamed from: e  reason: collision with root package name */
    private static long f59346e = 30000;

    /* renamed from: f  reason: collision with root package name */
    private static long f59347f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static int f59348g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static long f59349h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static long f59350i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static long f59351j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static Application.ActivityLifecycleCallbacks f59352k = null;

    /* renamed from: l  reason: collision with root package name */
    private static Class<?> f59353l = null;

    /* renamed from: m  reason: collision with root package name */
    private static boolean f59354m = true;

    static /* synthetic */ String a(String str, String str2) {
        return z.a() + "  " + str + "  " + str2 + "\n";
    }

    static /* synthetic */ int g() {
        int i2 = f59348g;
        f59348g = i2 + 1;
        return i2;
    }

    public static void a(final Context context, final BuglyStrategy buglyStrategy) {
        long j4;
        if (f59343b) {
            return;
        }
        boolean z3 = com.tencent.bugly.crashreport.common.info.a.a(context).f59365e;
        f59354m = z3;
        f59342a = new a(context, z3);
        f59343b = true;
        if (buglyStrategy != null) {
            f59353l = buglyStrategy.getUserInfoActivity();
            j4 = buglyStrategy.getAppReportDelay();
        } else {
            j4 = 0;
        }
        if (j4 <= 0) {
            c(context, buglyStrategy);
        } else {
            w.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.biz.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.c(context, buglyStrategy);
                }
            }, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r14, com.tencent.bugly.BuglyStrategy r15) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.b.c(android.content.Context, com.tencent.bugly.BuglyStrategy):void");
    }

    public static void a(long j4) {
        if (j4 < 0) {
            j4 = com.tencent.bugly.crashreport.common.strategy.a.a().c().f59404o;
        }
        f59347f = j4;
    }

    public static void a(StrategyBean strategyBean, boolean z3) {
        w a4;
        a aVar = f59342a;
        if (aVar != null && !z3 && (a4 = w.a()) != null) {
            a4.a(new a.AnonymousClass2());
        }
        if (strategyBean == null) {
            return;
        }
        long j4 = strategyBean.f59404o;
        if (j4 > 0) {
            f59346e = j4;
        }
        int i2 = strategyBean.f59409t;
        if (i2 > 0) {
            f59344c = i2;
        }
        long j5 = strategyBean.f59410u;
        if (j5 > 0) {
            f59345d = j5;
        }
    }

    public static void a() {
        a aVar = f59342a;
        if (aVar != null) {
            aVar.a(2, false, 0L);
        }
    }

    public static void a(Context context) {
        if (!f59343b || context == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
            if (application != null) {
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = f59352k;
                    if (activityLifecycleCallbacks != null) {
                        application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
                    }
                } catch (Exception e4) {
                    if (!x.a(e4)) {
                        e4.printStackTrace();
                    }
                }
            }
        }
        f59343b = false;
    }
}
