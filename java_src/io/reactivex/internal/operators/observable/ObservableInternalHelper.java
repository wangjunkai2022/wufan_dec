package io.reactivex.internal.operators.observable;

import io.reactivex.internal.functions.Functions;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class ObservableInternalHelper {

    /* loaded from: classes5.dex */
    enum MapToInt implements w2.o<Object, Object> {
        INSTANCE;

        @Override // w2.o
        public Object apply(Object obj) throws Exception {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> implements Callable<io.reactivex.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.z<T> f68423a;

        /* renamed from: b  reason: collision with root package name */
        private final int f68424b;

        a(io.reactivex.z<T> zVar, int i2) {
            this.f68423a = zVar;
            this.f68424b = i2;
        }

        @Override // java.util.concurrent.Callable
        public io.reactivex.observables.a<T> call() {
            return this.f68423a.C4(this.f68424b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b<T> implements Callable<io.reactivex.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.z<T> f68425a;

        /* renamed from: b  reason: collision with root package name */
        private final int f68426b;

        /* renamed from: c  reason: collision with root package name */
        private final long f68427c;

        /* renamed from: d  reason: collision with root package name */
        private final TimeUnit f68428d;

        /* renamed from: e  reason: collision with root package name */
        private final io.reactivex.h0 f68429e;

        b(io.reactivex.z<T> zVar, int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f68425a = zVar;
            this.f68426b = i2;
            this.f68427c = j4;
            this.f68428d = timeUnit;
            this.f68429e = h0Var;
        }

        @Override // java.util.concurrent.Callable
        public io.reactivex.observables.a<T> call() {
            return this.f68425a.E4(this.f68426b, this.f68427c, this.f68428d, this.f68429e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c<T, U> implements w2.o<T, io.reactivex.e0<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super T, ? extends Iterable<? extends U>> f68430a;

        c(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
            this.f68430a = oVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public io.reactivex.e0<U> apply(T t3) throws Exception {
            return new m0((Iterable) io.reactivex.internal.functions.a.g(this.f68430a.apply(t3), "The mapper returned a null Iterable"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class d<U, R, T> implements w2.o<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.c<? super T, ? super U, ? extends R> f68431a;

        /* renamed from: b  reason: collision with root package name */
        private final T f68432b;

        d(w2.c<? super T, ? super U, ? extends R> cVar, T t3) {
            this.f68431a = cVar;
            this.f68432b = t3;
        }

        @Override // w2.o
        public R apply(U u3) throws Exception {
            return this.f68431a.apply((T) this.f68432b, u3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class e<T, R, U> implements w2.o<T, io.reactivex.e0<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.c<? super T, ? super U, ? extends R> f68433a;

        /* renamed from: b  reason: collision with root package name */
        private final w2.o<? super T, ? extends io.reactivex.e0<? extends U>> f68434b;

        e(w2.c<? super T, ? super U, ? extends R> cVar, w2.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar) {
            this.f68433a = cVar;
            this.f68434b = oVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public io.reactivex.e0<R> apply(T t3) throws Exception {
            return new x0((io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68434b.apply(t3), "The mapper returned a null ObservableSource"), new d(this.f68433a, t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f<T, U> implements w2.o<T, io.reactivex.e0<T>> {

        /* renamed from: a  reason: collision with root package name */
        final w2.o<? super T, ? extends io.reactivex.e0<U>> f68435a;

        f(w2.o<? super T, ? extends io.reactivex.e0<U>> oVar) {
            this.f68435a = oVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public io.reactivex.e0<T> apply(T t3) throws Exception {
            return new p1((io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68435a.apply(t3), "The itemDelay returned a null ObservableSource"), 1L).x3(Functions.n(t3)).t1(t3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class g<T> implements w2.a {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<T> f68436a;

        g(io.reactivex.g0<T> g0Var) {
            this.f68436a = g0Var;
        }

        @Override // w2.a
        public void run() throws Exception {
            this.f68436a.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class h<T> implements w2.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<T> f68437a;

        h(io.reactivex.g0<T> g0Var) {
            this.f68437a = g0Var;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f68437a.onError(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class i<T> implements w2.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<T> f68438a;

        i(io.reactivex.g0<T> g0Var) {
            this.f68438a = g0Var;
        }

        @Override // w2.g
        public void accept(T t3) throws Exception {
            this.f68438a.onNext(t3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class j<T> implements Callable<io.reactivex.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.z<T> f68439a;

        j(io.reactivex.z<T> zVar) {
            this.f68439a = zVar;
        }

        @Override // java.util.concurrent.Callable
        public io.reactivex.observables.a<T> call() {
            return this.f68439a.B4();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class k<T, R> implements w2.o<io.reactivex.z<T>, io.reactivex.e0<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> f68440a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.h0 f68441b;

        k(w2.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> oVar, io.reactivex.h0 h0Var) {
            this.f68440a = oVar;
            this.f68441b = h0Var;
        }

        @Override // w2.o
        /* renamed from: a */
        public io.reactivex.e0<R> apply(io.reactivex.z<T> zVar) throws Exception {
            return io.reactivex.z.M7((io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68440a.apply(zVar), "The selector returned a null ObservableSource")).Y3(this.f68441b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class l<T, S> implements w2.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final w2.b<S, io.reactivex.i<T>> f68442a;

        l(w2.b<S, io.reactivex.i<T>> bVar) {
            this.f68442a = bVar;
        }

        @Override // w2.c
        /* renamed from: a */
        public S apply(S s3, io.reactivex.i<T> iVar) throws Exception {
            this.f68442a.a(s3, iVar);
            return s3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class m<T, S> implements w2.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final w2.g<io.reactivex.i<T>> f68443a;

        m(w2.g<io.reactivex.i<T>> gVar) {
            this.f68443a = gVar;
        }

        @Override // w2.c
        /* renamed from: a */
        public S apply(S s3, io.reactivex.i<T> iVar) throws Exception {
            this.f68443a.accept(iVar);
            return s3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class n<T> implements Callable<io.reactivex.observables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.z<T> f68444a;

        /* renamed from: b  reason: collision with root package name */
        private final long f68445b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f68446c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.h0 f68447d;

        n(io.reactivex.z<T> zVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f68444a = zVar;
            this.f68445b = j4;
            this.f68446c = timeUnit;
            this.f68447d = h0Var;
        }

        @Override // java.util.concurrent.Callable
        public io.reactivex.observables.a<T> call() {
            return this.f68444a.H4(this.f68445b, this.f68446c, this.f68447d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class o<T, R> implements w2.o<List<io.reactivex.e0<? extends T>>, io.reactivex.e0<? extends R>> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super Object[], ? extends R> f68448a;

        o(w2.o<? super Object[], ? extends R> oVar) {
            this.f68448a = oVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public io.reactivex.e0<? extends R> apply(List<io.reactivex.e0<? extends T>> list) {
            return io.reactivex.z.a8(list, this.f68448a, false, io.reactivex.z.S());
        }
    }

    private ObservableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> w2.o<T, io.reactivex.e0<U>> a(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return new c(oVar);
    }

    public static <T, U, R> w2.o<T, io.reactivex.e0<R>> b(w2.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, oVar);
    }

    public static <T, U> w2.o<T, io.reactivex.e0<T>> c(w2.o<? super T, ? extends io.reactivex.e0<U>> oVar) {
        return new f(oVar);
    }

    public static <T> w2.a d(io.reactivex.g0<T> g0Var) {
        return new g(g0Var);
    }

    public static <T> w2.g<Throwable> e(io.reactivex.g0<T> g0Var) {
        return new h(g0Var);
    }

    public static <T> w2.g<T> f(io.reactivex.g0<T> g0Var) {
        return new i(g0Var);
    }

    public static <T> Callable<io.reactivex.observables.a<T>> g(io.reactivex.z<T> zVar) {
        return new j(zVar);
    }

    public static <T> Callable<io.reactivex.observables.a<T>> h(io.reactivex.z<T> zVar, int i2) {
        return new a(zVar, i2);
    }

    public static <T> Callable<io.reactivex.observables.a<T>> i(io.reactivex.z<T> zVar, int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new b(zVar, i2, j4, timeUnit, h0Var);
    }

    public static <T> Callable<io.reactivex.observables.a<T>> j(io.reactivex.z<T> zVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new n(zVar, j4, timeUnit, h0Var);
    }

    public static <T, R> w2.o<io.reactivex.z<T>, io.reactivex.e0<R>> k(w2.o<? super io.reactivex.z<T>, ? extends io.reactivex.e0<R>> oVar, io.reactivex.h0 h0Var) {
        return new k(oVar, h0Var);
    }

    public static <T, S> w2.c<S, io.reactivex.i<T>, S> l(w2.b<S, io.reactivex.i<T>> bVar) {
        return new l(bVar);
    }

    public static <T, S> w2.c<S, io.reactivex.i<T>, S> m(w2.g<io.reactivex.i<T>> gVar) {
        return new m(gVar);
    }

    public static <T, R> w2.o<List<io.reactivex.e0<? extends T>>, io.reactivex.e0<? extends R>> n(w2.o<? super Object[], ? extends R> oVar) {
        return new o(oVar);
    }
}
