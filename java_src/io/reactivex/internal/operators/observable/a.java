package io.reactivex.internal.operators.observable;
/* compiled from: AbstractObservableWithUpstream.java */
/* loaded from: classes5.dex */
abstract class a<T, U> extends io.reactivex.z<U> implements x2.g<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final io.reactivex.e0<T> f68961a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.e0<T> e0Var) {
        this.f68961a = e0Var;
    }

    @Override // x2.g
    public final io.reactivex.e0<T> source() {
        return this.f68961a;
    }
}
