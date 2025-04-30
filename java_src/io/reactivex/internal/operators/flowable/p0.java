package io.reactivex.internal.operators.flowable;
/* compiled from: FlowableLift.java */
/* loaded from: classes5.dex */
public final class p0<R, T> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.n<? extends R, ? super T> f67481c;

    public p0(io.reactivex.j<T> jVar, io.reactivex.n<? extends R, ? super T> nVar) {
        super(jVar);
        this.f67481c = nVar;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super R> cVar) {
        try {
            l3.c<? super Object> a4 = this.f67481c.a(cVar);
            if (a4 != null) {
                this.f67288b.c(a4);
                return;
            }
            throw new NullPointerException("Operator " + this.f67481c + " returned a null Subscriber");
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
