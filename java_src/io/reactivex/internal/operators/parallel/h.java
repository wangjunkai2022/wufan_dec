package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import org.reactivestreams.Subscriber;
import w2.o;
/* compiled from: ParallelMapTry.java */
/* loaded from: classes5.dex */
public final class h<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f69558a;

    /* renamed from: b  reason: collision with root package name */
    final o<? super T, ? extends R> f69559b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<? super Long, ? super Throwable, ParallelFailureHandling> f69560c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f69561a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f69561a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69561a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69561a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes5.dex */
    static final class b<T, R> implements x2.a<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final x2.a<? super R> f69562a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends R> f69563b;

        /* renamed from: c  reason: collision with root package name */
        final w2.c<? super Long, ? super Throwable, ParallelFailureHandling> f69564c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f69565d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69566e;

        b(x2.a<? super R> aVar, o<? super T, ? extends R> oVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f69562a = aVar;
            this.f69563b = oVar;
            this.f69564c = cVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f69565d.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69566e) {
                return;
            }
            this.f69566e = true;
            this.f69562a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69566e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69566e = true;
            this.f69562a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3) || this.f69566e) {
                return;
            }
            this.f69565d.request(1L);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69565d, dVar)) {
                this.f69565d = dVar;
                this.f69562a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f69565d.request(j4);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
        @Override // x2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean v0(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f69566e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                w2.o<? super T, ? extends R> r0 = r9.f69563b     // Catch: java.lang.Throwable -> L1b
                java.lang.Object r0 = r0.apply(r10)     // Catch: java.lang.Throwable -> L1b
                java.lang.String r4 = "The mapper returned a null value"
                java.lang.Object r10 = io.reactivex.internal.functions.a.g(r0, r4)     // Catch: java.lang.Throwable -> L1b
                x2.a<? super R> r0 = r9.f69562a
                boolean r10 = r0.v0(r10)
                return r10
            L1b:
                r0 = move-exception
                io.reactivex.exceptions.a.b(r0)
                r4 = 1
                r5 = 2
                w2.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f69564c     // Catch: java.lang.Throwable -> L53
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L53
                java.lang.Object r6 = r6.apply(r7, r0)     // Catch: java.lang.Throwable -> L53
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.a.g(r6, r7)     // Catch: java.lang.Throwable -> L53
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L53
                int[] r7 = io.reactivex.internal.operators.parallel.h.a.f69561a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r4) goto L8
                if (r6 == r5) goto L52
                r10 = 3
                if (r6 == r10) goto L4c
                r9.cancel()
                r9.onError(r0)
                return r1
            L4c:
                r9.cancel()
                r9.onComplete()
            L52:
                return r1
            L53:
                r10 = move-exception
                io.reactivex.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.exceptions.CompositeException r2 = new io.reactivex.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r0
                r3[r4] = r10
                r2.<init>(r3)
                r9.onError(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.h.b.v0(java.lang.Object):boolean");
        }
    }

    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes5.dex */
    static final class c<T, R> implements x2.a<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f69567a;

        /* renamed from: b  reason: collision with root package name */
        final o<? super T, ? extends R> f69568b;

        /* renamed from: c  reason: collision with root package name */
        final w2.c<? super Long, ? super Throwable, ParallelFailureHandling> f69569c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f69570d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69571e;

        c(l3.c<? super R> cVar, o<? super T, ? extends R> oVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar2) {
            this.f69567a = cVar;
            this.f69568b = oVar;
            this.f69569c = cVar2;
        }

        @Override // l3.d
        public void cancel() {
            this.f69570d.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69571e) {
                return;
            }
            this.f69571e = true;
            this.f69567a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69571e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69571e = true;
            this.f69567a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3) || this.f69571e) {
                return;
            }
            this.f69570d.request(1L);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69570d, dVar)) {
                this.f69570d = dVar;
                this.f69567a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f69570d.request(j4);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
        @Override // x2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean v0(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f69571e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                r0 = 1
                w2.o<? super T, ? extends R> r4 = r9.f69568b     // Catch: java.lang.Throwable -> L1b
                java.lang.Object r4 = r4.apply(r10)     // Catch: java.lang.Throwable -> L1b
                java.lang.String r5 = "The mapper returned a null value"
                java.lang.Object r10 = io.reactivex.internal.functions.a.g(r4, r5)     // Catch: java.lang.Throwable -> L1b
                l3.c<? super R> r1 = r9.f69567a
                r1.onNext(r10)
                return r0
            L1b:
                r4 = move-exception
                io.reactivex.exceptions.a.b(r4)
                r5 = 2
                w2.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f69569c     // Catch: java.lang.Throwable -> L52
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L52
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L52
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.a.g(r6, r7)     // Catch: java.lang.Throwable -> L52
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L52
                int[] r7 = io.reactivex.internal.operators.parallel.h.a.f69561a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L8
                if (r6 == r5) goto L51
                r10 = 3
                if (r6 == r10) goto L4b
                r9.cancel()
                r9.onError(r4)
                return r1
            L4b:
                r9.cancel()
                r9.onComplete()
            L51:
                return r1
            L52:
                r10 = move-exception
                io.reactivex.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.exceptions.CompositeException r2 = new io.reactivex.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>(r3)
                r9.onError(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.h.c.v0(java.lang.Object):boolean");
        }
    }

    public h(io.reactivex.parallel.a<T> aVar, o<? super T, ? extends R> oVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f69558a = aVar;
        this.f69559b = oVar;
        this.f69560c = cVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69558a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super R>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                Subscriber<? super R> subscriber = subscriberArr[i2];
                if (subscriber instanceof x2.a) {
                    subscriberArr2[i2] = new b((x2.a) subscriber, this.f69559b, this.f69560c);
                } else {
                    subscriberArr2[i2] = new c(subscriber, this.f69559b, this.f69560c);
                }
            }
            this.f69558a.Q(subscriberArr2);
        }
    }
}
