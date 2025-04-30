package io.reactivex.internal.operators.maybe;
/* compiled from: AbstractMaybeWithUpstream.java */
/* loaded from: classes5.dex */
abstract class a<T, R> extends io.reactivex.q<R> implements x2.f<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final io.reactivex.w<T> f67812a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.w<T> wVar) {
        this.f67812a = wVar;
    }

    @Override // x2.f
    public final io.reactivex.w<T> source() {
        return this.f67812a;
    }
}
