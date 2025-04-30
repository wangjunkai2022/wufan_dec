package io.reactivex.internal.operators.observable;
/* compiled from: ObservableLift.java */
/* loaded from: classes5.dex */
public final class w0<R, T> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.d0<? extends R, ? super T> f69327b;

    public w0(io.reactivex.e0<T> e0Var, io.reactivex.d0<? extends R, ? super T> d0Var) {
        super(e0Var);
        this.f69327b = d0Var;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super R> g0Var) {
        try {
            io.reactivex.g0<? super Object> a4 = this.f69327b.a(g0Var);
            this.f68961a.a((io.reactivex.g0) io.reactivex.internal.functions.a.g(a4, "Operator " + this.f69327b + " returned a null Observer"));
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
