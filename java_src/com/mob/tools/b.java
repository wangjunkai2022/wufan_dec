package com.mob.tools;

import com.mob.commons.n;
import java.lang.Thread;
/* loaded from: classes4.dex */
public class b implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private static Thread.UncaughtExceptionHandler f53848a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f53849b;

    private b() {
    }

    public static void a() {
        if (f53849b || !n.f53088g) {
            return;
        }
        f53848a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new b());
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        MobLog.getInstance().crash(th);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = f53848a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
