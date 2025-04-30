package com.tencent.bugly;

import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes.dex */
public class BuglyStrategy {

    /* renamed from: c  reason: collision with root package name */
    private String f59278c;

    /* renamed from: d  reason: collision with root package name */
    private String f59279d;

    /* renamed from: e  reason: collision with root package name */
    private String f59280e;

    /* renamed from: f  reason: collision with root package name */
    private long f59281f;

    /* renamed from: g  reason: collision with root package name */
    private String f59282g;

    /* renamed from: h  reason: collision with root package name */
    private String f59283h;

    /* renamed from: i  reason: collision with root package name */
    private String f59284i;

    /* renamed from: t  reason: collision with root package name */
    private a f59295t;

    /* renamed from: j  reason: collision with root package name */
    private boolean f59285j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f59286k = true;

    /* renamed from: l  reason: collision with root package name */
    private boolean f59287l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f59288m = true;

    /* renamed from: n  reason: collision with root package name */
    private Class<?> f59289n = null;

    /* renamed from: o  reason: collision with root package name */
    private boolean f59290o = true;

    /* renamed from: p  reason: collision with root package name */
    private boolean f59291p = true;

    /* renamed from: q  reason: collision with root package name */
    private boolean f59292q = true;

    /* renamed from: r  reason: collision with root package name */
    private boolean f59293r = true;

    /* renamed from: s  reason: collision with root package name */
    private boolean f59294s = false;

    /* renamed from: a  reason: collision with root package name */
    protected int f59276a = 31;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f59277b = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f59296u = true;

    /* compiled from: BUGLY */
    /* loaded from: classes4.dex */
    public static class a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 100000;

        public synchronized Map<String, String> onCrashHandleStart(int i2, String str, String str2, String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i2, String str, String str2, String str3) {
            return null;
        }
    }

    public synchronized String getAppChannel() {
        String str = this.f59279d;
        if (str == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().f59372l;
        }
        return str;
    }

    public synchronized String getAppPackageName() {
        String str = this.f59280e;
        if (str == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().f59363c;
        }
        return str;
    }

    public synchronized long getAppReportDelay() {
        return this.f59281f;
    }

    public synchronized String getAppVersion() {
        String str = this.f59278c;
        if (str == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().f59370j;
        }
        return str;
    }

    public synchronized int getCallBackType() {
        return this.f59276a;
    }

    public synchronized boolean getCloseErrorCallback() {
        return this.f59277b;
    }

    public synchronized a getCrashHandleCallback() {
        return this.f59295t;
    }

    public synchronized String getDeviceID() {
        return this.f59283h;
    }

    public synchronized String getDeviceModel() {
        return this.f59284i;
    }

    public synchronized String getLibBuglySOFilePath() {
        return this.f59282g;
    }

    public synchronized Class<?> getUserInfoActivity() {
        return this.f59289n;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.f59290o;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.f59286k;
    }

    public synchronized boolean isEnableCatchAnrTrace() {
        return this.f59287l;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.f59285j;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.f59288m;
    }

    public boolean isMerged() {
        return this.f59296u;
    }

    public boolean isReplaceOldChannel() {
        return this.f59291p;
    }

    public synchronized boolean isUploadProcess() {
        return this.f59292q;
    }

    public synchronized boolean isUploadSpotCrash() {
        return this.f59293r;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.f59294s;
    }

    public synchronized BuglyStrategy setAppChannel(String str) {
        this.f59279d = str;
        return this;
    }

    public synchronized BuglyStrategy setAppPackageName(String str) {
        this.f59280e = str;
        return this;
    }

    public synchronized BuglyStrategy setAppReportDelay(long j4) {
        this.f59281f = j4;
        return this;
    }

    public synchronized BuglyStrategy setAppVersion(String str) {
        this.f59278c = str;
        return this;
    }

    public synchronized BuglyStrategy setBuglyLogUpload(boolean z3) {
        this.f59290o = z3;
        return this;
    }

    public synchronized void setCallBackType(int i2) {
        this.f59276a = i2;
    }

    public synchronized void setCloseErrorCallback(boolean z3) {
        this.f59277b = z3;
    }

    public synchronized BuglyStrategy setCrashHandleCallback(a aVar) {
        this.f59295t = aVar;
        return this;
    }

    public synchronized BuglyStrategy setDeviceID(String str) {
        this.f59283h = str;
        return this;
    }

    public synchronized BuglyStrategy setDeviceModel(String str) {
        this.f59284i = str;
        return this;
    }

    public synchronized BuglyStrategy setEnableANRCrashMonitor(boolean z3) {
        this.f59286k = z3;
        return this;
    }

    public void setEnableCatchAnrTrace(boolean z3) {
        this.f59287l = z3;
    }

    public synchronized BuglyStrategy setEnableNativeCrashMonitor(boolean z3) {
        this.f59285j = z3;
        return this;
    }

    public synchronized BuglyStrategy setEnableUserInfo(boolean z3) {
        this.f59288m = z3;
        return this;
    }

    public synchronized BuglyStrategy setLibBuglySOFilePath(String str) {
        this.f59282g = str;
        return this;
    }

    public void setMerged(boolean z3) {
        this.f59296u = z3;
    }

    public synchronized BuglyStrategy setRecordUserInfoOnceADay(boolean z3) {
        this.f59294s = z3;
        return this;
    }

    public void setReplaceOldChannel(boolean z3) {
        this.f59291p = z3;
    }

    public synchronized BuglyStrategy setUploadProcess(boolean z3) {
        this.f59292q = z3;
        return this;
    }

    public synchronized void setUploadSpotCrash(boolean z3) {
        this.f59293r = z3;
    }

    public synchronized BuglyStrategy setUserInfoActivity(Class<?> cls) {
        this.f59289n = cls;
        return this;
    }
}
