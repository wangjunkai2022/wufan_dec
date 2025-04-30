package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.x;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class CrashModule extends a {
    public static final int MODULE_ID = 1004;

    /* renamed from: c  reason: collision with root package name */
    private static int f59297c;

    /* renamed from: e  reason: collision with root package name */
    private static CrashModule f59298e = new CrashModule();

    /* renamed from: a  reason: collision with root package name */
    private long f59299a;

    /* renamed from: b  reason: collision with root package name */
    private BuglyStrategy.a f59300b;

    /* renamed from: d  reason: collision with root package name */
    private boolean f59301d = false;

    private synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        if (buglyStrategy == null) {
            return;
        }
        String libBuglySOFilePath = buglyStrategy.getLibBuglySOFilePath();
        if (!TextUtils.isEmpty(libBuglySOFilePath)) {
            com.tencent.bugly.crashreport.common.info.a.a(context).f59373m = libBuglySOFilePath;
            x.a("setted libBugly.so file path :%s", libBuglySOFilePath);
        }
        if (buglyStrategy.getCrashHandleCallback() != null) {
            this.f59300b = buglyStrategy.getCrashHandleCallback();
            x.a("setted CrashHanldeCallback", new Object[0]);
        }
        if (buglyStrategy.getAppReportDelay() > 0) {
            long appReportDelay = buglyStrategy.getAppReportDelay();
            this.f59299a = appReportDelay;
            x.a("setted delay: %d", Long.valueOf(appReportDelay));
        }
    }

    public static CrashModule getInstance() {
        CrashModule crashModule = f59298e;
        crashModule.id = 1004;
        return crashModule;
    }

    @Override // com.tencent.bugly.a
    public String[] getTables() {
        return new String[]{"t_cr"};
    }

    public synchronized boolean hasInitialized() {
        return this.f59301d;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008b A[Catch: all -> 0x00bd, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x0009, B:9:0x0039, B:11:0x004f, B:13:0x0055, B:14:0x0058, B:16:0x005d, B:19:0x0064, B:22:0x0074, B:25:0x007b, B:28:0x008b, B:30:0x0093, B:32:0x009a, B:26:0x0086, B:20:0x006f), top: B:40:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0093 A[Catch: all -> 0x00bd, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x0009, B:9:0x0039, B:11:0x004f, B:13:0x0055, B:14:0x0058, B:16:0x005d, B:19:0x0064, B:22:0x0074, B:25:0x007b, B:28:0x008b, B:30:0x0093, B:32:0x009a, B:26:0x0086, B:20:0x006f), top: B:40:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0098  */
    @Override // com.tencent.bugly.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void init(android.content.Context r12, boolean r13, com.tencent.bugly.BuglyStrategy r14) {
        /*
            r11 = this;
            monitor-enter(r11)
            if (r12 == 0) goto Lc0
            boolean r0 = r11.f59301d     // Catch: java.lang.Throwable -> Lbd
            if (r0 == 0) goto L9
            goto Lc0
        L9:
            java.lang.String r0 = "Initializing crash module."
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.proguard.x.a(r0, r2)     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.proguard.n r0 = com.tencent.bugly.proguard.n.a()     // Catch: java.lang.Throwable -> Lbd
            int r2 = com.tencent.bugly.CrashModule.f59297c     // Catch: java.lang.Throwable -> Lbd
            r3 = 1
            int r2 = r2 + r3
            com.tencent.bugly.CrashModule.f59297c = r2     // Catch: java.lang.Throwable -> Lbd
            r4 = 1004(0x3ec, float:1.407E-42)
            r0.a(r4, r2)     // Catch: java.lang.Throwable -> Lbd
            r11.f59301d = r3     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.crashreport.CrashReport.setContext(r12)     // Catch: java.lang.Throwable -> Lbd
            r11.a(r12, r14)     // Catch: java.lang.Throwable -> Lbd
            r5 = 1004(0x3ec, float:1.407E-42)
            com.tencent.bugly.BuglyStrategy$a r8 = r11.f59300b     // Catch: java.lang.Throwable -> Lbd
            r9 = 0
            r10 = 0
            r6 = r12
            r7 = r13
            com.tencent.bugly.crashreport.crash.c r13 = com.tencent.bugly.crashreport.crash.c.a(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lbd
            r13.f()     // Catch: java.lang.Throwable -> Lbd
            if (r14 == 0) goto L4d
            int r0 = r14.getCallBackType()     // Catch: java.lang.Throwable -> Lbd
            r13.a(r0)     // Catch: java.lang.Throwable -> Lbd
            boolean r0 = r14.getCloseErrorCallback()     // Catch: java.lang.Throwable -> Lbd
            r13.a(r0)     // Catch: java.lang.Throwable -> Lbd
            boolean r0 = r14.isUploadSpotCrash()     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.crashreport.crash.c.f59516l = r0     // Catch: java.lang.Throwable -> Lbd
        L4d:
            if (r14 == 0) goto L58
            boolean r0 = r14.isEnableCatchAnrTrace()     // Catch: java.lang.Throwable -> Lbd
            if (r0 == 0) goto L58
            r13.k()     // Catch: java.lang.Throwable -> Lbd
        L58:
            r13.o()     // Catch: java.lang.Throwable -> Lbd
            if (r14 == 0) goto L6f
            boolean r0 = r14.isEnableNativeCrashMonitor()     // Catch: java.lang.Throwable -> Lbd
            if (r0 == 0) goto L64
            goto L6f
        L64:
            java.lang.String r0 = "[crash] Closed native crash monitor!"
            java.lang.Object[] r2 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.proguard.x.a(r0, r2)     // Catch: java.lang.Throwable -> Lbd
            r13.g()     // Catch: java.lang.Throwable -> Lbd
            goto L72
        L6f:
            r13.h()     // Catch: java.lang.Throwable -> Lbd
        L72:
            if (r14 == 0) goto L86
            boolean r0 = r14.isEnableANRCrashMonitor()     // Catch: java.lang.Throwable -> Lbd
            if (r0 == 0) goto L7b
            goto L86
        L7b:
            java.lang.String r0 = "[crash] Closed ANR monitor!"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.proguard.x.a(r0, r1)     // Catch: java.lang.Throwable -> Lbd
            r13.j()     // Catch: java.lang.Throwable -> Lbd
            goto L89
        L86:
            r13.i()     // Catch: java.lang.Throwable -> Lbd
        L89:
            if (r14 == 0) goto L91
            boolean r0 = r14.isMerged()     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.crashreport.crash.c.f59508d = r0     // Catch: java.lang.Throwable -> Lbd
        L91:
            if (r14 == 0) goto L98
            long r0 = r14.getAppReportDelay()     // Catch: java.lang.Throwable -> Lbd
            goto L9a
        L98:
            r0 = 0
        L9a:
            r13.a(r0)     // Catch: java.lang.Throwable -> Lbd
            r13.n()     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.crashreport.crash.d.a(r12)     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver r13 = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.getInstance()     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r14 = "android.net.conn.CONNECTIVITY_CHANGE"
            r13.addFilter(r14)     // Catch: java.lang.Throwable -> Lbd
            r13.register(r12)     // Catch: java.lang.Throwable -> Lbd
            com.tencent.bugly.proguard.n r12 = com.tencent.bugly.proguard.n.a()     // Catch: java.lang.Throwable -> Lbd
            int r13 = com.tencent.bugly.CrashModule.f59297c     // Catch: java.lang.Throwable -> Lbd
            int r13 = r13 - r3
            com.tencent.bugly.CrashModule.f59297c = r13     // Catch: java.lang.Throwable -> Lbd
            r12.a(r4, r13)     // Catch: java.lang.Throwable -> Lbd
            monitor-exit(r11)
            return
        Lbd:
            r12 = move-exception
            monitor-exit(r11)
            throw r12
        Lc0:
            monitor-exit(r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.CrashModule.init(android.content.Context, boolean, com.tencent.bugly.BuglyStrategy):void");
    }

    @Override // com.tencent.bugly.a
    public void onServerStrategyChanged(StrategyBean strategyBean) {
        c a4;
        if (strategyBean == null || (a4 = c.a()) == null) {
            return;
        }
        a4.a(strategyBean);
    }
}
