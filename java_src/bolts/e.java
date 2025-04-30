package bolts;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: CancellationTokenSource.java */
/* loaded from: classes2.dex */
public class e implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f8220a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final List<d> f8221b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f8222c = b.d();

    /* renamed from: d  reason: collision with root package name */
    private ScheduledFuture<?> f8223d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f8224e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8225f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CancellationTokenSource.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (e.this.f8220a) {
                e.this.f8223d = null;
            }
            e.this.cancel();
        }
    }

    private void e(long j4, TimeUnit timeUnit) {
        if (j4 < -1) {
            throw new IllegalArgumentException("Delay must be >= -1");
        }
        if (j4 == 0) {
            cancel();
            return;
        }
        synchronized (this.f8220a) {
            if (this.f8224e) {
                return;
            }
            g();
            if (j4 != -1) {
                this.f8223d = this.f8222c.schedule(new a(), j4, timeUnit);
            }
        }
    }

    private void g() {
        ScheduledFuture<?> scheduledFuture = this.f8223d;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f8223d = null;
        }
    }

    private void k(List<d> list) {
        for (d dVar : list) {
            dVar.a();
        }
    }

    private void o() {
        if (this.f8225f) {
            throw new IllegalStateException("Object already closed");
        }
    }

    public void cancel() {
        synchronized (this.f8220a) {
            o();
            if (this.f8224e) {
                return;
            }
            g();
            this.f8224e = true;
            k(new ArrayList(this.f8221b));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f8220a) {
            if (this.f8225f) {
                return;
            }
            g();
            for (d dVar : this.f8221b) {
                dVar.close();
            }
            this.f8221b.clear();
            this.f8225f = true;
        }
    }

    public void d(long j4) {
        e(j4, TimeUnit.MILLISECONDS);
    }

    public c h() {
        c cVar;
        synchronized (this.f8220a) {
            o();
            cVar = new c(this);
        }
        return cVar;
    }

    public boolean i() {
        boolean z3;
        synchronized (this.f8220a) {
            o();
            z3 = this.f8224e;
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d m(Runnable runnable) {
        d dVar;
        synchronized (this.f8220a) {
            o();
            dVar = new d(this, runnable);
            if (this.f8224e) {
                dVar.a();
            } else {
                this.f8221b.add(dVar);
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() throws CancellationException {
        synchronized (this.f8220a) {
            o();
            if (this.f8224e) {
                throw new CancellationException();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(d dVar) {
        synchronized (this.f8220a) {
            o();
            this.f8221b.remove(dVar);
        }
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(i()));
    }
}
