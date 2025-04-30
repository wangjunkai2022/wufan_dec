package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.functions.Functions;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class FlowableInternalHelper {

    /* loaded from: classes5.dex */
    public enum RequestMax implements w2.g<l3.d> {
        INSTANCE;

        @Override // w2.g
        public void accept(l3.d dVar) throws Exception {
            dVar.request(Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a<T> implements Callable<io.reactivex.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f66564a;

        /* renamed from: b  reason: collision with root package name */
        private final int f66565b;

        a(io.reactivex.j<T> jVar, int i2) {
            this.f66564a = jVar;
            this.f66565b = i2;
        }

        @Override // java.util.concurrent.Callable
        public io.reactivex.flowables.a<T> call() {
            return this.f66564a.d5(this.f66565b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b<T> implements Callable<io.reactivex.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f66566a;

        /* renamed from: b  reason: collision with root package name */
        private final int f66567b;

        /* renamed from: c  reason: collision with root package name */
        private final long f66568c;

        /* renamed from: d  reason: collision with root package name */
        private final TimeUnit f66569d;

        /* renamed from: e  reason: collision with root package name */
        private final io.reactivex.h0 f66570e;

        b(io.reactivex.j<T> jVar, int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f66566a = jVar;
            this.f66567b = i2;
            this.f66568c = j4;
            this.f66569d = timeUnit;
            this.f66570e = h0Var;
        }

        @Override // java.util.concurrent.Callable
        public io.reactivex.flowables.a<T> call() {
            return this.f66566a.f5(this.f66567b, this.f66568c, this.f66569d, this.f66570e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c<T, U> implements w2.o<T, l3.b<U>> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super T, ? extends Iterable<? extends U>> f66571a;

        c(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
            this.f66571a = oVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public l3.b<U> apply(T t3) throws Exception {
            return new FlowableFromIterable((Iterable) io.reactivex.internal.functions.a.g(this.f66571a.apply(t3), "The mapper returned a null Iterable"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class d<U, R, T> implements w2.o<U, R> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.c<? super T, ? super U, ? extends R> f66572a;

        /* renamed from: b  reason: collision with root package name */
        private final T f66573b;

        d(w2.c<? super T, ? super U, ? extends R> cVar, T t3) {
            this.f66572a = cVar;
            this.f66573b = t3;
        }

        @Override // w2.o
        public R apply(U u3) throws Exception {
            return this.f66572a.apply((T) this.f66573b, u3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class e<T, R, U> implements w2.o<T, l3.b<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.c<? super T, ? super U, ? extends R> f66574a;

        /* renamed from: b  reason: collision with root package name */
        private final w2.o<? super T, ? extends l3.b<? extends U>> f66575b;

        e(w2.c<? super T, ? super U, ? extends R> cVar, w2.o<? super T, ? extends l3.b<? extends U>> oVar) {
            this.f66574a = cVar;
            this.f66575b = oVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public l3.b<R> apply(T t3) throws Exception {
            return new r0((l3.b) io.reactivex.internal.functions.a.g(this.f66575b.apply(t3), "The mapper returned a null Publisher"), new d(this.f66574a, t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f<T, U> implements w2.o<T, l3.b<T>> {

        /* renamed from: a  reason: collision with root package name */
        final w2.o<? super T, ? extends l3.b<U>> f66576a;

        f(w2.o<? super T, ? extends l3.b<U>> oVar) {
            this.f66576a = oVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public l3.b<T> apply(T t3) throws Exception {
            return new e1((l3.b) io.reactivex.internal.functions.a.g(this.f66576a.apply(t3), "The itemDelay returned a null Publisher"), 1L).H3(Functions.n(t3)).y1(t3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class g<T> implements Callable<io.reactivex.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f66577a;

        g(io.reactivex.j<T> jVar) {
            this.f66577a = jVar;
        }

        @Override // java.util.concurrent.Callable
        public io.reactivex.flowables.a<T> call() {
            return this.f66577a.c5();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class h<T, R> implements w2.o<io.reactivex.j<T>, l3.b<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super io.reactivex.j<T>, ? extends l3.b<R>> f66578a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.h0 f66579b;

        h(w2.o<? super io.reactivex.j<T>, ? extends l3.b<R>> oVar, io.reactivex.h0 h0Var) {
            this.f66578a = oVar;
            this.f66579b = h0Var;
        }

        @Override // w2.o
        /* renamed from: a */
        public l3.b<R> apply(io.reactivex.j<T> jVar) throws Exception {
            return io.reactivex.j.V2((l3.b) io.reactivex.internal.functions.a.g(this.f66578a.apply(jVar), "The selector returned a null Publisher")).i4(this.f66579b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class i<T, S> implements w2.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final w2.b<S, io.reactivex.i<T>> f66580a;

        i(w2.b<S, io.reactivex.i<T>> bVar) {
            this.f66580a = bVar;
        }

        @Override // w2.c
        /* renamed from: a */
        public S apply(S s3, io.reactivex.i<T> iVar) throws Exception {
            this.f66580a.a(s3, iVar);
            return s3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class j<T, S> implements w2.c<S, io.reactivex.i<T>, S> {

        /* renamed from: a  reason: collision with root package name */
        final w2.g<io.reactivex.i<T>> f66581a;

        j(w2.g<io.reactivex.i<T>> gVar) {
            this.f66581a = gVar;
        }

        @Override // w2.c
        /* renamed from: a */
        public S apply(S s3, io.reactivex.i<T> iVar) throws Exception {
            this.f66581a.accept(iVar);
            return s3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class k<T> implements w2.a {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<T> f66582a;

        k(l3.c<T> cVar) {
            this.f66582a = cVar;
        }

        @Override // w2.a
        public void run() throws Exception {
            this.f66582a.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class l<T> implements w2.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<T> f66583a;

        l(l3.c<T> cVar) {
            this.f66583a = cVar;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f66583a.onError(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class m<T> implements w2.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<T> f66584a;

        m(l3.c<T> cVar) {
            this.f66584a = cVar;
        }

        @Override // w2.g
        public void accept(T t3) throws Exception {
            this.f66584a.onNext(t3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class n<T> implements Callable<io.reactivex.flowables.a<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.j<T> f66585a;

        /* renamed from: b  reason: collision with root package name */
        private final long f66586b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f66587c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.h0 f66588d;

        n(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f66585a = jVar;
            this.f66586b = j4;
            this.f66587c = timeUnit;
            this.f66588d = h0Var;
        }

        @Override // java.util.concurrent.Callable
        public io.reactivex.flowables.a<T> call() {
            return this.f66585a.i5(this.f66586b, this.f66587c, this.f66588d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class o<T, R> implements w2.o<List<l3.b<? extends T>>, l3.b<? extends R>> {

        /* renamed from: a  reason: collision with root package name */
        private final w2.o<? super Object[], ? extends R> f66589a;

        o(w2.o<? super Object[], ? extends R> oVar) {
            this.f66589a = oVar;
        }

        @Override // w2.o
        /* renamed from: a */
        public l3.b<? extends R> apply(List<l3.b<? extends T>> list) {
            return io.reactivex.j.E8(list, this.f66589a, false, io.reactivex.j.V());
        }
    }

    private FlowableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> w2.o<T, l3.b<U>> a(w2.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return new c(oVar);
    }

    public static <T, U, R> w2.o<T, l3.b<R>> b(w2.o<? super T, ? extends l3.b<? extends U>> oVar, w2.c<? super T, ? super U, ? extends R> cVar) {
        return new e(cVar, oVar);
    }

    public static <T, U> w2.o<T, l3.b<T>> c(w2.o<? super T, ? extends l3.b<U>> oVar) {
        return new f(oVar);
    }

    public static <T> Callable<io.reactivex.flowables.a<T>> d(io.reactivex.j<T> jVar) {
        return new g(jVar);
    }

    public static <T> Callable<io.reactivex.flowables.a<T>> e(io.reactivex.j<T> jVar, int i2) {
        return new a(jVar, i2);
    }

    public static <T> Callable<io.reactivex.flowables.a<T>> f(io.reactivex.j<T> jVar, int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new b(jVar, i2, j4, timeUnit, h0Var);
    }

    public static <T> Callable<io.reactivex.flowables.a<T>> g(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new n(jVar, j4, timeUnit, h0Var);
    }

    public static <T, R> w2.o<io.reactivex.j<T>, l3.b<R>> h(w2.o<? super io.reactivex.j<T>, ? extends l3.b<R>> oVar, io.reactivex.h0 h0Var) {
        return new h(oVar, h0Var);
    }

    public static <T, S> w2.c<S, io.reactivex.i<T>, S> i(w2.b<S, io.reactivex.i<T>> bVar) {
        return new i(bVar);
    }

    public static <T, S> w2.c<S, io.reactivex.i<T>, S> j(w2.g<io.reactivex.i<T>> gVar) {
        return new j(gVar);
    }

    public static <T> w2.a k(l3.c<T> cVar) {
        return new k(cVar);
    }

    public static <T> w2.g<Throwable> l(l3.c<T> cVar) {
        return new l(cVar);
    }

    public static <T> w2.g<T> m(l3.c<T> cVar) {
        return new m(cVar);
    }

    public static <T, R> w2.o<List<l3.b<? extends T>>, l3.b<? extends R>> n(w2.o<? super Object[], ? extends R> oVar) {
        return new o(oVar);
    }
}
