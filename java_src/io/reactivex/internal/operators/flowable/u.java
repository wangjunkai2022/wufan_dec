package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.EmptySubscription;
import java.util.Collection;
import java.util.concurrent.Callable;
/* compiled from: FlowableDistinct.java */
/* loaded from: classes5.dex */
public final class u<T, K> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, K> f67524c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends Collection<? super K>> f67525d;

    /* compiled from: FlowableDistinct.java */
    /* loaded from: classes5.dex */
    static final class a<T, K> extends io.reactivex.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final Collection<? super K> f67526f;

        /* renamed from: g  reason: collision with root package name */
        final w2.o<? super T, K> f67527g;

        a(l3.c<? super T> cVar, w2.o<? super T, K> oVar, Collection<? super K> collection) {
            super(cVar);
            this.f67527g = oVar;
            this.f67526f = collection;
        }

        @Override // io.reactivex.internal.subscribers.b, x2.o
        public void clear() {
            this.f67526f.clear();
            super.clear();
        }

        @Override // io.reactivex.internal.subscribers.b, l3.c
        public void onComplete() {
            if (this.f70012d) {
                return;
            }
            this.f70012d = true;
            this.f67526f.clear();
            this.f70009a.onComplete();
        }

        @Override // io.reactivex.internal.subscribers.b, l3.c
        public void onError(Throwable th) {
            if (this.f70012d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f70012d = true;
            this.f67526f.clear();
            this.f70009a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f70012d) {
                return;
            }
            if (this.f70013e == 0) {
                try {
                    if (this.f67526f.add(io.reactivex.internal.functions.a.g(this.f67527g.apply(t3), "The keySelector returned a null key"))) {
                        this.f70009a.onNext(t3);
                        return;
                    } else {
                        this.f70010b.request(1L);
                        return;
                    }
                } catch (Throwable th) {
                    c(th);
                    return;
                }
            }
            this.f70009a.onNext(null);
        }

        @Override // x2.o
        @Nullable
        public T poll() throws Exception {
            T poll;
            while (true) {
                poll = this.f70011c.poll();
                if (poll == null || this.f67526f.add((Object) io.reactivex.internal.functions.a.g(this.f67527g.apply(poll), "The keySelector returned a null key"))) {
                    break;
                } else if (this.f70013e == 2) {
                    this.f70010b.request(1L);
                }
            }
            return poll;
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return d(i2);
        }
    }

    public u(io.reactivex.j<T> jVar, w2.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        super(jVar);
        this.f67524c = oVar;
        this.f67525d = callable;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super T> cVar) {
        try {
            this.f67288b.g6(new a(cVar, this.f67524c, (Collection) io.reactivex.internal.functions.a.g(this.f67525d.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
