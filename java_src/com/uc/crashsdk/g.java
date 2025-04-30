package com.uc.crashsdk;

import android.os.Build;
import android.os.Bundle;
import com.android.dex.DexFormat;
import com.uc.crashsdk.export.CustomInfo;
import com.uc.crashsdk.export.VersionInfo;
import java.io.File;
import java.lang.reflect.Field;
import java.util.zip.ZipFile;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static RuntimeException f60309a = null;

    /* renamed from: b  reason: collision with root package name */
    public static RuntimeException f60310b = null;

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f60311c = true;

    /* renamed from: d  reason: collision with root package name */
    private static CustomInfo f60312d;

    /* renamed from: e  reason: collision with root package name */
    private static VersionInfo f60313e;

    /* renamed from: g  reason: collision with root package name */
    private static String f60315g;

    /* renamed from: h  reason: collision with root package name */
    private static String f60316h;

    /* renamed from: i  reason: collision with root package name */
    private static String f60317i;

    /* renamed from: j  reason: collision with root package name */
    private static String f60318j;

    /* renamed from: f  reason: collision with root package name */
    private static final Object f60314f = new Object();

    /* renamed from: k  reason: collision with root package name */
    private static final Object f60319k = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long A() {
        return f60312d.mMaxUploadBytesPerDay;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int B() {
        return f60312d.mMaxUploadBuiltinLogCountPerDay;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int C() {
        return f60312d.mMaxUploadCustomLogCountPerDay;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int D() {
        return f60312d.mMaxCustomLogCountPerTypePerDay;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int E() {
        return f60312d.mInfoUpdateInterval;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int F() {
        return f60312d.mInfoSaveFrequency;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int G() {
        return f60312d.mReservedJavaFileHandleCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int H() {
        return f60312d.mFdDumpMinLimit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int I() {
        return f60312d.mThreadsDumpMinLimit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean J() {
        return f60312d.mAutoDetectLifeCycle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean K() {
        return f60312d.mMonitorBattery;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int L() {
        return f60312d.mAnrTraceStrategy;
    }

    public static boolean M() {
        CustomInfo customInfo = f60312d;
        return customInfo == null || customInfo.mDebug;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean N() {
        CustomInfo customInfo = f60312d;
        return customInfo == null || customInfo.mPrintStackInfos;
    }

    public static boolean O() {
        return f60312d.mEnableStatReport;
    }

    public static boolean P() {
        return f60312d.mIsInternational;
    }

    public static boolean Q() {
        return f60312d.mAddPvForNewDay;
    }

    public static String R() {
        if (com.uc.crashsdk.a.g.a(f60313e.mVersion)) {
            return a.a();
        }
        return a(f60313e.mVersion);
    }

    public static String S() {
        return com.uc.crashsdk.a.g.a(f60313e.mSubVersion) ? "release" : f60313e.mSubVersion;
    }

    public static String T() {
        if (com.uc.crashsdk.a.g.a(f60313e.mBuildId)) {
            return X();
        }
        return a(f60313e.mBuildId);
    }

    public static String U() {
        if (f60316h == null) {
            f60316h = com.uc.crashsdk.a.g.b() + File.separatorChar + f60312d.mTagFilesFolderName + File.separatorChar;
        }
        return f60316h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String V() {
        if (f60317i == null) {
            f60317i = com.uc.crashsdk.a.g.b() + File.separatorChar + f60312d.mCrashLogsFolderName + File.separatorChar;
        }
        return f60317i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String W() {
        if (f60318j == null) {
            if (!com.uc.crashsdk.a.g.a(f60312d.mLogsBackupPathName)) {
                String trim = f60312d.mLogsBackupPathName.trim();
                String str = File.separator;
                if (!trim.endsWith(str)) {
                    trim = trim + str;
                }
                f60318j = trim;
            } else {
                f60318j = (com.uc.crashsdk.a.g.b() + File.separatorChar + "msdb" + File.separatorChar) + File.separatorChar + f60312d.mCrashLogsFolderName + File.separatorChar;
            }
        }
        return f60318j;
    }

    private static String X() {
        ZipFile zipFile;
        Throwable th;
        String str = f60315g;
        if (str != null) {
            return str;
        }
        try {
            try {
                zipFile = new ZipFile(com.uc.crashsdk.a.g.c());
                try {
                    f60315g = Long.toHexString(zipFile.getEntry(DexFormat.DEX_IN_JAR_NAME).getCrc());
                    com.uc.crashsdk.a.a.a("crashsdk", "version unique build id: " + f60315g);
                    zipFile.close();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        f60315g = "";
                        com.uc.crashsdk.a.g.a(th);
                        if (zipFile != null) {
                            zipFile.close();
                        }
                        return f60315g;
                    } catch (Throwable th3) {
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (Throwable unused) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable th4) {
            zipFile = null;
            th = th4;
        }
        return f60315g;
    }

    private static void Y() {
        if (b.f60229d) {
            JNIBridge.nativeSet(24, 1L, a.f60147b, null);
        }
    }

    public static void a(CustomInfo customInfo, VersionInfo versionInfo) {
        CustomInfo customInfo2 = new CustomInfo(customInfo);
        f60312d = customInfo2;
        c(customInfo2);
        if (!f60312d.mZipLog) {
            f60309a = new RuntimeException("initialize set mZipLog to false, info.mZipLog: " + customInfo.mZipLog);
        }
        if (f60312d.mEncryptLog) {
            f60310b = new RuntimeException("initialize set mEncryptLog to true, info.mEncryptLog: " + customInfo.mEncryptLog);
        }
        f60313e = new VersionInfo(versionInfo);
        if (b.I()) {
            return;
        }
        try {
            a();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void b() {
        JNIBridge.set(103, com.uc.crashsdk.a.g.b());
        JNIBridge.set(104, f60312d.mTagFilesFolderName);
        JNIBridge.set(105, f60312d.mCrashLogsFolderName);
        JNIBridge.set(106, W());
        JNIBridge.set(107, e.h());
        JNIBridge.set(108, b.a());
        JNIBridge.set(109, R());
        JNIBridge.set(110, S());
        JNIBridge.set(111, T());
        JNIBridge.set(112, "210105150455");
        JNIBridge.set(116, Build.MODEL);
        JNIBridge.set(117, Build.VERSION.RELEASE);
        JNIBridge.set(118, e.p());
        JNIBridge.set(5, f60312d.mCallNativeDefaultHandler);
        JNIBridge.set(6, f60312d.mDumpUserSolibBuildId);
        JNIBridge.set(7, f60312d.mReservedNativeMemoryBytes);
        JNIBridge.set(100, f60312d.mNativeCrashLogFileName);
        JNIBridge.set(101, f60312d.mUnexpCrashLogFileName);
        JNIBridge.set(102, f60312d.mAppId);
    }

    private static void c(CustomInfo customInfo) {
        if (customInfo.mZippedLogExtension == null) {
            customInfo.mZippedLogExtension = "";
        }
        if (!customInfo.mZippedLogExtension.equals(".tmp")) {
            if (customInfo.mOmitJavaCrash) {
                customInfo.mCallJavaDefaultHandler = false;
            }
            if (customInfo.mOmitNativeCrash) {
                customInfo.mCallNativeDefaultHandler = false;
            }
            long b4 = e.b();
            if (b4 >= 1) {
                customInfo.mMaxBuiltinLogFilesCount = 200;
                customInfo.mMaxCustomLogFilesCount = 100;
                customInfo.mMaxUploadBytesPerDay = 268435456L;
                customInfo.mMaxUploadBuiltinLogCountPerDay = 2000;
                customInfo.mMaxUploadCustomLogCountPerDay = 2000;
                customInfo.mMaxCustomLogCountPerTypePerDay = 100;
                customInfo.mMaxAnrLogCountPerProcess = 100;
                customInfo.mAnrTraceStrategy = 2;
                if (b4 >= 2) {
                    customInfo.mSyncUploadSetupCrashLogs = true;
                    customInfo.mSyncUploadLogs = true;
                    if (b4 >= 3) {
                        customInfo.mBackupLogs = true;
                        customInfo.mPrintStackInfos = true;
                        customInfo.mDebug = true;
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("mZippedLogExtension can not be '.tmp'!");
    }

    public static void d() {
        JNIBridge.set(23, f60312d.mIsInternational);
        if (b.E()) {
            JNIBridge.set(34, true);
        }
        if (e.i()) {
            JNIBridge.set(1, true);
        }
        JNIBridge.set(10, f60312d.mFdDumpMinLimit);
        JNIBridge.nativeCmd(3, f60312d.mReservedNativeFileHandleCount, null, null);
        JNIBridge.nativeSetForeground(b.y());
        JNIBridge.set(2, b.C());
        a.e();
        a.g();
        a.i();
        a.k();
        JNIBridge.set(113, a.f60146a);
        JNIBridge.cmd(1);
        JNIBridge.set(22, f60312d.mThreadsDumpMinLimit);
        JNIBridge.set(122, a.a());
        JNIBridge.set(33, a.c());
        Y();
        b.H();
        b.A();
        com.uc.crashsdk.a.g.k();
    }

    public static String e() {
        return f60312d.mAppId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f() {
        if (com.uc.crashsdk.a.g.b(f60312d.mJavaCrashLogFileName) || com.uc.crashsdk.a.g.b(f60312d.mNativeCrashLogFileName)) {
            return true;
        }
        return com.uc.crashsdk.a.g.b(f60312d.mUnexpCrashLogFileName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g() {
        return f60312d.mJavaCrashLogFileName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h() {
        return f60312d.mCrashRestartInterval;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i() {
        return f60312d.mCallJavaDefaultHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j() {
        return f60312d.mDumpHprofDataForJavaOOM;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean k() {
        return f60312d.mRenameFileToDefaultName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l() {
        return f60312d.mMaxBuiltinLogFilesCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m() {
        return f60312d.mMaxCustomLogFilesCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n() {
        return f60312d.mMaxJavaLogcatLineCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o() {
        return f60312d.mUnexpDelayMillSeconds;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p() {
        return f60312d.mUnexpSubTypes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean q() {
        return f60312d.mBackupLogs;
    }

    public static boolean r() {
        return f60312d.mSyncUploadSetupCrashLogs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean s() {
        return f60312d.mSyncUploadLogs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean t() {
        return f60312d.mOmitJavaCrash;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean u() {
        return f60312d.mAutoDeleteOldVersionStats;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean v() {
        return f60312d.mZipLog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String w() {
        return f60312d.mZippedLogExtension;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean x() {
        return f60312d.mEncryptLog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y() {
        return f60312d.mLogMaxBytesLimit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int z() {
        return f60312d.mLogMaxUploadBytesLimit;
    }

    public static void a(CustomInfo customInfo) {
        boolean z3 = f60311c;
        if (!z3 && customInfo.mTagFilesFolderName == null) {
            throw new AssertionError();
        }
        if (!z3 && customInfo.mCrashLogsFolderName == null) {
            throw new AssertionError();
        }
        if (customInfo.mTagFilesFolderName.equals(customInfo.mCrashLogsFolderName)) {
            throw new IllegalArgumentException("mTagFilesFolderName and mCrashLogsFolderName can not be set to the same!");
        }
    }

    public static void a(VersionInfo versionInfo) {
        synchronized (f60314f) {
            f60313e = new VersionInfo(versionInfo);
            e.c();
            if (b.f60229d) {
                JNIBridge.set(109, R());
                JNIBridge.set(110, S());
                JNIBridge.set(111, T());
                JNIBridge.set(112, "210105150455");
                JNIBridge.cmd(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        b.v();
        b.u();
        if (f60312d.mBackupLogs) {
            File file = new File(W());
            if (file.exists()) {
                return;
            }
            file.mkdirs();
        }
    }

    public static int b(CustomInfo customInfo) {
        int i2;
        int i4;
        boolean z3;
        boolean z4;
        synchronized (f60319k) {
            i2 = 0;
            if (customInfo != null) {
                c(customInfo);
                if (f60312d == null) {
                    f60312d = new CustomInfo();
                }
                CustomInfo customInfo2 = f60312d;
                boolean z5 = true;
                if (a(customInfo.mAppId, customInfo2.mAppId)) {
                    i4 = 0;
                    z3 = false;
                } else {
                    String str = customInfo.mAppId;
                    customInfo2.mAppId = str;
                    if (b.f60229d) {
                        JNIBridge.set(102, str);
                    }
                    i4 = 1;
                    z3 = true;
                }
                if (!a(customInfo.mJavaCrashLogFileName, customInfo2.mJavaCrashLogFileName)) {
                    customInfo2.mJavaCrashLogFileName = customInfo.mJavaCrashLogFileName;
                    i4++;
                }
                if (!a(customInfo.mNativeCrashLogFileName, customInfo2.mNativeCrashLogFileName)) {
                    String str2 = customInfo.mNativeCrashLogFileName;
                    customInfo2.mNativeCrashLogFileName = str2;
                    if (b.f60229d) {
                        JNIBridge.set(100, str2);
                    }
                    i4++;
                    z3 = true;
                }
                if (!a(customInfo.mUnexpCrashLogFileName, customInfo2.mUnexpCrashLogFileName)) {
                    String str3 = customInfo.mUnexpCrashLogFileName;
                    customInfo2.mUnexpCrashLogFileName = str3;
                    if (b.f60229d) {
                        JNIBridge.set(101, str3);
                    }
                    i4++;
                    z3 = true;
                }
                if (z3) {
                    e.c();
                    if (b.f60229d) {
                        JNIBridge.cmd(2);
                    }
                }
                boolean z6 = customInfo2.mPrintStackInfos;
                boolean z7 = customInfo.mPrintStackInfos;
                if (z6 != z7) {
                    customInfo2.mPrintStackInfos = z7;
                    if (b.f60229d) {
                        JNIBridge.set(11, z7);
                    }
                    i4++;
                }
                boolean z8 = customInfo2.mDebug;
                boolean z9 = customInfo.mDebug;
                if (z8 != z9) {
                    customInfo2.mDebug = z9;
                    if (b.f60229d) {
                        JNIBridge.set(18, z9);
                    }
                    i4++;
                }
                boolean z10 = customInfo2.mBackupLogs;
                boolean z11 = customInfo.mBackupLogs;
                if (z10 != z11) {
                    customInfo2.mBackupLogs = z11;
                    if (b.f60229d) {
                        JNIBridge.set(12, z11);
                    }
                    i4++;
                }
                boolean z12 = customInfo2.mOmitNativeCrash;
                boolean z13 = customInfo.mOmitNativeCrash;
                if (z12 != z13) {
                    customInfo2.mOmitNativeCrash = z13;
                    if (b.f60229d) {
                        JNIBridge.set(21, z13);
                    }
                    i4++;
                }
                int i5 = customInfo2.mCrashRestartInterval;
                int i6 = customInfo.mCrashRestartInterval;
                if (i5 != i6) {
                    customInfo2.mCrashRestartInterval = i6;
                    if (b.f60229d) {
                        JNIBridge.set(13, i6);
                    }
                    if (customInfo2.mCrashRestartInterval >= 0) {
                        b.J();
                    }
                    i4++;
                }
                int i7 = customInfo2.mMaxBuiltinLogFilesCount;
                int i8 = customInfo.mMaxBuiltinLogFilesCount;
                if (i7 != i8) {
                    customInfo2.mMaxBuiltinLogFilesCount = i8;
                    if (b.f60229d) {
                        JNIBridge.set(14, i8);
                    }
                    i4++;
                }
                int i9 = customInfo2.mMaxNativeLogcatLineCount;
                int i10 = customInfo.mMaxNativeLogcatLineCount;
                if (i9 != i10) {
                    customInfo2.mMaxNativeLogcatLineCount = i10;
                    if (b.f60229d) {
                        JNIBridge.set(15, i10);
                    }
                    i4++;
                }
                int i11 = customInfo2.mMaxJavaLogcatLineCount;
                int i12 = customInfo.mMaxJavaLogcatLineCount;
                if (i11 != i12) {
                    customInfo2.mMaxJavaLogcatLineCount = i12;
                    i4++;
                }
                int i13 = customInfo2.mMaxUnexpLogcatLineCount;
                int i14 = customInfo.mMaxUnexpLogcatLineCount;
                if (i13 != i14) {
                    customInfo2.mMaxUnexpLogcatLineCount = i14;
                    if (b.f60229d) {
                        JNIBridge.set(16, i14);
                    }
                    i4++;
                }
                int i15 = customInfo2.mMaxAnrLogcatLineCount;
                int i16 = customInfo.mMaxAnrLogcatLineCount;
                if (i15 != i16) {
                    customInfo2.mMaxAnrLogcatLineCount = i16;
                    if (b.f60229d) {
                        JNIBridge.set(31, i16);
                    }
                    i4++;
                }
                boolean z14 = customInfo2.mZipLog;
                boolean z15 = customInfo.mZipLog;
                if (z14 != z15) {
                    customInfo2.mZipLog = z15;
                    if (!z15) {
                        com.uc.crashsdk.a.a.d("DEBUG", "updateCustomInfoImpl set mZipLog to false");
                        f60309a = new RuntimeException("updateCustomInfoImpl set mZipLog to false");
                    }
                    i4++;
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (a(customInfo.mZippedLogExtension, customInfo2.mZippedLogExtension)) {
                    z5 = z4;
                } else {
                    customInfo2.mZippedLogExtension = customInfo.mZippedLogExtension;
                    i4++;
                }
                if (z5 && b.f60229d) {
                    JNIBridge.nativeSet(3, customInfo2.mZipLog ? 1L : 0L, customInfo2.mZippedLogExtension, null);
                }
                int i17 = customInfo2.mLogMaxBytesLimit;
                int i18 = customInfo.mLogMaxBytesLimit;
                if (i17 != i18) {
                    customInfo2.mLogMaxBytesLimit = i18;
                    if (b.f60229d) {
                        JNIBridge.set(4, i18);
                    }
                    i4++;
                }
                boolean z16 = customInfo2.mEncryptLog;
                boolean z17 = customInfo.mEncryptLog;
                if (z16 != z17) {
                    customInfo2.mEncryptLog = z17;
                    if (z17) {
                        com.uc.crashsdk.a.a.d("DEBUG", "updateCustomInfoImpl set mEncryptLog to true");
                        f60310b = new RuntimeException("updateCustomInfoImpl set mEncryptLog to true");
                    }
                    i4++;
                }
                boolean z18 = customInfo2.mSyncUploadSetupCrashLogs;
                boolean z19 = customInfo.mSyncUploadSetupCrashLogs;
                if (z18 != z19) {
                    customInfo2.mSyncUploadSetupCrashLogs = z19;
                    i4++;
                }
                boolean z20 = customInfo2.mSyncUploadLogs;
                boolean z21 = customInfo.mSyncUploadLogs;
                if (z20 != z21) {
                    customInfo2.mSyncUploadLogs = z21;
                    i4++;
                }
                int i19 = customInfo2.mMaxCustomLogFilesCount;
                int i20 = customInfo.mMaxCustomLogFilesCount;
                if (i19 != i20) {
                    customInfo2.mMaxCustomLogFilesCount = i20;
                    i4++;
                }
                boolean z22 = customInfo2.mOmitJavaCrash;
                boolean z23 = customInfo.mOmitJavaCrash;
                if (z22 != z23) {
                    customInfo2.mOmitJavaCrash = z23;
                    i4++;
                }
                int i21 = customInfo2.mLogMaxUploadBytesLimit;
                int i22 = customInfo.mLogMaxUploadBytesLimit;
                if (i21 != i22) {
                    customInfo2.mLogMaxUploadBytesLimit = i22;
                    i4++;
                }
                long j4 = customInfo2.mMaxUploadBytesPerDay;
                long j5 = customInfo.mMaxUploadBytesPerDay;
                if (j4 != j5) {
                    customInfo2.mMaxUploadBytesPerDay = j5;
                    i4++;
                }
                int i23 = customInfo2.mMaxUploadBuiltinLogCountPerDay;
                int i24 = customInfo.mMaxUploadBuiltinLogCountPerDay;
                if (i23 != i24) {
                    customInfo2.mMaxUploadBuiltinLogCountPerDay = i24;
                    i4++;
                }
                int i25 = customInfo2.mMaxUploadCustomLogCountPerDay;
                int i26 = customInfo.mMaxUploadCustomLogCountPerDay;
                if (i25 != i26) {
                    customInfo2.mMaxUploadCustomLogCountPerDay = i26;
                    i4++;
                }
                int i27 = customInfo2.mMaxCustomLogCountPerTypePerDay;
                int i28 = customInfo.mMaxCustomLogCountPerTypePerDay;
                if (i27 != i28) {
                    customInfo2.mMaxCustomLogCountPerTypePerDay = i28;
                    i4++;
                }
                int i29 = customInfo2.mMaxAnrLogCountPerProcess;
                int i30 = customInfo.mMaxAnrLogCountPerProcess;
                if (i29 != i30) {
                    customInfo2.mMaxAnrLogCountPerProcess = i30;
                    if (b.f60229d) {
                        JNIBridge.set(32, f60312d.mMaxAnrLogCountPerProcess);
                    }
                    i4++;
                }
                boolean z24 = customInfo2.mCallJavaDefaultHandler;
                boolean z25 = customInfo.mCallJavaDefaultHandler;
                if (z24 != z25) {
                    customInfo2.mCallJavaDefaultHandler = z25;
                    i4++;
                }
                boolean z26 = customInfo2.mCallNativeDefaultHandler;
                boolean z27 = customInfo.mCallNativeDefaultHandler;
                if (z26 != z27) {
                    customInfo2.mCallNativeDefaultHandler = z27;
                    i4++;
                    if (b.f60229d) {
                        JNIBridge.set(5, f60312d.mCallNativeDefaultHandler);
                    }
                }
                boolean z28 = customInfo2.mDumpUserSolibBuildId;
                boolean z29 = customInfo.mDumpUserSolibBuildId;
                if (z28 != z29) {
                    customInfo2.mDumpUserSolibBuildId = z29;
                    i4++;
                    if (b.f60229d) {
                        JNIBridge.set(6, f60312d.mDumpUserSolibBuildId);
                    }
                }
                boolean z30 = customInfo2.mDumpHprofDataForJavaOOM;
                boolean z31 = customInfo.mDumpHprofDataForJavaOOM;
                if (z30 != z31) {
                    customInfo2.mDumpHprofDataForJavaOOM = z31;
                    i4++;
                }
                boolean z32 = customInfo2.mRenameFileToDefaultName;
                boolean z33 = customInfo.mRenameFileToDefaultName;
                if (z32 != z33) {
                    customInfo2.mRenameFileToDefaultName = z33;
                    i4++;
                }
                boolean z34 = customInfo2.mAutoDeleteOldVersionStats;
                boolean z35 = customInfo.mAutoDeleteOldVersionStats;
                if (z34 != z35) {
                    customInfo2.mAutoDeleteOldVersionStats = z35;
                    i4++;
                }
                int i31 = customInfo2.mFdDumpMinLimit;
                int i32 = customInfo.mFdDumpMinLimit;
                if (i31 != i32) {
                    customInfo2.mFdDumpMinLimit = i32;
                    if (b.f60229d) {
                        JNIBridge.set(10, i32);
                    }
                    i4++;
                }
                int i33 = customInfo2.mThreadsDumpMinLimit;
                int i34 = customInfo.mThreadsDumpMinLimit;
                if (i33 != i34) {
                    customInfo2.mThreadsDumpMinLimit = i34;
                    if (b.f60229d) {
                        JNIBridge.set(22, i34);
                    }
                    i4++;
                }
                int i35 = customInfo2.mInfoUpdateInterval;
                int i36 = customInfo.mInfoUpdateInterval;
                if (i35 != i36) {
                    if (i35 <= 0 && i36 > 0) {
                        a.a(false);
                    }
                    customInfo2.mInfoUpdateInterval = customInfo.mInfoUpdateInterval;
                    i4++;
                }
                int i37 = customInfo2.mInfoSaveFrequency;
                int i38 = customInfo.mInfoSaveFrequency;
                if (i37 != i38) {
                    customInfo2.mInfoSaveFrequency = i38;
                    i4++;
                }
                long j6 = customInfo2.mDisableBackgroundSignals;
                long j7 = customInfo.mDisableBackgroundSignals;
                if (j6 != j7) {
                    customInfo2.mDisableBackgroundSignals = j7;
                    if (b.f60229d) {
                        JNIBridge.set(9, j7);
                    }
                    i4++;
                }
                boolean z36 = customInfo2.mEnableStatReport;
                boolean z37 = customInfo.mEnableStatReport;
                if (z36 != z37) {
                    customInfo2.mEnableStatReport = z37;
                    if (z37) {
                        e.A();
                    }
                    i4++;
                }
                boolean z38 = customInfo2.mIsInternational;
                boolean z39 = customInfo.mIsInternational;
                if (z38 != z39) {
                    customInfo2.mIsInternational = z39;
                    if (b.f60229d) {
                        JNIBridge.set(23, z39);
                    }
                    i4++;
                }
                boolean z40 = customInfo2.mAutoDetectLifeCycle;
                boolean z41 = customInfo.mAutoDetectLifeCycle;
                if (z40 != z41) {
                    customInfo2.mAutoDetectLifeCycle = z41;
                    if (z41) {
                        b.z();
                    }
                    i4++;
                }
                boolean z42 = customInfo2.mMonitorBattery;
                boolean z43 = customInfo.mMonitorBattery;
                if (z42 != z43) {
                    customInfo2.mMonitorBattery = z43;
                    e.c(b.y());
                    i4++;
                }
                int i39 = customInfo2.mUnexpSubTypes;
                int i40 = customInfo.mUnexpSubTypes;
                if (i39 != i40) {
                    customInfo2.mUnexpSubTypes = i40;
                    i4++;
                }
                i2 = i4;
            }
        }
        return i2;
    }

    public static void c() {
        JNIBridge.set(11, N());
        JNIBridge.set(12, f60312d.mBackupLogs);
        JNIBridge.set(13, f60312d.mCrashRestartInterval);
        JNIBridge.set(14, f60312d.mMaxBuiltinLogFilesCount);
        JNIBridge.set(15, f60312d.mMaxNativeLogcatLineCount);
        JNIBridge.set(16, f60312d.mMaxUnexpLogcatLineCount);
        JNIBridge.set(31, f60312d.mMaxAnrLogcatLineCount);
        JNIBridge.set(18, M());
        JNIBridge.set(20, Build.VERSION.SDK_INT);
        JNIBridge.set(21, f60312d.mOmitNativeCrash);
        JNIBridge.set(32, f60312d.mMaxAnrLogCountPerProcess);
        JNIBridge.set(8, f60312d.mDisableSignals);
        JNIBridge.set(9, f60312d.mDisableBackgroundSignals);
        CustomInfo customInfo = f60312d;
        JNIBridge.nativeSet(3, customInfo.mZipLog ? 1L : 0L, customInfo.mZippedLogExtension, null);
        JNIBridge.set(4, f60312d.mLogMaxBytesLimit);
        JNIBridge.set(119, Build.FINGERPRINT);
    }

    private static String a(String str) {
        return (str == null || !str.contains("_")) ? str : str.replaceAll("_", "-");
    }

    public static CustomInfo a(CustomInfo customInfo, Bundle bundle) {
        if (customInfo == null) {
            CustomInfo customInfo2 = f60312d;
            if (customInfo2 == null) {
                customInfo = new CustomInfo();
            } else {
                customInfo = new CustomInfo(customInfo2);
            }
        }
        Field[] fields = customInfo.getClass().getFields();
        for (String str : bundle.keySet()) {
            for (Field field : fields) {
                if (field.getName().equals(str)) {
                    Object obj = bundle.get(str);
                    try {
                        field.set(customInfo, obj);
                    } catch (Exception e4) {
                        com.uc.crashsdk.a.g.a(e4);
                        StringBuilder sb = new StringBuilder("Field ");
                        sb.append(str);
                        sb.append(" must be a ");
                        sb.append(field.getType().getName());
                        sb.append(", but give a ");
                        sb.append(obj != null ? obj.getClass().getName() : "(null)");
                        throw new IllegalArgumentException(sb.toString());
                    }
                }
            }
        }
        return customInfo;
    }

    public static VersionInfo a(Bundle bundle) {
        VersionInfo versionInfo;
        VersionInfo versionInfo2 = f60313e;
        if (versionInfo2 == null) {
            versionInfo = new VersionInfo();
        } else {
            versionInfo = new VersionInfo(versionInfo2);
        }
        String string = bundle.getString("mVersion");
        if (!com.uc.crashsdk.a.g.a(string)) {
            versionInfo.mVersion = string;
        }
        String string2 = bundle.getString("mSubVersion");
        if (!com.uc.crashsdk.a.g.a(string2)) {
            versionInfo.mSubVersion = string2;
        }
        String string3 = bundle.getString("mBuildId");
        if (!com.uc.crashsdk.a.g.a(string3)) {
            versionInfo.mBuildId = string3;
        }
        String string4 = bundle.getString("crver");
        if (!com.uc.crashsdk.a.g.a(string4)) {
            a.f60147b = string4;
            Y();
        }
        return versionInfo;
    }

    private static boolean a(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }
}
