package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.lang.Thread;
import java.util.HashMap;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class e implements Thread.UncaughtExceptionHandler {

    /* renamed from: h  reason: collision with root package name */
    private static String f59551h;

    /* renamed from: i  reason: collision with root package name */
    private static final Object f59552i = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Context f59553a;

    /* renamed from: b  reason: collision with root package name */
    private b f59554b;

    /* renamed from: c  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.strategy.a f59555c;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.bugly.crashreport.common.info.a f59556d;

    /* renamed from: e  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f59557e;

    /* renamed from: f  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f59558f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f59559g = false;

    /* renamed from: j  reason: collision with root package name */
    private int f59560j;

    public e(Context context, b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar, com.tencent.bugly.crashreport.common.info.a aVar2) {
        this.f59553a = context;
        this.f59554b = bVar;
        this.f59555c = aVar;
        this.f59556d = aVar2;
    }

    public final synchronized void a() {
        if (this.f59560j >= 10) {
            x.a("java crash handler over %d, no need set.", 10);
            return;
        }
        this.f59559g = true;
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            if (e.class.getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                return;
            }
            if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                x.a("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f59558f = defaultUncaughtExceptionHandler;
                this.f59557e = defaultUncaughtExceptionHandler;
            } else {
                x.a("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f59557e = defaultUncaughtExceptionHandler;
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f59560j++;
        x.a("registered java monitor: %s", toString());
    }

    public final synchronized void b() {
        this.f59559g = false;
        x.a("close java monitor!", new Object[0]);
        if ("bugly".equals(Thread.getDefaultUncaughtExceptionHandler().getClass().getName())) {
            x.a("Java monitor to unregister: %s", toString());
            Thread.setDefaultUncaughtExceptionHandler(this.f59557e);
            this.f59560j--;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (f59552i) {
            a(thread, th, true, null, null);
        }
    }

    private CrashDetailBean b(Thread thread, Throwable th, boolean z3, String str, byte[] bArr) {
        String a4;
        if (th == null) {
            x.d("We can do nothing with a null throwable.", new Object[0]);
            return null;
        }
        boolean m4 = c.a().m();
        String str2 = (m4 && z3) ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        if (m4 && z3) {
            x.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.g();
        crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
        crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.i();
        crashDetailBean.F = this.f59556d.l();
        crashDetailBean.G = this.f59556d.k();
        crashDetailBean.H = this.f59556d.m();
        crashDetailBean.f59450w = z.a(this.f59553a, c.f59509e, (String) null);
        byte[] a5 = y.a();
        crashDetailBean.f59452y = a5;
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(a5 == null ? 0 : a5.length);
        x.a("user log size:%d", objArr);
        crashDetailBean.f59429b = z3 ? 0 : 2;
        crashDetailBean.f59432e = this.f59556d.h();
        com.tencent.bugly.crashreport.common.info.a aVar = this.f59556d;
        crashDetailBean.f59433f = aVar.f59370j;
        crashDetailBean.f59434g = aVar.r();
        crashDetailBean.f59440m = this.f59556d.g();
        String name = th.getClass().getName();
        String b4 = b(th, 1000);
        if (b4 == null) {
            b4 = "";
        }
        Object[] objArr2 = new Object[2];
        objArr2[0] = Integer.valueOf(th.getStackTrace().length);
        objArr2[1] = Boolean.valueOf(th.getCause() != null);
        x.e("stack frame :%d, has cause %b", objArr2);
        String stackTraceElement = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
        Throwable th2 = th;
        while (th2 != null && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 != null && th2 != th) {
            crashDetailBean.f59441n = th2.getClass().getName();
            String b5 = b(th2, 1000);
            crashDetailBean.f59442o = b5;
            if (b5 == null) {
                crashDetailBean.f59442o = "";
            }
            if (th2.getStackTrace().length > 0) {
                crashDetailBean.f59443p = th2.getStackTrace()[0].toString();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(name);
            sb.append(":");
            sb.append(b4);
            sb.append("\n");
            sb.append(stackTraceElement);
            sb.append("\n......");
            sb.append("\nCaused by:\n");
            sb.append(crashDetailBean.f59441n);
            sb.append(":");
            sb.append(crashDetailBean.f59442o);
            sb.append("\n");
            a4 = a(th2, c.f59510f);
            sb.append(a4);
            crashDetailBean.f59444q = sb.toString();
        } else {
            crashDetailBean.f59441n = name;
            String str3 = b4 + str2;
            crashDetailBean.f59442o = str3;
            if (str3 == null) {
                crashDetailBean.f59442o = "";
            }
            crashDetailBean.f59443p = stackTraceElement;
            a4 = a(th, c.f59510f);
            crashDetailBean.f59444q = a4;
        }
        crashDetailBean.f59445r = System.currentTimeMillis();
        crashDetailBean.f59448u = z.a(crashDetailBean.f59444q.getBytes());
        try {
            crashDetailBean.f59453z = z.a(c.f59510f, false);
            crashDetailBean.A = this.f59556d.f59364d;
            String str4 = thread.getName() + "(" + thread.getId() + ")";
            crashDetailBean.B = str4;
            crashDetailBean.f59453z.put(str4, a4);
            crashDetailBean.I = this.f59556d.t();
            crashDetailBean.f59435h = this.f59556d.q();
            crashDetailBean.f59436i = this.f59556d.C();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.f59556d;
            crashDetailBean.M = aVar2.f59361a;
            crashDetailBean.N = aVar2.a();
            if (z3) {
                this.f59554b.d(crashDetailBean);
            } else {
                boolean z4 = str != null && str.length() > 0;
                boolean z5 = bArr != null && bArr.length > 0;
                if (z4) {
                    HashMap hashMap = new HashMap(1);
                    crashDetailBean.O = hashMap;
                    hashMap.put("UserData", str);
                }
                if (z5) {
                    crashDetailBean.U = bArr;
                }
            }
            crashDetailBean.Q = this.f59556d.A();
            crashDetailBean.R = this.f59556d.B();
            crashDetailBean.S = this.f59556d.u();
            crashDetailBean.T = this.f59556d.z();
        } catch (Throwable th3) {
            x.e("handle crash error %s", th3.toString());
        }
        return crashDetailBean;
    }

    private static boolean a(Thread thread) {
        synchronized (f59552i) {
            if (f59551h == null || !thread.getName().equals(f59551h)) {
                f59551h = thread.getName();
                return false;
            }
            return true;
        }
    }

    public final void a(Thread thread, Throwable th, boolean z3, String str, byte[] bArr) {
        if (z3) {
            x.e("Java Crash Happen cause by %s(%d)", thread.getName(), Long.valueOf(thread.getId()));
            if (a(thread)) {
                x.a("this class has handled this exception", new Object[0]);
                if (this.f59558f != null) {
                    x.a("call system handler", new Object[0]);
                    this.f59558f.uncaughtException(thread, th);
                } else {
                    x.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                }
            }
        } else {
            x.e("Java Catch Happen", new Object[0]);
        }
        try {
            if (!this.f59559g) {
                x.c("Java crash handler is disable. Just return.", new Object[0]);
                if (z3) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f59557e;
                    if (uncaughtExceptionHandler != null && a(uncaughtExceptionHandler)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f59557e.uncaughtException(thread, th);
                        x.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f59558f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f59558f.uncaughtException(thread, th);
                        x.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            if (!this.f59555c.b()) {
                x.d("no remote but still store!", new Object[0]);
            }
            if (!this.f59555c.c().f59394e && this.f59555c.b()) {
                x.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                b.a(z3 ? "JAVA_CRASH" : "JAVA_CATCH", z.a(), this.f59556d.f59364d, thread.getName(), z.a(th), null);
                if (z3) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f59557e;
                    if (uncaughtExceptionHandler2 != null && a(uncaughtExceptionHandler2)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f59557e.uncaughtException(thread, th);
                        x.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f59558f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f59558f.uncaughtException(thread, th);
                        x.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            CrashDetailBean b4 = b(thread, th, z3, str, bArr);
            if (b4 == null) {
                x.e("pkg crash datas fail!", new Object[0]);
                if (z3) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f59557e;
                    if (uncaughtExceptionHandler3 != null && a(uncaughtExceptionHandler3)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f59557e.uncaughtException(thread, th);
                        x.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f59558f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f59558f.uncaughtException(thread, th);
                        x.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            b.a(z3 ? "JAVA_CRASH" : "JAVA_CATCH", z.a(), this.f59556d.f59364d, thread.getName(), z.a(th), b4);
            if (!this.f59554b.a(b4)) {
                this.f59554b.a(b4, 3000L, z3);
            }
            if (z3) {
                this.f59554b.c(b4);
            }
            if (z3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler4 = this.f59557e;
                if (uncaughtExceptionHandler4 != null && a(uncaughtExceptionHandler4)) {
                    x.e("sys default last handle start!", new Object[0]);
                    this.f59557e.uncaughtException(thread, th);
                    x.e("sys default last handle end!", new Object[0]);
                } else if (this.f59558f != null) {
                    x.e("system handle start!", new Object[0]);
                    this.f59558f.uncaughtException(thread, th);
                    x.e("system handle end!", new Object[0]);
                } else {
                    x.e("crashreport last handle start!", new Object[0]);
                    x.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                    x.e("crashreport last handle end!", new Object[0]);
                }
            }
        } catch (Throwable th2) {
            try {
                if (!x.a(th2)) {
                    th2.printStackTrace();
                }
                if (z3) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler5 = this.f59557e;
                    if (uncaughtExceptionHandler5 != null && a(uncaughtExceptionHandler5)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f59557e.uncaughtException(thread, th);
                        x.e("sys default last handle end!", new Object[0]);
                    } else if (this.f59558f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f59558f.uncaughtException(thread, th);
                        x.e("system handle end!", new Object[0]);
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                    }
                }
            } catch (Throwable th3) {
                if (z3) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler6 = this.f59557e;
                    if (uncaughtExceptionHandler6 != null && a(uncaughtExceptionHandler6)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.f59557e.uncaughtException(thread, th);
                        x.e("sys default last handle end!", new Object[0]);
                    } else if (this.f59558f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f59558f.uncaughtException(thread, th);
                        x.e("system handle end!", new Object[0]);
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                    }
                }
                throw th3;
            }
        }
    }

    private static String b(Throwable th, int i2) {
        if (th.getMessage() == null) {
            return "";
        }
        if (th.getMessage().length() <= 1000) {
            return th.getMessage();
        }
        return th.getMessage().substring(0, 1000) + "\n[Message over limit size:1000, has been cutted!]";
    }

    private static boolean a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        StackTraceElement[] stackTrace;
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        String name = uncaughtExceptionHandler.getClass().getName();
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && "uncaughtException".equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    public final synchronized void a(StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z3 = strategyBean.f59394e;
            if (z3 != this.f59559g) {
                x.a("java changed to %b", Boolean.valueOf(z3));
                if (strategyBean.f59394e) {
                    a();
                    return;
                }
                b();
            }
        }
    }

    private static String a(Throwable th, int i2) {
        StackTraceElement[] stackTrace;
        if (th == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (th.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (i2 > 0 && sb.length() >= i2) {
                        sb.append("\n[Stack over limit size :" + i2 + " , has been cutted !]");
                        return sb.toString();
                    }
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
        } catch (Throwable th2) {
            x.e("gen stack error %s", th2.toString());
        }
        return sb.toString();
    }
}
