package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import org.reactivestreams.Subscriber;
import w2.r;
/* compiled from: ParallelFilterTry.java */
/* loaded from: classes5.dex */
public final class d<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f69532a;

    /* renamed from: b  reason: collision with root package name */
    final r<? super T> f69533b;

    /* renamed from: c  reason: collision with root package name */
    final w2.c<? super Long, ? super Throwable, ParallelFailureHandling> f69534c;

    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f69535a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f69535a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69535a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69535a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes5.dex */
    public static abstract class b<T> implements x2.a<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final r<? super T> f69536a;

        /* renamed from: b  reason: collision with root package name */
        final w2.c<? super Long, ? super Throwable, ParallelFailureHandling> f69537b;

        /* renamed from: c  reason: collision with root package name */
        l3.d f69538c;

        /* renamed from: d  reason: collision with root package name */
        boolean f69539d;

        b(r<? super T> rVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f69536a = rVar;
            this.f69537b = cVar;
        }

        @Override // l3.d
        public final void cancel() {
            this.f69538c.cancel();
        }

        @Override // l3.c
        public final void onNext(T t3) {
            if (v0(t3) || this.f69539d) {
                return;
            }
            this.f69538c.request(1L);
        }

        @Override // l3.d
        public final void request(long j4) {
            this.f69538c.request(j4);
        }
    }

    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes5.dex */
    static final class c<T> extends b<T> {

        /* renamed from: e  reason: collision with root package name */
        final x2.a<? super T> f69540e;

        c(x2.a<? super T> aVar, r<? super T> rVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            super(rVar, cVar);
            this.f69540e = aVar;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69539d) {
                return;
            }
            this.f69539d = true;
            this.f69540e.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69539d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69539d = true;
            this.f69540e.onError(th);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69538c, dVar)) {
                this.f69538c = dVar;
                this.f69540e.onSubscribe(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
        @Override // x2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean v0(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f69539d
                r1 = 0
                if (r0 != 0) goto L66
                r2 = 0
            L7:
                r0 = 1
                w2.r<? super T> r4 = r9.f69536a     // Catch: java.lang.Throwable -> L1a
                boolean r2 = r4.test(r10)     // Catch: java.lang.Throwable -> L1a
                if (r2 == 0) goto L19
                x2.a<? super T> r2 = r9.f69540e
                boolean r10 = r2.v0(r10)
                if (r10 == 0) goto L19
                r1 = 1
            L19:
                return r1
            L1a:
                r4 = move-exception
                io.reactivex.exceptions.a.b(r4)
                r5 = 2
                w2.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f69537b     // Catch: java.lang.Throwable -> L51
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L51
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L51
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.a.g(r6, r7)     // Catch: java.lang.Throwable -> L51
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L51
                int[] r7 = io.reactivex.internal.operators.parallel.d.a.f69535a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L7
                if (r6 == r5) goto L50
                r10 = 3
                if (r6 == r10) goto L4a
                r9.cancel()
                r9.onError(r4)
                return r1
            L4a:
                r9.cancel()
                r9.onComplete()
            L50:
                return r1
            L51:
                r10 = move-exception
                io.reactivex.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.exceptions.CompositeException r2 = new io.reactivex.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>(r3)
                r9.onError(r2)
            L66:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.d.c.v0(java.lang.Object):boolean");
        }
    }

    /* compiled from: ParallelFilterTry.java */
    /* renamed from: io.reactivex.internal.operators.parallel.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0464d<T> extends b<T> {

        /* renamed from: e  reason: collision with root package name */
        final l3.c<? super T> f69541e;

        C0464d(l3.c<? super T> cVar, r<? super T> rVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar2) {
            super(rVar, cVar2);
            this.f69541e = cVar;
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f69539d) {
                return;
            }
            this.f69539d = true;
            this.f69541e.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f69539d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f69539d = true;
            this.f69541e.onError(th);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f69538c, dVar)) {
                this.f69538c = dVar;
                this.f69541e.onSubscribe(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
        @Override // x2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean v0(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f69539d
                r1 = 0
                if (r0 != 0) goto L63
                r2 = 0
            L7:
                r0 = 1
                w2.r<? super T> r4 = r9.f69536a     // Catch: java.lang.Throwable -> L17
                boolean r2 = r4.test(r10)     // Catch: java.lang.Throwable -> L17
                if (r2 == 0) goto L16
                l3.c<? super T> r1 = r9.f69541e
                r1.onNext(r10)
                return r0
            L16:
                return r1
            L17:
                r4 = move-exception
                io.reactivex.exceptions.a.b(r4)
                r5 = 2
                w2.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f69537b     // Catch: java.lang.Throwable -> L4e
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4e
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L4e
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.a.g(r6, r7)     // Catch: java.lang.Throwable -> L4e
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4e
                int[] r7 = io.reactivex.internal.operators.parallel.d.a.f69535a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L7
                if (r6 == r5) goto L4d
                r10 = 3
                if (r6 == r10) goto L47
                r9.cancel()
                r9.onError(r4)
                return r1
            L47:
                r9.cancel()
                r9.onComplete()
            L4d:
                return r1
            L4e:
                r10 = move-exception
                io.reactivex.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.exceptions.CompositeException r2 = new io.reactivex.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>(r3)
                r9.onError(r2)
            L63:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.d.C0464d.v0(java.lang.Object):boolean");
        }
    }

    public d(io.reactivex.parallel.a<T> aVar, r<? super T> rVar, w2.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f69532a = aVar;
        this.f69533b = rVar;
        this.f69534c = cVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f69532a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(Subscriber<? super T>[] subscriberArr) {
        if (U(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new l3.c[length];
            for (int i2 = 0; i2 < length; i2++) {
                Subscriber<? super T> subscriber = subscriberArr[i2];
                if (subscriber instanceof x2.a) {
                    subscriberArr2[i2] = new c((x2.a) subscriber, this.f69533b, this.f69534c);
                } else {
                    subscriberArr2[i2] = new C0464d(subscriber, this.f69533b, this.f69534c);
                }
            }
            this.f69532a.Q(subscriberArr2);
        }
    }
}
