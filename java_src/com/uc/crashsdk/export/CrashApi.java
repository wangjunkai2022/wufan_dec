package com.uc.crashsdk.export;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.webkit.ValueCallback;
import com.uc.crashsdk.JNIBridge;
import com.uc.crashsdk.a.a;
import com.uc.crashsdk.a.d;
import com.uc.crashsdk.a.h;
import com.uc.crashsdk.b;
import com.uc.crashsdk.e;
import com.uc.crashsdk.g;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class CrashApi {

    /* renamed from: a  reason: collision with root package name */
    private static CrashApi f60299a = null;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f60300c = true;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f60301d;

    /* renamed from: b  reason: collision with root package name */
    private boolean f60302b;

    private CrashApi(Context context, CustomInfo customInfo, VersionInfo versionInfo, ICrashClient iCrashClient, boolean z3, boolean z4, boolean z5) {
        this.f60302b = false;
        Context a4 = a(context);
        b(a4);
        b.f60232g = z4;
        b.f60233h = z5;
        if (b.I()) {
            b(a4);
            a(a4, customInfo, versionInfo, iCrashClient);
            if (z3) {
                a();
            }
            if (b.f60232g && e.d("libcrashsdk.so")) {
                b.f60231f = true;
                b();
            }
        } else if (customInfo != null && versionInfo != null) {
            g.a(customInfo);
            try {
                e.a(e.d(customInfo.mIsInternational), true);
                a(a4, customInfo, versionInfo, iCrashClient);
            } catch (Throwable th) {
                a(th);
            }
            if (z3) {
                try {
                    a();
                } catch (Throwable th2) {
                    a(th2);
                }
            }
            try {
                b.J();
                h.a();
                d.a();
                com.uc.crashsdk.a.g.j();
            } catch (Throwable th3) {
                com.uc.crashsdk.a.g.a(th3);
            }
            try {
                if (!b.a(a4)) {
                    a.d("crashsdk", "registerLifecycleCallbacks failed!");
                }
            } catch (Throwable th4) {
                com.uc.crashsdk.a.g.a(th4);
            }
            try {
                com.uc.crashsdk.a.n();
                e.z();
                e.A();
            } catch (Throwable th5) {
                com.uc.crashsdk.a.g.a(th5);
            }
            try {
                if (g.r() && b.C() && !this.f60302b) {
                    e.F();
                    this.f60302b = true;
                }
            } catch (Throwable th6) {
                com.uc.crashsdk.a.g.b(th6);
            }
        } else {
            a.d("crashsdk", "VersionInfo and CustomInfo can not be null!");
            throw null;
        }
    }

    private static void a() {
        if (b.f60226a) {
            a.b("Has enabled java log!");
            return;
        }
        e.r();
        e.n();
        b.f60226a = true;
    }

    private static void b() {
        synchronized (b.f60230e) {
            if (b.f60232g && b.f60231f) {
                if (b.f60227b) {
                    a.b("Has enabled native log!");
                    return;
                }
                c();
                e.C();
                b.f60227b = true;
                JNIBridge.cmd(6);
                g.d();
            }
        }
    }

    private static void c() {
        if (b.f60229d) {
            return;
        }
        g.b();
        JNIBridge.cmd(5);
        g.c();
        b.f60229d = true;
    }

    public static synchronized CrashApi createInstance(Context context, CustomInfo customInfo, VersionInfo versionInfo, ICrashClient iCrashClient, boolean z3, boolean z4, boolean z5) {
        CrashApi crashApi;
        synchronized (CrashApi.class) {
            if (f60299a == null) {
                f60299a = new CrashApi(context, customInfo, versionInfo, iCrashClient, z3, z4, z5);
            }
            crashApi = f60299a;
        }
        return crashApi;
    }

    public static CrashApi createInstanceEx(Context context, String str, boolean z3) {
        return createInstanceEx(context, str, z3, null);
    }

    public static CrashApi getInstance() {
        return f60299a;
    }

    public int addCachedInfo(String str, String str2) {
        if (str != null && str2 != null) {
            return com.uc.crashsdk.a.b(str, str2);
        }
        throw null;
    }

    public int addDumpFile(DumpFileInfo dumpFileInfo) {
        String str;
        Objects.requireNonNull(dumpFileInfo);
        String str2 = dumpFileInfo.mCategory;
        if (str2 != null && (str = dumpFileInfo.mFileTobeDump) != null) {
            int i2 = dumpFileInfo.mLogType;
            if ((1048849 & i2) == 0) {
                return 0;
            }
            return com.uc.crashsdk.a.a(str2, str, dumpFileInfo.mIsEncrypted, dumpFileInfo.mWriteCategory, i2, dumpFileInfo.mDeleteAfterDump);
        }
        throw null;
    }

    public void addHeaderInfo(String str, String str2) {
        Objects.requireNonNull(str);
        com.uc.crashsdk.a.a(str, str2);
    }

    public boolean addStatInfo(String str, String str2) {
        if (a("addStatInfo")) {
            return false;
        }
        if (!com.uc.crashsdk.a.g.a(str)) {
            if (str.length() <= 24) {
                if (str2 != null && str2.length() > 512) {
                    str2 = str2.substring(0, 512);
                }
                return h.a(str, str2);
            }
            throw new IllegalArgumentException("key is too long!");
        }
        throw null;
    }

    public void crashSoLoaded() {
        if (a("crashSoLoaded")) {
            return;
        }
        b.f60231f = true;
        b();
        synchronized (b.f60230e) {
            if (b.f60233h && b.f60231f && !b.f60228c) {
                if (!b.f60229d) {
                    c();
                    g.d();
                }
                e.w();
                b.f60228c = true;
            }
        }
        com.uc.crashsdk.a.n();
        e.l();
    }

    public int createCachedInfo(String str, int i2, int i4) {
        Objects.requireNonNull(str);
        if (i2 > 0) {
            if ((1048849 & i4) == 0) {
                return 0;
            }
            return com.uc.crashsdk.a.a(str, i2, i4);
        }
        throw new IllegalArgumentException("capacity must > 0!");
    }

    public void disableLog(int i2) {
        synchronized (b.f60230e) {
            b.b(i2);
            if (LogType.isForJava(i2) && b.f60226a) {
                e.s();
                b.f60226a = false;
            }
            if (LogType.isForNative(i2)) {
                if (b.f60227b) {
                    JNIBridge.cmd(9);
                    b.f60227b = false;
                } else {
                    b.f60232g = false;
                }
            }
            if (LogType.isForANR(i2)) {
                b.a(false);
            }
            if (LogType.isForUnexp(i2)) {
                if (b.f60228c) {
                    if (e.y()) {
                        b.f60228c = false;
                    }
                } else {
                    b.f60233h = false;
                }
            }
        }
    }

    public boolean generateCustomLog(CustomLogInfo customLogInfo) {
        String str;
        StringBuilder sb;
        Objects.requireNonNull(customLogInfo);
        if (customLogInfo.mData != null && (str = customLogInfo.mLogType) != null) {
            if (!str.contains("_") && !customLogInfo.mLogType.contains(" ")) {
                ArrayList<Integer> arrayList = customLogInfo.mDumpTids;
                if (arrayList == null || arrayList.size() <= 0) {
                    sb = null;
                } else {
                    sb = new StringBuilder();
                    Iterator<Integer> it2 = customLogInfo.mDumpTids.iterator();
                    while (it2.hasNext()) {
                        sb.append(it2.next().intValue());
                        sb.append(" ");
                    }
                }
                long j4 = customLogInfo.mAddHeader ? 1L : 0L;
                if (customLogInfo.mAddFooter) {
                    j4 |= 2;
                }
                if (customLogInfo.mAddLogcat) {
                    j4 |= 4;
                }
                if (customLogInfo.mAddThreadsDump) {
                    j4 |= 8;
                }
                if (customLogInfo.mAddBuildId) {
                    j4 |= 16;
                }
                if (customLogInfo.mUploadNow) {
                    j4 |= 32;
                }
                return e.a(customLogInfo.mData, customLogInfo.mLogType, j4, customLogInfo.mDumpFiles, customLogInfo.mCallbacks, customLogInfo.mCachedInfos, sb != null ? sb.toString() : null);
            }
            throw new IllegalArgumentException("mLogType can not contain char '_' and ' '");
        }
        throw new NullPointerException("mData or mLogType is null!");
    }

    public boolean generateTraces(String str, long j4) {
        if (a("generateTraces")) {
            return false;
        }
        if (b.f60229d) {
            return JNIBridge.nativeCmd(12, j4, str, null) == 1;
        }
        a.d("crashsdk", "Crash so is not loaded!");
        return false;
    }

    public String getCrashLogUploadUrl() {
        if (a("getCrashLogUploadUrl")) {
            return null;
        }
        return e.k();
    }

    public ParcelFileDescriptor getHostFd() {
        return e.D();
    }

    public ParcelFileDescriptor getIsolatedHostFd() {
        return e.D();
    }

    public int getLastExitType() {
        if (a("getLastExitType")) {
            return 1;
        }
        return b.F();
    }

    public int getLastExitTypeEx() {
        if (a("getLastExitTypeEx")) {
            return 1;
        }
        return b.G();
    }

    public Throwable getUncaughtException() {
        return e.u();
    }

    public int getUnexpReason() {
        if (a("getUnexpReason")) {
            return 100;
        }
        return e.v();
    }

    public void onExit() {
        b.t();
    }

    public boolean registerCallback(int i2, ValueCallback<Bundle> valueCallback) {
        Objects.requireNonNull(valueCallback);
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 == 4) {
                        return com.uc.crashsdk.d.b(valueCallback);
                    }
                    throw new IllegalArgumentException("Unknown event type: " + i2);
                }
                return com.uc.crashsdk.d.d(valueCallback);
            }
            return com.uc.crashsdk.d.c(valueCallback);
        }
        return com.uc.crashsdk.d.a(valueCallback);
    }

    public int registerInfoCallback(String str, int i2) {
        Objects.requireNonNull(str);
        if ((1048849 & i2) == 0) {
            return 0;
        }
        return com.uc.crashsdk.a.a(str, i2, null, 0L, 0);
    }

    public int registerThread(int i2, String str) {
        return com.uc.crashsdk.a.a(i2, str);
    }

    public int reportCrashStats(boolean z3) {
        if (a("reportCrashStats")) {
            return 0;
        }
        return e.b(z3, true);
    }

    public int resetCrashStats(boolean z3) {
        if (a("resetCrashStats")) {
            return 0;
        }
        return e.e(z3);
    }

    public void setForeground(boolean z3) {
        b.b(z3);
    }

    public boolean setHostFd(ParcelFileDescriptor parcelFileDescriptor) {
        return e.a(parcelFileDescriptor);
    }

    public boolean setIsolatedHostFd(ParcelFileDescriptor parcelFileDescriptor) {
        return e.a(parcelFileDescriptor);
    }

    public void setNewInstall() {
        if (a("setNewInstall")) {
            return;
        }
        b.s();
    }

    public int updateCustomInfo(CustomInfo customInfo) {
        Objects.requireNonNull(customInfo);
        return g.b(customInfo);
    }

    public boolean updateUnexpInfo() {
        if (a("updateUnexpInfo")) {
            return false;
        }
        return com.uc.crashsdk.a.a(true);
    }

    public void updateVersionInfo(VersionInfo versionInfo) {
        Objects.requireNonNull(versionInfo);
        g.a(versionInfo);
    }

    public void uploadCrashLogs() {
        if (a("uploadCrashLogs")) {
            return;
        }
        e.a(false, true);
    }

    public static CrashApi createInstanceEx(Context context, String str, boolean z3, Bundle bundle) {
        return createInstanceEx(context, str, z3, bundle, null);
    }

    public static CrashApi createInstanceEx(Context context, String str, boolean z3, Bundle bundle, ICrashClient iCrashClient) {
        CrashApi crashApi = f60299a;
        if (crashApi != null) {
            return crashApi;
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        f60300c = bundle.getBoolean("useApplicationContext", true);
        Context a4 = a(context);
        b(a4);
        CustomInfo customInfo = new CustomInfo(str);
        customInfo.mEnableStatReport = true;
        customInfo.mZipLog = true;
        customInfo.mPrintStackInfos = z3;
        CustomInfo a5 = g.a(customInfo, bundle);
        VersionInfo a6 = g.a(bundle);
        boolean z4 = bundle.getBoolean(UMCrash.KEY_ENABLE_CRASH_JAVA, true);
        boolean z5 = bundle.getBoolean(UMCrash.KEY_ENABLE_CRASH_NATIVE, true);
        boolean z6 = bundle.getBoolean(UMCrash.KEY_ENABLE_CRASH_UNEXP, b.C());
        boolean z7 = bundle.getBoolean(UMCrash.KEY_ENABLE_ANR, true);
        CrashApi createInstance = createInstance(a4, a5, a6, iCrashClient, z4, z5, z6);
        b.a(z7);
        if (z5 || z6) {
            if (e.d("libcrashsdk.so")) {
                createInstance.crashSoLoaded();
            } else {
                a.d("crashsdk", "load libcrashsdk.so failed!");
            }
        }
        int i2 = bundle.getInt("uploadLogDelaySeconds", 15);
        if (i2 >= 0 && b.C()) {
            e.b(i2);
        }
        return createInstance;
    }

    public int registerInfoCallback(String str, int i2, Callable<String> callable) {
        if (str == null || callable == null) {
            throw null;
        }
        if ((1048849 & i2) == 0) {
            return 0;
        }
        return com.uc.crashsdk.a.a(str, i2, callable, 0L, 0);
    }

    public int updateCustomInfo(Bundle bundle) {
        Objects.requireNonNull(bundle);
        return updateCustomInfo(g.a((CustomInfo) null, bundle));
    }

    public void updateVersionInfo(Bundle bundle) {
        Objects.requireNonNull(bundle);
        updateVersionInfo(g.a(bundle));
    }

    private static void a(Context context, CustomInfo customInfo, VersionInfo versionInfo, ICrashClient iCrashClient) {
        com.uc.crashsdk.d.a(iCrashClient);
        g.a(customInfo, versionInfo);
        if (b.I()) {
            return;
        }
        e.o();
        e.a(context);
        e.b(context);
    }

    public int addDumpFile(String str, String str2, int i2, Bundle bundle) {
        DumpFileInfo dumpFileInfo = new DumpFileInfo(str, str2, i2);
        if (bundle != null) {
            dumpFileInfo.mIsEncrypted = bundle.getBoolean("mIsEncrypted", dumpFileInfo.mIsEncrypted);
            dumpFileInfo.mWriteCategory = bundle.getBoolean("mWriteCategory", dumpFileInfo.mWriteCategory);
            dumpFileInfo.mDeleteAfterDump = bundle.getBoolean("mDeleteAfterDump", dumpFileInfo.mDeleteAfterDump);
        }
        return addDumpFile(dumpFileInfo);
    }

    private static Context a(Context context) {
        if (context != null) {
            if (!f60300c || (context instanceof Application) || ((context = context.getApplicationContext()) != null && (context instanceof Application))) {
                return context;
            }
            a.d("crashsdk", "Can not get Application context from given context!");
            throw new IllegalArgumentException("Can not get Application context from given context!");
        }
        a.d("crashsdk", "context can not be null!");
        throw null;
    }

    private static void b(Context context) {
        try {
            if (f60301d) {
                return;
            }
            com.uc.crashsdk.a.g.a(context);
            com.uc.crashsdk.a.f60146a = context.getPackageName();
            f60301d = true;
        } catch (Throwable th) {
            a(th);
        }
    }

    private static void a(Throwable th) {
        new e().a(Thread.currentThread(), th, true);
    }

    public boolean generateCustomLog(StringBuffer stringBuffer, String str, Bundle bundle) {
        CustomLogInfo customLogInfo = new CustomLogInfo(stringBuffer, str);
        if (bundle != null) {
            customLogInfo.mAddHeader = bundle.getBoolean("mAddHeader", customLogInfo.mAddHeader);
            customLogInfo.mAddFooter = bundle.getBoolean("mAddFooter", customLogInfo.mAddFooter);
            customLogInfo.mAddLogcat = bundle.getBoolean("mAddLogcat", customLogInfo.mAddLogcat);
            customLogInfo.mUploadNow = bundle.getBoolean("mUploadNow", customLogInfo.mUploadNow);
            customLogInfo.mAddThreadsDump = bundle.getBoolean("mAddThreadsDump", customLogInfo.mAddThreadsDump);
            customLogInfo.mAddBuildId = bundle.getBoolean("mAddBuildId", customLogInfo.mAddBuildId);
            customLogInfo.mDumpFiles = bundle.getStringArrayList("mDumpFiles");
            customLogInfo.mCallbacks = bundle.getStringArrayList("mCallbacks");
            customLogInfo.mCachedInfos = bundle.getStringArrayList("mCachedInfos");
            customLogInfo.mDumpTids = bundle.getIntegerArrayList("mDumpTids");
        }
        return generateCustomLog(customLogInfo);
    }

    private static boolean a(String str) {
        if (b.I()) {
            a.d("crashsdk", "Can not call '" + str + "' in isolated process!");
            return true;
        }
        return false;
    }
}
