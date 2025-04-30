package org.greenrobot.eventbus;
/* compiled from: BackgroundPoster.java */
/* loaded from: classes5.dex */
final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f73206a = new h();

    /* renamed from: b  reason: collision with root package name */
    private final c f73207b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f73208c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c cVar) {
        this.f73207b = cVar;
    }

    public void a(l lVar, Object obj) {
        g a4 = g.a(lVar, obj);
        synchronized (this) {
            this.f73206a.a(a4);
            if (!this.f73208c) {
                this.f73208c = true;
                this.f73207b.g().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                g c4 = this.f73206a.c(1000);
                if (c4 == null) {
                    synchronized (this) {
                        c4 = this.f73206a.b();
                        if (c4 == null) {
                            return;
                        }
                    }
                }
                this.f73207b.k(c4);
            } catch (InterruptedException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append(Thread.currentThread().getName());
                sb.append(" was interruppted");
                return;
            } finally {
                this.f73208c = false;
            }
        }
    }
}
