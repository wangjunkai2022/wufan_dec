package io.reactivex.internal.operators.completable;
/* compiled from: CompletableLift.java */
/* loaded from: classes5.dex */
public final class q extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f66081a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.f f66082b;

    public q(io.reactivex.g gVar, io.reactivex.f fVar) {
        this.f66081a = gVar;
        this.f66082b = fVar;
    }

    @Override // io.reactivex.a
    protected void F0(io.reactivex.d dVar) {
        try {
            this.f66081a.a(this.f66082b.a(dVar));
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }
}
