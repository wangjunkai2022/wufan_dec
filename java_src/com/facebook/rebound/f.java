package com.facebook.rebound;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
/* compiled from: ChoreographerCompat.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: c  reason: collision with root package name */
    private static final long f13429c = 17;

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f13430d;

    /* renamed from: e  reason: collision with root package name */
    private static f f13431e;

    /* renamed from: a  reason: collision with root package name */
    private Handler f13432a;

    /* renamed from: b  reason: collision with root package name */
    private Choreographer f13433b;

    /* compiled from: ChoreographerCompat.java */
    /* loaded from: classes2.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        private Runnable f13434a;

        /* renamed from: b  reason: collision with root package name */
        private Choreographer.FrameCallback f13435b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChoreographerCompat.java */
        /* renamed from: com.facebook.rebound.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class Choreographer$FrameCallbackC0093a implements Choreographer.FrameCallback {
            Choreographer$FrameCallbackC0093a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j4) {
                a.this.a(j4);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChoreographerCompat.java */
        /* loaded from: classes2.dex */
        public class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.a(System.nanoTime());
            }
        }

        public abstract void a(long j4);

        @TargetApi(16)
        Choreographer.FrameCallback b() {
            if (this.f13435b == null) {
                this.f13435b = new Choreographer$FrameCallbackC0093a();
            }
            return this.f13435b;
        }

        Runnable c() {
            if (this.f13434a == null) {
                this.f13434a = new b();
            }
            return this.f13434a;
        }
    }

    static {
        f13430d = Build.VERSION.SDK_INT >= 16;
        f13431e = new f();
    }

    private f() {
        if (f13430d) {
            this.f13433b = d();
        } else {
            this.f13432a = new Handler(Looper.getMainLooper());
        }
    }

    @TargetApi(16)
    private void a(Choreographer.FrameCallback frameCallback) {
        this.f13433b.postFrameCallback(frameCallback);
    }

    @TargetApi(16)
    private void b(Choreographer.FrameCallback frameCallback, long j4) {
        this.f13433b.postFrameCallbackDelayed(frameCallback, j4);
    }

    @TargetApi(16)
    private void c(Choreographer.FrameCallback frameCallback) {
        this.f13433b.removeFrameCallback(frameCallback);
    }

    @TargetApi(16)
    private Choreographer d() {
        return Choreographer.getInstance();
    }

    public static f e() {
        return f13431e;
    }

    public void f(a aVar) {
        if (f13430d) {
            a(aVar.b());
        } else {
            this.f13432a.postDelayed(aVar.c(), 0L);
        }
    }

    public void g(a aVar, long j4) {
        if (f13430d) {
            b(aVar.b(), j4);
        } else {
            this.f13432a.postDelayed(aVar.c(), j4 + f13429c);
        }
    }

    public void h(a aVar) {
        if (f13430d) {
            c(aVar.b());
        } else {
            this.f13432a.removeCallbacks(aVar.c());
        }
    }
}
