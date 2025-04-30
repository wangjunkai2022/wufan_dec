package org.greenrobot.eventbus;
/* compiled from: PendingPostQueue.java */
/* loaded from: classes5.dex */
final class h {

    /* renamed from: a  reason: collision with root package name */
    private g f73259a;

    /* renamed from: b  reason: collision with root package name */
    private g f73260b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(g gVar) {
        try {
            if (gVar != null) {
                g gVar2 = this.f73260b;
                if (gVar2 != null) {
                    gVar2.f73258c = gVar;
                    this.f73260b = gVar;
                } else if (this.f73259a == null) {
                    this.f73260b = gVar;
                    this.f73259a = gVar;
                } else {
                    throw new IllegalStateException("Head present, but no tail");
                }
                notifyAll();
            } else {
                throw new NullPointerException("null cannot be enqueued");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized g b() {
        g gVar;
        gVar = this.f73259a;
        if (gVar != null) {
            g gVar2 = gVar.f73258c;
            this.f73259a = gVar2;
            if (gVar2 == null) {
                this.f73260b = null;
            }
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized g c(int i2) throws InterruptedException {
        if (this.f73259a == null) {
            wait(i2);
        }
        return b();
    }
}
