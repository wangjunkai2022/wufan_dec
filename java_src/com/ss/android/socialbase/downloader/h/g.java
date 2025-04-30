package com.ss.android.socialbase.downloader.h;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* compiled from: ThreadWithHandler.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private Object f58235a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private Queue<b> f58236b = new ConcurrentLinkedQueue();

    /* renamed from: c  reason: collision with root package name */
    private a f58237c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f58238d;

    /* compiled from: ThreadWithHandler.java */
    /* loaded from: classes4.dex */
    private class a extends HandlerThread {
        a(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        protected void onLooperPrepared() {
            super.onLooperPrepared();
            Looper looper = getLooper();
            synchronized (g.this.f58235a) {
                g.this.f58238d = new Handler(looper);
            }
            while (!g.this.f58236b.isEmpty()) {
                b bVar = (b) g.this.f58236b.poll();
                g.this.f58238d.postDelayed(bVar.f58240a, bVar.f58241b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThreadWithHandler.java */
    /* loaded from: classes4.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public Runnable f58240a;

        /* renamed from: b  reason: collision with root package name */
        public long f58241b;

        public b(Runnable runnable, long j4) {
            this.f58240a = runnable;
            this.f58241b = j4;
        }
    }

    public g(String str) {
        this.f58237c = new a(str);
    }

    public void b() {
        this.f58237c.quit();
    }

    public void a() {
        this.f58237c.start();
    }

    public void a(Runnable runnable) {
        a(runnable, 0L);
    }

    public void a(Runnable runnable, long j4) {
        if (this.f58238d == null) {
            synchronized (this.f58235a) {
                if (this.f58238d == null) {
                    this.f58236b.add(new b(runnable, j4));
                    return;
                }
            }
        }
        this.f58238d.postDelayed(runnable, j4);
    }
}
