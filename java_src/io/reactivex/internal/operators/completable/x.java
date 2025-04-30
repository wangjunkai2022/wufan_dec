package io.reactivex.internal.operators.completable;
/* compiled from: CompletableToFlowable.java */
/* loaded from: classes5.dex */
public final class x<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f66117b;

    public x(io.reactivex.g gVar) {
        this.f66117b = gVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        this.f66117b.a(new io.reactivex.internal.observers.p(cVar));
    }
}
