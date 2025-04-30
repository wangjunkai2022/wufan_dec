package com.cmic.sso.sdk.e;

import android.content.Context;
import java.lang.Thread;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: ThreadUtils.java */
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f10936a = new ThreadPoolExecutor(0, 30, 60, TimeUnit.SECONDS, new SynchronousQueue());

    public static void a(a aVar) {
        try {
            f10936a.execute(aVar);
        } catch (Exception e4) {
            aVar.f10937a.uncaughtException(Thread.currentThread(), e4);
        }
    }

    /* compiled from: ThreadUtils.java */
    /* loaded from: classes2.dex */
    public static abstract class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Thread.UncaughtExceptionHandler f10937a;

        /* JADX INFO: Access modifiers changed from: protected */
        public a() {
            this.f10937a = new Thread.UncaughtExceptionHandler() { // from class: com.cmic.sso.sdk.e.n.a.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    th.printStackTrace();
                }
            };
        }

        protected abstract void a();

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setUncaughtExceptionHandler(this.f10937a);
            a();
            Thread.currentThread().setUncaughtExceptionHandler(null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(final Context context, final com.cmic.sso.sdk.a aVar) {
            this.f10937a = new Thread.UncaughtExceptionHandler() { // from class: com.cmic.sso.sdk.e.n.a.2
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    aVar.a().f10886a.add(th);
                    com.cmic.sso.sdk.auth.c.getInstance(context).callBackResult("200025", "发生未知错误", aVar, null);
                }
            };
        }
    }
}
