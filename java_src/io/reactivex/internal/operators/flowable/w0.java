package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.ScalarSubscription;
import java.util.concurrent.Callable;
/* compiled from: FlowableScalarXMap.java */
/* loaded from: classes5.dex */
public final class w0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableScalarXMap.java */
    /* loaded from: classes5.dex */
    public static final class a<T, R> extends io.reactivex.j<R> {

        /* renamed from: b  reason: collision with root package name */
        final T f67551b;

        /* renamed from: c  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<? extends R>> f67552c;

        a(T t3, w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
            this.f67551b = t3;
            this.f67552c = oVar;
        }

        @Override // io.reactivex.j
        public void h6(l3.c<? super R> cVar) {
            try {
                l3.b bVar = (l3.b) io.reactivex.internal.functions.a.g(this.f67552c.apply((T) this.f67551b), "The mapper returned a null Publisher");
                if (bVar instanceof Callable) {
                    try {
                        Object call = ((Callable) bVar).call();
                        if (call == null) {
                            EmptySubscription.complete(cVar);
                            return;
                        } else {
                            cVar.onSubscribe(new ScalarSubscription(cVar, call));
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        EmptySubscription.error(th, cVar);
                        return;
                    }
                }
                bVar.c(cVar);
            } catch (Throwable th2) {
                EmptySubscription.error(th2, cVar);
            }
        }
    }

    private w0() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> io.reactivex.j<U> a(T t3, w2.o<? super T, ? extends l3.b<? extends U>> oVar) {
        return io.reactivex.plugins.a.P(new a(t3, oVar));
    }

    public static <T, R> boolean b(l3.b<T> bVar, l3.c<? super R> cVar, w2.o<? super T, ? extends l3.b<? extends R>> oVar) {
        if (bVar instanceof Callable) {
            try {
                Object obj = (Object) ((Callable) bVar).call();
                if (obj == 0) {
                    EmptySubscription.complete(cVar);
                    return true;
                }
                try {
                    l3.b bVar2 = (l3.b) io.reactivex.internal.functions.a.g(oVar.apply(obj), "The mapper returned a null Publisher");
                    if (bVar2 instanceof Callable) {
                        try {
                            Object call = ((Callable) bVar2).call();
                            if (call == null) {
                                EmptySubscription.complete(cVar);
                                return true;
                            }
                            cVar.onSubscribe(new ScalarSubscription(cVar, call));
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            EmptySubscription.error(th, cVar);
                            return true;
                        }
                    } else {
                        bVar2.c(cVar);
                    }
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    EmptySubscription.error(th2, cVar);
                    return true;
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                EmptySubscription.error(th3, cVar);
                return true;
            }
        }
        return false;
    }
}
