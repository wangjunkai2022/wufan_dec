package com.danikula.videocache;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProxyCache.java */
/* loaded from: classes2.dex */
public class o {

    /* renamed from: i  reason: collision with root package name */
    private static final int f11152i = 1;

    /* renamed from: a  reason: collision with root package name */
    private final q f11153a;

    /* renamed from: b  reason: collision with root package name */
    private final c f11154b;

    /* renamed from: f  reason: collision with root package name */
    private volatile Thread f11158f;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f11159g;

    /* renamed from: c  reason: collision with root package name */
    private final Object f11155c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Object f11156d = new Object();

    /* renamed from: h  reason: collision with root package name */
    private volatile int f11160h = -1;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicInteger f11157e = new AtomicInteger();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProxyCache.java */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.k();
        }
    }

    public o(q qVar, c cVar) {
        this.f11153a = (q) n.d(qVar);
        this.f11154b = (c) n.d(cVar);
    }

    private void b() throws ProxyCacheException {
        int i2 = this.f11157e.get();
        if (i2 < 1) {
            return;
        }
        this.f11157e.set(0);
        throw new ProxyCacheException("Error reading source " + i2 + " times");
    }

    private void c() {
        try {
            this.f11153a.close();
        } catch (ProxyCacheException e4) {
            h(new ProxyCacheException("Error closing source " + this.f11153a, e4));
        }
    }

    private boolean d() {
        return Thread.currentThread().isInterrupted() || this.f11159g;
    }

    private void e(long j4, long j5) {
        f(j4, j5);
        synchronized (this.f11155c) {
            this.f11155c.notifyAll();
        }
    }

    private void i() {
        this.f11160h = 100;
        g(this.f11160h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        long j4 = -1;
        long j5 = 0;
        try {
            j5 = this.f11154b.available();
            this.f11153a.a(j5);
            j4 = this.f11153a.length();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = this.f11153a.read(bArr);
                if (read != -1) {
                    synchronized (this.f11156d) {
                        if (d()) {
                            return;
                        }
                        this.f11154b.a(bArr, read);
                    }
                    j5 += read;
                    e(j5, j4);
                } else {
                    n();
                    i();
                    break;
                }
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    private synchronized void l() throws ProxyCacheException {
        boolean z3 = (this.f11158f == null || this.f11158f.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.f11159g && !this.f11154b.isCompleted() && !z3) {
            b bVar = new b();
            this.f11158f = new Thread(bVar, "Source reader for " + this.f11153a);
            this.f11158f.start();
        }
    }

    private void n() throws ProxyCacheException {
        synchronized (this.f11156d) {
            if (!d() && this.f11154b.available() == this.f11153a.length()) {
                this.f11154b.complete();
            }
        }
    }

    private void o() throws ProxyCacheException {
        synchronized (this.f11155c) {
            try {
                try {
                    this.f11155c.wait(1000L);
                } catch (InterruptedException e4) {
                    throw new ProxyCacheException("Waiting source data is interrupted!", e4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void f(long j4, long j5) {
        int i2 = (j5 > 0L ? 1 : (j5 == 0L ? 0 : -1)) == 0 ? 100 : (int) ((((float) j4) / ((float) j5)) * 100.0f);
        boolean z3 = i2 != this.f11160h;
        if ((j5 >= 0) && z3) {
            g(i2);
        }
        this.f11160h = i2;
    }

    protected void g(int i2) {
    }

    protected final void h(Throwable th) {
        if (th instanceof InterruptedProxyCacheException) {
            h.h("ProxyCache is interrupted");
        } else {
            h.g("ProxyCache error", th.getMessage());
        }
    }

    public int j(byte[] bArr, long j4, int i2) throws ProxyCacheException {
        p.a(bArr, j4, i2);
        while (!this.f11154b.isCompleted() && this.f11154b.available() < i2 + j4 && !this.f11159g) {
            l();
            o();
            b();
        }
        int b4 = this.f11154b.b(bArr, j4, i2);
        if (this.f11154b.isCompleted() && this.f11160h != 100) {
            this.f11160h = 100;
            g(100);
        }
        return b4;
    }

    public void m() {
        synchronized (this.f11156d) {
            try {
                this.f11159g = true;
                if (this.f11158f != null) {
                    this.f11158f.interrupt();
                }
                this.f11154b.close();
            } catch (ProxyCacheException e4) {
                h(e4);
            }
        }
    }
}
