package com.tencent.bugly.crashreport.crash.jni;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import com.join.mgps.data.c;
import com.tencent.bugly.Bugly;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.io.File;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class NativeCrashHandler implements com.tencent.bugly.crashreport.a {

    /* renamed from: a  reason: collision with root package name */
    private static NativeCrashHandler f59579a = null;

    /* renamed from: b  reason: collision with root package name */
    private static int f59580b = 1;

    /* renamed from: m  reason: collision with root package name */
    private static boolean f59581m = false;

    /* renamed from: n  reason: collision with root package name */
    private static boolean f59582n = false;

    /* renamed from: p  reason: collision with root package name */
    private static boolean f59583p = true;

    /* renamed from: c  reason: collision with root package name */
    private final Context f59584c;

    /* renamed from: d  reason: collision with root package name */
    private final com.tencent.bugly.crashreport.common.info.a f59585d;

    /* renamed from: e  reason: collision with root package name */
    private final w f59586e;

    /* renamed from: f  reason: collision with root package name */
    private NativeExceptionHandler f59587f;

    /* renamed from: g  reason: collision with root package name */
    private String f59588g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f59589h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f59590i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f59591j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f59592k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f59593l = false;

    /* renamed from: o  reason: collision with root package name */
    private com.tencent.bugly.crashreport.crash.b f59594o;

    @SuppressLint({"SdCardPath"})
    private NativeCrashHandler(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, w wVar, boolean z3, String str) {
        this.f59584c = z.a(context);
        try {
            if (z.a(str)) {
                str = context.getDir("bugly", 0).getAbsolutePath();
            }
        } catch (Throwable unused) {
            str = "/data/data/" + com.tencent.bugly.crashreport.common.info.a.a(context).f59363c + "/app_bugly";
        }
        this.f59594o = bVar;
        this.f59588g = str;
        this.f59585d = aVar;
        this.f59586e = wVar;
        this.f59589h = z3;
        this.f59587f = new a(context, aVar, bVar, com.tencent.bugly.crashreport.common.strategy.a.a());
    }

    public static synchronized NativeCrashHandler getInstance(Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.b bVar, com.tencent.bugly.crashreport.common.strategy.a aVar2, w wVar, boolean z3, String str) {
        NativeCrashHandler nativeCrashHandler;
        synchronized (NativeCrashHandler.class) {
            if (f59579a == null) {
                f59579a = new NativeCrashHandler(context, aVar, bVar, wVar, z3, str);
            }
            nativeCrashHandler = f59579a;
        }
        return nativeCrashHandler;
    }

    public static boolean isShouldHandleInJava() {
        return f59583p;
    }

    public static void setShouldHandleInJava(boolean z3) {
        f59583p = z3;
        NativeCrashHandler nativeCrashHandler = f59579a;
        if (nativeCrashHandler != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(z3);
            nativeCrashHandler.a(999, sb.toString());
        }
    }

    public boolean appendLogToNative(String str, String str2, String str3) {
        if ((this.f59590i || this.f59591j) && f59581m && str != null && str2 != null && str3 != null) {
            try {
                if (this.f59591j) {
                    return appendNativeLog(str, str2, str3);
                }
                Boolean bool = (Boolean) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "appendNativeLog", null, new Class[]{String.class, String.class, String.class}, new Object[]{str, str2, str3});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
                f59581m = false;
            } catch (Throwable th) {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    protected native boolean appendNativeLog(String str, String str2, String str3);

    protected native boolean appendWholeNativeLog(String str);

    public void checkUploadRecordCrash() {
        this.f59586e.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.1
            @Override // java.lang.Runnable
            public final void run() {
                if (!z.a(NativeCrashHandler.this.f59584c, "native_record_lock", (long) c.f47286a)) {
                    x.a("[Native] Failed to lock file for handling native crash record.", new Object[0]);
                    return;
                }
                if (!NativeCrashHandler.f59583p) {
                    NativeCrashHandler.this.a(999, Bugly.SDK_IS_DEV);
                }
                CrashDetailBean a4 = b.a(NativeCrashHandler.this.f59584c, NativeCrashHandler.this.f59588g, NativeCrashHandler.this.f59587f);
                if (a4 != null) {
                    x.a("[Native] Get crash from native record.", new Object[0]);
                    if (!NativeCrashHandler.this.f59594o.a(a4)) {
                        NativeCrashHandler.this.f59594o.a(a4, 3000L, false);
                    }
                    b.a(false, NativeCrashHandler.this.f59588g);
                }
                NativeCrashHandler.this.a();
                z.b(NativeCrashHandler.this.f59584c, "native_record_lock");
            }
        });
    }

    public void dumpAnrNativeStack() {
        a(19, "1");
    }

    public void enableCatchAnrTrace() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 30 || i2 < 23) {
            return;
        }
        f59580b |= 2;
    }

    public boolean filterSigabrtSysLog() {
        return a(998, "true");
    }

    public synchronized String getDumpFilePath() {
        return this.f59588g;
    }

    public String getLogFromNative() {
        if ((this.f59590i || this.f59591j) && f59581m) {
            try {
                if (this.f59591j) {
                    return getNativeLog();
                }
                return (String) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "getNativeLog", null, null, null);
            } catch (UnsatisfiedLinkError unused) {
                f59581m = false;
                return null;
            } catch (Throwable th) {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
                return null;
            }
        }
        return null;
    }

    public NativeExceptionHandler getNativeExceptionHandler() {
        return this.f59587f;
    }

    protected native String getNativeKeyValueList();

    protected native String getNativeLog();

    public boolean isEnableCatchAnrTrace() {
        return (f59580b & 2) == 2;
    }

    public synchronized boolean isUserOpened() {
        return this.f59593l;
    }

    public synchronized void onStrategyChanged(StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z3 = strategyBean.f59394e;
            if (z3 != this.f59592k) {
                x.d("server native changed to %b", Boolean.valueOf(z3));
            }
        }
        boolean z4 = com.tencent.bugly.crashreport.common.strategy.a.a().c().f59394e && this.f59593l;
        if (z4 != this.f59592k) {
            x.a("native changed to %b", Boolean.valueOf(z4));
            b(z4);
        }
    }

    public boolean putKeyValueToNative(String str, String str2) {
        if ((this.f59590i || this.f59591j) && f59581m && str != null && str2 != null) {
            try {
                if (this.f59591j) {
                    return putNativeKeyValue(str, str2);
                }
                Boolean bool = (Boolean) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "putNativeKeyValue", null, new Class[]{String.class, String.class}, new Object[]{str, str2});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (UnsatisfiedLinkError unused) {
                f59581m = false;
            } catch (Throwable th) {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    protected native boolean putNativeKeyValue(String str, String str2);

    protected native String regist(String str, boolean z3, int i2);

    public void removeEmptyNativeRecordFiles() {
        b.c(this.f59588g);
    }

    protected native String removeNativeKeyValue(String str);

    public synchronized void setDumpFilePath(String str) {
        this.f59588g = str;
    }

    public boolean setNativeAppChannel(String str) {
        return a(12, str);
    }

    public boolean setNativeAppPackage(String str) {
        return a(13, str);
    }

    public boolean setNativeAppVersion(String str) {
        return a(10, str);
    }

    protected native void setNativeInfo(int i2, String str);

    @Override // com.tencent.bugly.crashreport.a
    public boolean setNativeIsAppForeground(boolean z3) {
        return a(14, z3 ? "true" : Bugly.SDK_IS_DEV);
    }

    public boolean setNativeLaunchTime(long j4) {
        try {
            return a(15, String.valueOf(j4));
        } catch (NumberFormatException e4) {
            if (x.a(e4)) {
                return false;
            }
            e4.printStackTrace();
            return false;
        }
    }

    public boolean setNativeUserId(String str) {
        return a(11, str);
    }

    public synchronized void setUserOpened(boolean z3) {
        c(z3);
        boolean isUserOpened = isUserOpened();
        com.tencent.bugly.crashreport.common.strategy.a a4 = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (a4 != null) {
            isUserOpened = isUserOpened && a4.c().f59394e;
        }
        if (isUserOpened != this.f59592k) {
            x.a("native changed to %b", Boolean.valueOf(isUserOpened));
            b(isUserOpened);
        }
    }

    public synchronized void startNativeMonitor() {
        if (!this.f59591j && !this.f59590i) {
            String str = "Bugly";
            boolean z3 = !z.a(this.f59585d.f59373m);
            com.tencent.bugly.crashreport.common.info.a aVar = this.f59585d;
            String str2 = aVar.f59373m;
            if (z3) {
                str = str2;
            } else {
                aVar.getClass();
            }
            boolean a4 = a(str, z3);
            this.f59591j = a4;
            if (a4 || this.f59590i) {
                a(this.f59589h);
                if (f59581m) {
                    setNativeAppVersion(this.f59585d.f59370j);
                    setNativeAppChannel(this.f59585d.f59372l);
                    setNativeAppPackage(this.f59585d.f59363c);
                    setNativeUserId(this.f59585d.g());
                    setNativeIsAppForeground(this.f59585d.a());
                    setNativeLaunchTime(this.f59585d.f59361a);
                }
                return;
            }
            return;
        }
        a(this.f59589h);
    }

    protected native void testCrash();

    public void testNativeCrash() {
        if (!this.f59591j) {
            x.d("[Native] Bugly SO file has not been load.", new Object[0]);
        } else {
            testCrash();
        }
    }

    protected native String unregist();

    private synchronized void c() {
        if (!this.f59592k) {
            x.d("[Native] Native crash report has already unregistered.", new Object[0]);
        } else if (unregist() != null) {
            x.a("[Native] Successfully closed native crash report.", new Object[0]);
            this.f59592k = false;
        } else {
            z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[]{Boolean.TYPE}, new Object[]{Boolean.FALSE});
            this.f59592k = false;
            x.a("[Native] Successfully closed native crash report.", new Object[0]);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:15|(1:17)(16:42|(1:44)|19|20|(1:22)|23|(1:25)|27|(1:29)(1:40)|30|(1:32)(1:39)|33|(1:35)|36|37|38)|18|19|20|(0)|23|(0)|27|(0)(0)|30|(0)(0)|33|(0)|36|37|38) */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0080 A[Catch: all -> 0x008e, TryCatch #2 {all -> 0x008e, blocks: (B:22:0x0076, B:24:0x0080, B:25:0x0082, B:27:0x008c), top: B:72:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008c A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #2 {all -> 0x008e, blocks: (B:22:0x0076, B:24:0x0080, B:25:0x0082, B:27:0x008c), top: B:72:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0092 A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:76:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009a A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:76:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a5 A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:76:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:76:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c8 A[Catch: all -> 0x00ed, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x0008, B:9:0x0011, B:62:0x01af, B:43:0x00f6, B:12:0x0017, B:14:0x0021, B:16:0x0053, B:17:0x005d, B:28:0x008e, B:30:0x0092, B:32:0x00a1, B:34:0x00a5, B:36:0x00b4, B:38:0x00c8, B:39:0x00dc, B:35:0x00ad, B:31:0x009a, B:18:0x0065, B:20:0x006b), top: B:76:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void a(boolean r13) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.a(boolean):void");
    }

    private synchronized void b(boolean z3) {
        if (z3) {
            startNativeMonitor();
        } else {
            c();
        }
    }

    public static synchronized NativeCrashHandler getInstance() {
        NativeCrashHandler nativeCrashHandler;
        synchronized (NativeCrashHandler.class) {
            nativeCrashHandler = f59579a;
        }
        return nativeCrashHandler;
    }

    public void testNativeCrash(boolean z3, boolean z4, boolean z5) {
        StringBuilder sb = new StringBuilder();
        sb.append(z3);
        a(16, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z4);
        a(17, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(z5);
        a(18, sb3.toString());
        testNativeCrash();
    }

    private synchronized void c(boolean z3) {
        if (this.f59593l != z3) {
            x.a("user change native %b", Boolean.valueOf(z3));
            this.f59593l = z3;
        }
    }

    private static boolean a(String str, boolean z3) {
        boolean z4;
        try {
            x.a("[Native] Trying to load so: %s", str);
            if (z3) {
                System.load(str);
            } else {
                System.loadLibrary(str);
            }
        } catch (Throwable th) {
            th = th;
            z4 = false;
        }
        try {
            x.a("[Native] Successfully loaded SO: %s", str);
            return true;
        } catch (Throwable th2) {
            th = th2;
            z4 = true;
            x.d(th.getMessage(), new Object[0]);
            x.d("[Native] Failed to load so: %s", str);
            return z4;
        }
    }

    protected final void a() {
        long b4 = z.b() - com.tencent.bugly.crashreport.crash.c.f59511g;
        long b5 = z.b() + 86400000;
        File file = new File(this.f59588g);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    int i2 = 0;
                    int i4 = 0;
                    for (File file2 : listFiles) {
                        long lastModified = file2.lastModified();
                        if (lastModified < b4 || lastModified >= b5) {
                            x.a("[Native] Delete record file: %s", file2.getAbsolutePath());
                            i2++;
                            if (file2.delete()) {
                                i4++;
                            }
                        }
                    }
                    x.c("[Native] Number of record files overdue: %d, has deleted: %d", Integer.valueOf(i2), Integer.valueOf(i4));
                }
            } catch (Throwable th) {
                x.a(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i2, String str) {
        if (this.f59591j && f59582n) {
            try {
                setNativeInfo(i2, str);
                return true;
            } catch (UnsatisfiedLinkError unused) {
                f59582n = false;
            } catch (Throwable th) {
                if (!x.a(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }
}
