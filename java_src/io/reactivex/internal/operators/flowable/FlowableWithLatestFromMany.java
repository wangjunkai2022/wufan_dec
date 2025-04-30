package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.reactivestreams.Publisher;
/* loaded from: classes5.dex */
public final class FlowableWithLatestFromMany<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    final Publisher<?>[] f67253c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    final Iterable<? extends l3.b<?>> f67254d;

    /* renamed from: e  reason: collision with root package name */
    final w2.o<? super Object[], R> f67255e;

    /* loaded from: classes5.dex */
    static final class WithLatestFromSubscriber<T, R> extends AtomicInteger implements x2.a<T>, l3.d {
        private static final long serialVersionUID = 1577321883966341961L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f67256a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super Object[], R> f67257b;

        /* renamed from: c  reason: collision with root package name */
        final WithLatestInnerSubscriber[] f67258c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceArray<Object> f67259d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<l3.d> f67260e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f67261f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f67262g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f67263h;

        WithLatestFromSubscriber(l3.c<? super R> cVar, w2.o<? super Object[], R> oVar, int i2) {
            this.f67256a = cVar;
            this.f67257b = oVar;
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = new WithLatestInnerSubscriber[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                withLatestInnerSubscriberArr[i4] = new WithLatestInnerSubscriber(this, i4);
            }
            this.f67258c = withLatestInnerSubscriberArr;
            this.f67259d = new AtomicReferenceArray<>(i2);
            this.f67260e = new AtomicReference<>();
            this.f67261f = new AtomicLong();
            this.f67262g = new AtomicThrowable();
        }

        void a(int i2) {
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = this.f67258c;
            for (int i4 = 0; i4 < withLatestInnerSubscriberArr.length; i4++) {
                if (i4 != i2) {
                    withLatestInnerSubscriberArr[i4].a();
                }
            }
        }

        void b(int i2, boolean z3) {
            if (z3) {
                return;
            }
            this.f67263h = true;
            SubscriptionHelper.cancel(this.f67260e);
            a(i2);
            io.reactivex.internal.util.g.b(this.f67256a, this, this.f67262g);
        }

        void c(int i2, Throwable th) {
            this.f67263h = true;
            SubscriptionHelper.cancel(this.f67260e);
            a(i2);
            io.reactivex.internal.util.g.d(this.f67256a, th, this, this.f67262g);
        }

        @Override // l3.d
        public void cancel() {
            SubscriptionHelper.cancel(this.f67260e);
            for (WithLatestInnerSubscriber withLatestInnerSubscriber : this.f67258c) {
                withLatestInnerSubscriber.a();
            }
        }

        void d(int i2, Object obj) {
            this.f67259d.set(i2, obj);
        }

        void e(Publisher<?>[] publisherArr, int i2) {
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = this.f67258c;
            AtomicReference<l3.d> atomicReference = this.f67260e;
            for (int i4 = 0; i4 < i2 && !SubscriptionHelper.isCancelled(atomicReference.get()); i4++) {
                publisherArr[i4].c(withLatestInnerSubscriberArr[i4]);
            }
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f67263h) {
                return;
            }
            this.f67263h = true;
            a(-1);
            io.reactivex.internal.util.g.b(this.f67256a, this, this.f67262g);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f67263h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f67263h = true;
            a(-1);
            io.reactivex.internal.util.g.d(this.f67256a, th, this, this.f67262g);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (v0(t3) || this.f67263h) {
                return;
            }
            this.f67260e.get().request(1L);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f67260e, this.f67261f, dVar);
        }

        @Override // l3.d
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f67260e, this.f67261f, j4);
        }

        @Override // x2.a
        public boolean v0(T t3) {
            if (this.f67263h) {
                return false;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f67259d;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            objArr[0] = t3;
            int i2 = 0;
            while (i2 < length) {
                Object obj = atomicReferenceArray.get(i2);
                if (obj == null) {
                    return false;
                }
                i2++;
                objArr[i2] = obj;
            }
            try {
                io.reactivex.internal.util.g.f(this.f67256a, io.reactivex.internal.functions.a.g(this.f67257b.apply(objArr), "The combiner returned a null value"), this, this.f67262g);
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class WithLatestInnerSubscriber extends AtomicReference<l3.d> implements io.reactivex.o<Object> {
        private static final long serialVersionUID = 3256684027868224024L;

        /* renamed from: a  reason: collision with root package name */
        final WithLatestFromSubscriber<?, ?> f67264a;

        /* renamed from: b  reason: collision with root package name */
        final int f67265b;

        /* renamed from: c  reason: collision with root package name */
        boolean f67266c;

        WithLatestInnerSubscriber(WithLatestFromSubscriber<?, ?> withLatestFromSubscriber, int i2) {
            this.f67264a = withLatestFromSubscriber;
            this.f67265b = i2;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // l3.c
        public void onComplete() {
            this.f67264a.b(this.f67265b, this.f67266c);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67264a.c(this.f67265b, th);
        }

        @Override // l3.c
        public void onNext(Object obj) {
            if (!this.f67266c) {
                this.f67266c = true;
            }
            this.f67264a.d(this.f67265b, obj);
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }
    }

    /* loaded from: classes5.dex */
    final class a implements w2.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // w2.o
        public R apply(T t3) throws Exception {
            return (R) io.reactivex.internal.functions.a.g(FlowableWithLatestFromMany.this.f67255e.apply(new Object[]{t3}), "The combiner returned a null value");
        }
    }

    public FlowableWithLatestFromMany(@NonNull io.reactivex.j<T> jVar, @NonNull Publisher<?>[] publisherArr, w2.o<? super Object[], R> oVar) {
        super(jVar);
        this.f67253c = publisherArr;
        this.f67254d = null;
        this.f67255e = oVar;
    }

    @Override // io.reactivex.j
    protected void h6(l3.c<? super R> cVar) {
        int length;
        l3.b[] bVarArr = this.f67253c;
        if (bVarArr == null) {
            bVarArr = new l3.b[8];
            try {
                length = 0;
                for (l3.b<?> bVar : this.f67254d) {
                    if (length == bVarArr.length) {
                        bVarArr = (l3.b[]) Arrays.copyOf(bVarArr, (length >> 1) + length);
                    }
                    int i2 = length + 1;
                    bVarArr[length] = bVar;
                    length = i2;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptySubscription.error(th, cVar);
                return;
            }
        } else {
            length = bVarArr.length;
        }
        if (length == 0) {
            new q0(this.f67288b, new a()).h6(cVar);
            return;
        }
        WithLatestFromSubscriber withLatestFromSubscriber = new WithLatestFromSubscriber(cVar, this.f67255e, length);
        cVar.onSubscribe(withLatestFromSubscriber);
        withLatestFromSubscriber.e(bVarArr, length);
        this.f67288b.g6(withLatestFromSubscriber);
    }

    public FlowableWithLatestFromMany(@NonNull io.reactivex.j<T> jVar, @NonNull Iterable<? extends l3.b<?>> iterable, @NonNull w2.o<? super Object[], R> oVar) {
        super(jVar);
        this.f67253c = null;
        this.f67254d = iterable;
        this.f67255e = oVar;
    }
}
