package com.facebook.rebound;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Choreographer;
/* compiled from: AndroidSpringLooperFactory.java */
/* loaded from: classes2.dex */
abstract class a {

    /* compiled from: AndroidSpringLooperFactory.java */
    @TargetApi(16)
    /* renamed from: com.facebook.rebound.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0089a extends n {

        /* renamed from: b  reason: collision with root package name */
        private final Choreographer f13395b;

        /* renamed from: c  reason: collision with root package name */
        private final Choreographer.FrameCallback f13396c = new Choreographer$FrameCallbackC0090a();

        /* renamed from: d  reason: collision with root package name */
        private boolean f13397d;

        /* renamed from: e  reason: collision with root package name */
        private long f13398e;

        /* compiled from: AndroidSpringLooperFactory.java */
        /* renamed from: com.facebook.rebound.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class Choreographer$FrameCallbackC0090a implements Choreographer.FrameCallback {
            Choreographer$FrameCallbackC0090a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j4) {
                if (!C0089a.this.f13397d || C0089a.this.f13474a == null) {
                    return;
                }
                long uptimeMillis = SystemClock.uptimeMillis();
                C0089a c0089a = C0089a.this;
                c0089a.f13474a.i(uptimeMillis - c0089a.f13398e);
                C0089a.this.f13398e = uptimeMillis;
                C0089a.this.f13395b.postFrameCallback(C0089a.this.f13396c);
            }
        }

        public C0089a(Choreographer choreographer) {
            this.f13395b = choreographer;
        }

        public static C0089a i() {
            return new C0089a(Choreographer.getInstance());
        }

        @Override // com.facebook.rebound.n
        public void b() {
            if (this.f13397d) {
                return;
            }
            this.f13397d = true;
            this.f13398e = SystemClock.uptimeMillis();
            this.f13395b.removeFrameCallback(this.f13396c);
            this.f13395b.postFrameCallback(this.f13396c);
        }

        @Override // com.facebook.rebound.n
        public void c() {
            this.f13397d = false;
            this.f13395b.removeFrameCallback(this.f13396c);
        }
    }

    /* compiled from: AndroidSpringLooperFactory.java */
    /* loaded from: classes2.dex */
    private static class b extends n {

        /* renamed from: b  reason: collision with root package name */
        private final Handler f13400b;

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f13401c = new RunnableC0091a();

        /* renamed from: d  reason: collision with root package name */
        private boolean f13402d;

        /* renamed from: e  reason: collision with root package name */
        private long f13403e;

        /* compiled from: AndroidSpringLooperFactory.java */
        /* renamed from: com.facebook.rebound.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0091a implements Runnable {
            RunnableC0091a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!b.this.f13402d || b.this.f13474a == null) {
                    return;
                }
                long uptimeMillis = SystemClock.uptimeMillis();
                b bVar = b.this;
                bVar.f13474a.i(uptimeMillis - bVar.f13403e);
                b.this.f13403e = uptimeMillis;
                b.this.f13400b.post(b.this.f13401c);
            }
        }

        public b(Handler handler) {
            this.f13400b = handler;
        }

        public static n i() {
            return new b(new Handler());
        }

        @Override // com.facebook.rebound.n
        public void b() {
            if (this.f13402d) {
                return;
            }
            this.f13402d = true;
            this.f13403e = SystemClock.uptimeMillis();
            this.f13400b.removeCallbacks(this.f13401c);
            this.f13400b.post(this.f13401c);
        }

        @Override // com.facebook.rebound.n
        public void c() {
            this.f13402d = false;
            this.f13400b.removeCallbacks(this.f13401c);
        }
    }

    a() {
    }

    public static n a() {
        if (Build.VERSION.SDK_INT >= 16) {
            return C0089a.i();
        }
        return b.i();
    }
}
