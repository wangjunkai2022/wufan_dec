package com.youth.banner;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: WeakHandler.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final Handler.Callback f64895a;

    /* renamed from: b  reason: collision with root package name */
    private final b f64896b;

    /* renamed from: c  reason: collision with root package name */
    private Lock f64897c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final a f64898d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WeakHandler.java */
    /* loaded from: classes3.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        a f64899a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        a f64900b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        final Runnable f64901c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        final c f64902d;
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        Lock f64903e;

        public a(@NonNull Lock lock, @NonNull Runnable runnable) {
            this.f64901c = runnable;
            this.f64903e = lock;
            this.f64902d = new c(new WeakReference(runnable), new WeakReference(this));
        }

        public void a(@NonNull a aVar) {
            this.f64903e.lock();
            try {
                a aVar2 = this.f64899a;
                if (aVar2 != null) {
                    aVar2.f64900b = aVar;
                }
                aVar.f64899a = aVar2;
                this.f64899a = aVar;
                aVar.f64900b = this;
            } finally {
                this.f64903e.unlock();
            }
        }

        public c b() {
            this.f64903e.lock();
            try {
                a aVar = this.f64900b;
                if (aVar != null) {
                    aVar.f64899a = this.f64899a;
                }
                a aVar2 = this.f64899a;
                if (aVar2 != null) {
                    aVar2.f64900b = aVar;
                }
                this.f64900b = null;
                this.f64899a = null;
                this.f64903e.unlock();
                return this.f64902d;
            } catch (Throwable th) {
                this.f64903e.unlock();
                throw th;
            }
        }

        @Nullable
        public c c(Runnable runnable) {
            this.f64903e.lock();
            try {
                for (a aVar = this.f64899a; aVar != null; aVar = aVar.f64899a) {
                    if (aVar.f64901c == runnable) {
                        return aVar.b();
                    }
                }
                this.f64903e.unlock();
                return null;
            } finally {
                this.f64903e.unlock();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WeakHandler.java */
    /* loaded from: classes3.dex */
    public static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<Runnable> f64905a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<a> f64906b;

        c(WeakReference<Runnable> weakReference, WeakReference<a> weakReference2) {
            this.f64905a = weakReference;
            this.f64906b = weakReference2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f64905a.get();
            a aVar = this.f64906b.get();
            if (aVar != null) {
                aVar.b();
            }
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public e() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f64897c = reentrantLock;
        this.f64898d = new a(reentrantLock, null);
        this.f64895a = null;
        this.f64896b = new b();
    }

    private c u(@NonNull Runnable runnable) {
        Objects.requireNonNull(runnable, "Runnable can't be null");
        a aVar = new a(this.f64897c, runnable);
        this.f64898d.a(aVar);
        return aVar.f64902d;
    }

    public final Looper a() {
        return this.f64896b.getLooper();
    }

    public final boolean b(int i2) {
        return this.f64896b.hasMessages(i2);
    }

    public final boolean c(int i2, Object obj) {
        return this.f64896b.hasMessages(i2, obj);
    }

    public final boolean d(@NonNull Runnable runnable) {
        return this.f64896b.post(u(runnable));
    }

    public final boolean e(Runnable runnable) {
        return this.f64896b.postAtFrontOfQueue(u(runnable));
    }

    public final boolean f(@NonNull Runnable runnable, long j4) {
        return this.f64896b.postAtTime(u(runnable), j4);
    }

    public final boolean g(Runnable runnable, Object obj, long j4) {
        return this.f64896b.postAtTime(u(runnable), obj, j4);
    }

    public final boolean h(Runnable runnable, long j4) {
        return this.f64896b.postDelayed(u(runnable), j4);
    }

    public final void i(Runnable runnable) {
        c c4 = this.f64898d.c(runnable);
        if (c4 != null) {
            this.f64896b.removeCallbacks(c4);
        }
    }

    public final void j(Runnable runnable, Object obj) {
        c c4 = this.f64898d.c(runnable);
        if (c4 != null) {
            this.f64896b.removeCallbacks(c4, obj);
        }
    }

    public final void k(Object obj) {
        this.f64896b.removeCallbacksAndMessages(obj);
    }

    public final void l(int i2) {
        this.f64896b.removeMessages(i2);
    }

    public final void m(int i2, Object obj) {
        this.f64896b.removeMessages(i2, obj);
    }

    public final boolean n(int i2) {
        return this.f64896b.sendEmptyMessage(i2);
    }

    public final boolean o(int i2, long j4) {
        return this.f64896b.sendEmptyMessageAtTime(i2, j4);
    }

    public final boolean p(int i2, long j4) {
        return this.f64896b.sendEmptyMessageDelayed(i2, j4);
    }

    public final boolean q(Message message) {
        return this.f64896b.sendMessage(message);
    }

    public final boolean r(Message message) {
        return this.f64896b.sendMessageAtFrontOfQueue(message);
    }

    public boolean s(Message message, long j4) {
        return this.f64896b.sendMessageAtTime(message, j4);
    }

    public final boolean t(Message message, long j4) {
        return this.f64896b.sendMessageDelayed(message, j4);
    }

    /* compiled from: WeakHandler.java */
    /* loaded from: classes3.dex */
    private static class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<Handler.Callback> f64904a;

        b() {
            this.f64904a = null;
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            Handler.Callback callback;
            WeakReference<Handler.Callback> weakReference = this.f64904a;
            if (weakReference == null || (callback = weakReference.get()) == null) {
                return;
            }
            callback.handleMessage(message);
        }

        b(WeakReference<Handler.Callback> weakReference) {
            this.f64904a = weakReference;
        }

        b(Looper looper) {
            super(looper);
            this.f64904a = null;
        }

        b(Looper looper, WeakReference<Handler.Callback> weakReference) {
            super(looper);
            this.f64904a = weakReference;
        }
    }

    public e(@Nullable Handler.Callback callback) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f64897c = reentrantLock;
        this.f64898d = new a(reentrantLock, null);
        this.f64895a = callback;
        this.f64896b = new b(new WeakReference(callback));
    }

    public e(@NonNull Looper looper) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f64897c = reentrantLock;
        this.f64898d = new a(reentrantLock, null);
        this.f64895a = null;
        this.f64896b = new b(looper);
    }

    public e(@NonNull Looper looper, @NonNull Handler.Callback callback) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f64897c = reentrantLock;
        this.f64898d = new a(reentrantLock, null);
        this.f64895a = callback;
        this.f64896b = new b(looper, new WeakReference(callback));
    }
}
