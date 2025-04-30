package org.greenrobot.eventbus;
/* compiled from: AsyncPoster.java */
/* loaded from: classes5.dex */
class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f73204a = new h();

    /* renamed from: b  reason: collision with root package name */
    private final c f73205b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(c cVar) {
        this.f73205b = cVar;
    }

    public void a(l lVar, Object obj) {
        this.f73204a.a(g.a(lVar, obj));
        this.f73205b.g().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        g b4 = this.f73204a.b();
        if (b4 != null) {
            this.f73205b.k(b4);
            return;
        }
        throw new IllegalStateException("No pending post available");
    }
}
