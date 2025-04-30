package io.reactivex.parallel;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.h0;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.parallel.ParallelCollect;
import io.reactivex.internal.operators.parallel.ParallelFromPublisher;
import io.reactivex.internal.operators.parallel.ParallelJoin;
import io.reactivex.internal.operators.parallel.ParallelReduce;
import io.reactivex.internal.operators.parallel.ParallelReduceFull;
import io.reactivex.internal.operators.parallel.ParallelRunOn;
import io.reactivex.internal.operators.parallel.ParallelSortedJoin;
import io.reactivex.internal.operators.parallel.e;
import io.reactivex.internal.operators.parallel.f;
import io.reactivex.internal.operators.parallel.g;
import io.reactivex.internal.operators.parallel.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.ListAddBiConsumer;
import io.reactivex.internal.util.i;
import io.reactivex.j;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;
import l3.d;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import w2.o;
import w2.q;
import w2.r;
/* compiled from: ParallelFlowable.java */
/* loaded from: classes.dex */
public abstract class a<T> {
    @CheckReturnValue
    @NonNull
    public static <T> a<T> A(@NonNull l3.b<? extends T> bVar, int i2, int i4) {
        io.reactivex.internal.functions.a.g(bVar, "source");
        io.reactivex.internal.functions.a.h(i2, "parallelism");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.V(new ParallelFromPublisher(bVar, i2, i4));
    }

    @CheckReturnValue
    @NonNull
    public static <T> a<T> B(@NonNull Publisher<T>... publisherArr) {
        if (publisherArr.length != 0) {
            return io.reactivex.plugins.a.V(new f(publisherArr));
        }
        throw new IllegalArgumentException("Zero publishers not supported");
    }

    @CheckReturnValue
    public static <T> a<T> y(@NonNull l3.b<? extends T> bVar) {
        return A(bVar, Runtime.getRuntime().availableProcessors(), j.V());
    }

    @CheckReturnValue
    public static <T> a<T> z(@NonNull l3.b<? extends T> bVar, int i2) {
        return A(bVar, i2, j.V());
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> C(@NonNull o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper");
        return io.reactivex.plugins.a.V(new g(this, oVar));
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> D(@NonNull o<? super T, ? extends R> oVar, @NonNull ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.functions.a.g(oVar, "mapper");
        io.reactivex.internal.functions.a.g(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.plugins.a.V(new h(this, oVar, parallelFailureHandling));
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> E(@NonNull o<? super T, ? extends R> oVar, @NonNull w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.functions.a.g(oVar, "mapper");
        io.reactivex.internal.functions.a.g(cVar, "errorHandler is null");
        return io.reactivex.plugins.a.V(new h(this, oVar, cVar));
    }

    public abstract int F();

    @CheckReturnValue
    @NonNull
    public final j<T> G(@NonNull w2.c<T, T, T> cVar) {
        io.reactivex.internal.functions.a.g(cVar, "reducer");
        return io.reactivex.plugins.a.P(new ParallelReduceFull(this, cVar));
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> H(@NonNull Callable<R> callable, @NonNull w2.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.a.g(callable, "initialSupplier");
        io.reactivex.internal.functions.a.g(cVar, "reducer");
        return io.reactivex.plugins.a.V(new ParallelReduce(this, callable, cVar));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> I(@NonNull h0 h0Var) {
        return J(h0Var, j.V());
    }

    @CheckReturnValue
    @NonNull
    public final a<T> J(@NonNull h0 h0Var, int i2) {
        io.reactivex.internal.functions.a.g(h0Var, "scheduler");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.V(new ParallelRunOn(this, h0Var, i2));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    public final j<T> K() {
        return L(j.V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    @NonNull
    public final j<T> L(int i2) {
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new ParallelJoin(this, i2, false));
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    @NonNull
    public final j<T> M() {
        return N(j.V());
    }

    @SchedulerSupport("none")
    @BackpressureSupport(BackpressureKind.FULL)
    @CheckReturnValue
    @NonNull
    public final j<T> N(int i2) {
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.P(new ParallelJoin(this, i2, true));
    }

    @CheckReturnValue
    @NonNull
    public final j<T> O(@NonNull Comparator<? super T> comparator) {
        return P(comparator, 16);
    }

    @CheckReturnValue
    @NonNull
    public final j<T> P(@NonNull Comparator<? super T> comparator, int i2) {
        io.reactivex.internal.functions.a.g(comparator, "comparator is null");
        io.reactivex.internal.functions.a.h(i2, "capacityHint");
        return io.reactivex.plugins.a.P(new ParallelSortedJoin(H(Functions.f((i2 / F()) + 1), ListAddBiConsumer.instance()).C(new io.reactivex.internal.util.o(comparator)), comparator));
    }

    public abstract void Q(@NonNull Subscriber<? super T>[] subscriberArr);

    @CheckReturnValue
    @NonNull
    public final <U> U R(@NonNull o<? super a<T>, U> oVar) {
        try {
            return (U) ((o) io.reactivex.internal.functions.a.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @CheckReturnValue
    @NonNull
    public final j<List<T>> S(@NonNull Comparator<? super T> comparator) {
        return T(comparator, 16);
    }

    @CheckReturnValue
    @NonNull
    public final j<List<T>> T(@NonNull Comparator<? super T> comparator, int i2) {
        io.reactivex.internal.functions.a.g(comparator, "comparator is null");
        io.reactivex.internal.functions.a.h(i2, "capacityHint");
        return io.reactivex.plugins.a.P(H(Functions.f((i2 / F()) + 1), ListAddBiConsumer.instance()).C(new io.reactivex.internal.util.o(comparator)).G(new i(comparator)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean U(@NonNull Subscriber<?>[] subscriberArr) {
        int F = F();
        if (subscriberArr.length != F) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("parallelism = " + F + ", subscribers = " + subscriberArr.length);
            for (Subscriber<?> subscriber : subscriberArr) {
                EmptySubscription.error(illegalArgumentException, subscriber);
            }
            return false;
        }
        return true;
    }

    @CheckReturnValue
    @NonNull
    public final <R> R a(@NonNull b<T, R> bVar) {
        return (R) ((b) io.reactivex.internal.functions.a.g(bVar, "converter is null")).a(this);
    }

    @CheckReturnValue
    @NonNull
    public final <C> a<C> b(@NonNull Callable<? extends C> callable, @NonNull w2.b<? super C, ? super T> bVar) {
        io.reactivex.internal.functions.a.g(callable, "collectionSupplier is null");
        io.reactivex.internal.functions.a.g(bVar, "collector is null");
        return io.reactivex.plugins.a.V(new ParallelCollect(this, callable, bVar));
    }

    @CheckReturnValue
    @NonNull
    public final <U> a<U> c(@NonNull c<T, U> cVar) {
        return io.reactivex.plugins.a.V(((c) io.reactivex.internal.functions.a.g(cVar, "composer is null")).a(this));
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> d(@NonNull o<? super T, ? extends l3.b<? extends R>> oVar) {
        return e(oVar, 2);
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> e(@NonNull o<? super T, ? extends l3.b<? extends R>> oVar, int i2) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.a(this, oVar, i2, ErrorMode.IMMEDIATE));
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> f(@NonNull o<? super T, ? extends l3.b<? extends R>> oVar, int i2, boolean z3) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "prefetch");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.a(this, oVar, i2, z3 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> g(@NonNull o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3) {
        return f(oVar, 2, z3);
    }

    @CheckReturnValue
    @NonNull
    public final a<T> h(@NonNull w2.g<? super T> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onAfterNext is null");
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.i(this, h4, gVar, h5, aVar, aVar, Functions.h(), Functions.f65828g, aVar));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> i(@NonNull w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onAfterTerminate is null");
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.g h6 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.i(this, h4, h5, h6, aVar2, aVar, Functions.h(), Functions.f65828g, aVar2));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> j(@NonNull w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onCancel is null");
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.g h6 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.i(this, h4, h5, h6, aVar2, aVar2, Functions.h(), Functions.f65828g, aVar));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> k(@NonNull w2.a aVar) {
        io.reactivex.internal.functions.a.g(aVar, "onComplete is null");
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.g h6 = Functions.h();
        w2.a aVar2 = Functions.f65824c;
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.i(this, h4, h5, h6, aVar, aVar2, Functions.h(), Functions.f65828g, aVar2));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> l(@NonNull w2.g<Throwable> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onError is null");
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.i(this, h4, h5, gVar, aVar, aVar, Functions.h(), Functions.f65828g, aVar));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> m(@NonNull w2.g<? super T> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.i(this, gVar, h4, h5, aVar, aVar, Functions.h(), Functions.f65828g, aVar));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> n(@NonNull w2.g<? super T> gVar, @NonNull ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.b(this, gVar, parallelFailureHandling));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> o(@NonNull w2.g<? super T> gVar, @NonNull w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.functions.a.g(gVar, "onNext is null");
        io.reactivex.internal.functions.a.g(cVar, "errorHandler is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.b(this, gVar, cVar));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> p(@NonNull q qVar) {
        io.reactivex.internal.functions.a.g(qVar, "onRequest is null");
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.g h6 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.i(this, h4, h5, h6, aVar, aVar, Functions.h(), qVar, aVar));
    }

    @CheckReturnValue
    @NonNull
    public final a<T> q(@NonNull w2.g<? super d> gVar) {
        io.reactivex.internal.functions.a.g(gVar, "onSubscribe is null");
        w2.g h4 = Functions.h();
        w2.g h5 = Functions.h();
        w2.g h6 = Functions.h();
        w2.a aVar = Functions.f65824c;
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.i(this, h4, h5, h6, aVar, aVar, gVar, Functions.f65828g, aVar));
    }

    @CheckReturnValue
    public final a<T> r(@NonNull r<? super T> rVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.c(this, rVar));
    }

    @CheckReturnValue
    public final a<T> s(@NonNull r<? super T> rVar, @NonNull ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.functions.a.g(rVar, "predicate");
        io.reactivex.internal.functions.a.g(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.d(this, rVar, parallelFailureHandling));
    }

    @CheckReturnValue
    public final a<T> t(@NonNull r<? super T> rVar, @NonNull w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.functions.a.g(rVar, "predicate");
        io.reactivex.internal.functions.a.g(cVar, "errorHandler is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.d(this, rVar, cVar));
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> u(@NonNull o<? super T, ? extends l3.b<? extends R>> oVar) {
        return x(oVar, false, Integer.MAX_VALUE, j.V());
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> v(@NonNull o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3) {
        return x(oVar, z3, Integer.MAX_VALUE, j.V());
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> w(@NonNull o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3, int i2) {
        return x(oVar, z3, i2, j.V());
    }

    @CheckReturnValue
    @NonNull
    public final <R> a<R> x(@NonNull o<? super T, ? extends l3.b<? extends R>> oVar, boolean z3, int i2, int i4) {
        io.reactivex.internal.functions.a.g(oVar, "mapper is null");
        io.reactivex.internal.functions.a.h(i2, "maxConcurrency");
        io.reactivex.internal.functions.a.h(i4, "prefetch");
        return io.reactivex.plugins.a.V(new e(this, oVar, z3, i2, i4));
    }
}
