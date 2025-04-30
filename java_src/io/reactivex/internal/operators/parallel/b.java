package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import org.reactivestreams.Subscriber;
/* compiled from: ParallelDoOnNextTry.java */
/* loaded from: classes5.dex */
public final class b<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f69511a;

    /* renamed from: b  reason: collision with root package name */
    final w2.g<? super T> f69512b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<? super Long, ? super Throwable, ParallelFailureHandling> f69513c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelDoOnNextTry.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f69514a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f69514a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69514a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69514a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: ParallelDoOnNextTry.java */
    /* renamed from: io.reactivex.internal.operators.parallel.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0462b<T> implements x2.a<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final x2.a<? super T> f69515a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super T> f69516b;

        /* renamed from: c  reason: collision with root package name */
        final w2.c<? super Long, ? super Throwable, ParallelFailureHandling> f69517c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f69518d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69519e;

        C0462b(x2.a<? super T> aVar, w2.g<? super T> gVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f69515a = aVar;
            this.f69516b = gVar;
            this.f69517c = cVar;
        }

        @Override // l3.d
        public void cancel() {
            this.f69518d.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69519e) {
                return;
            }
            this.f69519e = true;
            this.f69515a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69519e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69519e = true;
            this.f69515a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3) || this.f69519e) {
                return;
            }
            this.f69518d.request(1L);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69518d, dVar)) {
                this.f69518d = dVar;
                this.f69515a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f69518d.request(j4);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
        @Override // x2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean v0(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f69519e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                w2.g<? super T> r0 = r9.f69516b     // Catch: java.lang.Throwable -> L14
                r0.accept(r10)     // Catch: java.lang.Throwable -> L14
                x2.a<? super T> r0 = r9.f69515a
                boolean r10 = r0.v0(r10)
                return r10
            L14:
                r0 = move-exception
                io.reactivex.exceptions.a.b(r0)
                r4 = 1
                r5 = 2
                w2.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f69517c     // Catch: java.lang.Throwable -> L4c
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4c
                java.lang.Object r6 = r6.apply(r7, r0)     // Catch: java.lang.Throwable -> L4c
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.a.g(r6, r7)     // Catch: java.lang.Throwable -> L4c
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4c
                int[] r7 = io.reactivex.internal.operators.parallel.b.a.f69514a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r4) goto L8
                if (r6 == r5) goto L4b
                r10 = 3
                if (r6 == r10) goto L45
                r9.cancel()
                r9.onError(r0)
                return r1
            L45:
                r9.cancel()
                r9.onComplete()
            L4b:
                return r1
            L4c:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.b.C0462b.v0(java.lang.Object):boolean");
        }
    }

    /* compiled from: ParallelDoOnNextTry.java */
    /* loaded from: classes5.dex */
    static final class c<T> implements x2.a<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super T> f69520a;

        /* renamed from: b  reason: collision with root package name */
        final w2.g<? super T> f69521b;

        /* renamed from: c  reason: collision with root package name */
        final w2.c<? super Long, ? super Throwable, ParallelFailureHandling> f69522c;

        /* renamed from: d  reason: collision with root package name */
        l3.d f69523d;

        /* renamed from: e  reason: collision with root package name */
        boolean f69524e;

        c(l3.c<? super T> cVar, w2.g<? super T> gVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar2) {
            this.f69520a = cVar;
            this.f69521b = gVar;
            this.f69522c = cVar2;
        }

        @Override // l3.d
        public void cancel() {
            this.f69523d.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69524e) {
                return;
            }
            this.f69524e = true;
            this.f69520a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69524e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69524e = true;
            this.f69520a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3)) {
                return;
            }
            this.f69523d.request(1L);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69523d, dVar)) {
                this.f69523d = dVar;
                this.f69520a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            this.f69523d.request(j4);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
        @Override // x2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean v0(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f69524e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                r0 = 1
                w2.g<? super T> r4 = r9.f69521b     // Catch: java.lang.Throwable -> L14
                r4.accept(r10)     // Catch: java.lang.Throwable -> L14
                l3.c<? super T> r1 = r9.f69520a
                r1.onNext(r10)
                return r0
            L14:
                r4 = move-exception
                io.reactivex.exceptions.a.b(r4)
                r5 = 2
                w2.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f69522c     // Catch: java.lang.Throwable -> L4b
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4b
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L4b
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.a.g(r6, r7)     // Catch: java.lang.Throwable -> L4b
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4b
                int[] r7 = io.reactivex.internal.operators.parallel.b.a.f69514a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L8
                if (r6 == r5) goto L4a
                r10 = 3
                if (r6 == r10) goto L44
                r9.cancel()
                r9.onError(r4)
                return r1
            L44:
                r9.cancel()
                r9.onComplete()
            L4a:
                return r1
            L4b:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.b.c.v0(java.lang.Object):boolean");
        }
    }

    public b(io.reactivex.parallel.a<T> aVar, w2.g<? super T> gVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f69511a = aVar;
        this.f69512b = gVar;
        this.f69513c = cVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69511a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super T>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                Subscriber<? super T> subscriber = subscriberArr[i2];
                if (subscriber instanceof x2.a) {
                    subscriberArr2[i2] = new C0462b((x2.a) subscriber, this.f69512b, this.f69513c);
                } else {
                    subscriberArr2[i2] = new c(subscriber, this.f69512b, this.f69513c);
                }
            }
            this.f69511a.Q(subscriberArr2);
        }
    }
}
