package com.sdk.Unicorn.base.framework.handler;

import android.content.Context;
import androidx.annotation.Keep;
import com.sdk.o.a;
import java.io.PrintStream;
import java.lang.Thread;
/* loaded from: classes4.dex */
public class CrashHandler implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    public static Thread.UncaughtExceptionHandler f56504a;

    /* renamed from: b  reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f56505b;

    /* renamed from: c  reason: collision with root package name */
    public Context f56506c;

    @Keep
    public static void setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        f56504a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        PrintStream printStream = System.out;
        printStream.println("----" + th);
        a.a();
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = f56504a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
            return;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f56505b;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(thread, th);
        }
    }
}
