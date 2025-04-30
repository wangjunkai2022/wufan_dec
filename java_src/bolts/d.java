package bolts;

import java.io.Closeable;
/* compiled from: CancellationTokenRegistration.java */
/* loaded from: classes2.dex */
public class d implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f8216a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private e f8217b;

    /* renamed from: c  reason: collision with root package name */
    private Runnable f8218c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8219d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(e eVar, Runnable runnable) {
        this.f8217b = eVar;
        this.f8218c = runnable;
    }

    private void b() {
        if (this.f8219d) {
            throw new IllegalStateException("Object already closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        synchronized (this.f8216a) {
            b();
            this.f8218c.run();
            close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f8216a) {
            if (this.f8219d) {
                return;
            }
            this.f8219d = true;
            this.f8217b.p(this);
            this.f8217b = null;
            this.f8218c = null;
        }
    }
}
