package com.umeng.analytics.pro;

import com.umeng.analytics.AnalyticsConfig;
import java.lang.Thread;
/* compiled from: CrashHandler.java */
/* loaded from: classes4.dex */
public class o implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f60874a;

    /* renamed from: b  reason: collision with root package name */
    private s f60875b;

    public o() {
        if (Thread.getDefaultUncaughtExceptionHandler() == this) {
            return;
        }
        this.f60874a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void a(s sVar) {
        this.f60875b = sVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        a(th);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f60874a;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == Thread.getDefaultUncaughtExceptionHandler()) {
            return;
        }
        this.f60874a.uncaughtException(thread, th);
    }

    private void a(Throwable th) {
        if (AnalyticsConfig.CATCH_EXCEPTION) {
            this.f60875b.a(th);
        } else {
            this.f60875b.a(null);
        }
    }
}
