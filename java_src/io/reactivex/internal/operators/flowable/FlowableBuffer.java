package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public final class FlowableBuffer<T, C extends Collection<? super T>> extends io.reactivex.internal.operators.flowable.a<T, C> {

    /* renamed from: c  reason: collision with root package name */
    final int f66154c;

    /* renamed from: d  reason: collision with root package name */
    final int f66155d;

    /* renamed from: e  reason: collision with root package name */
    final Callable<C> f66156e;

    /* loaded from: classes5.dex */
    static final class PublisherBufferOverlappingSubscriber<T, C extends Collection<? super T>> extends AtomicLong implements io.reactivex.o<T>, l3.d, w2.e {
        private static final long serialVersionUID = -7370244972039324525L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super C> f66157a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f66158b;

        /* renamed from: c  reason: collision with root package name */
        final int f66159c;

        /* renamed from: d  reason: collision with root package name */
        final int f66160d;

        /* renamed from: g  reason: collision with root package name */
        l3.d f66163g;

        /* renamed from: h  reason: collision with root package name */
        boolean f66164h;

        /* renamed from: i  reason: collision with root package name */
        int f66165i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f66166j;

        /* renamed from: k  reason: collision with root package name */
        long f66167k;

        /* renamed from: f  reason: collision with root package name */
        final AtomicBoolean f66162f = new AtomicBoolean();

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<C> f66161e = new ArrayDeque<>();

        PublisherBufferOverlappingSubscriber(l3.c<? super C> cVar, int i2, int i4, Callable<C> callable) {
            this.f66157a = cVar;
            this.f66159c = i2;
            this.f66160d = i4;
            this.f66158b = callable;
        }

        @Override // w2.e
        public boolean a() {
            return this.f66166j;
        }

        @Override // l3.d
        public void cancel() {
            this.f66166j = true;
            this.f66163g.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66164h) {
                return;
            }
            this.f66164h = true;
            long j4 = this.f66167k;
            if (j4 != 0) {
                io.reactivex.internal.util.b.e(this, j4);
            }
            io.reactivex.internal.util.n.g(this.f66157a, this.f66161e, this, this);
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66164h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66164h = true;
            this.f66161e.clear();
            this.f66157a.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66164h) {
                return;
            }
            ArrayDeque<C> arrayDeque = this.f66161e;
            int i2 = this.f66165i;
            int i4 = i2 + 1;
            if (i2 == 0) {
                try {
                    arrayDeque.offer((Collection) io.reactivex.internal.functions.a.g(this.f66158b.call(), "The bufferSupplier returned a null buffer"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            Collection collection = (Collection) arrayDeque.peek();
            if (collection != null && collection.size() + 1 == this.f66159c) {
                arrayDeque.poll();
                collection.add(t3);
                this.f66167k++;
                this.f66157a.onNext(collection);
            }
            Iterator it2 = arrayDeque.iterator();
            while (it2.hasNext()) {
                ((Collection) it2.next()).add(t3);
            }
            if (i4 == this.f66160d) {
                i4 = 0;
            }
            this.f66165i = i4;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66163g, dVar)) {
                this.f66163g = dVar;
                this.f66157a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (!SubscriptionHelper.validate(j4) || io.reactivex.internal.util.n.i(j4, this.f66157a, this.f66161e, this, this)) {
                return;
            }
            if (!this.f66162f.get() && this.f66162f.compareAndSet(false, true)) {
                this.f66163g.request(io.reactivex.internal.util.b.c(this.f66159c, io.reactivex.internal.util.b.d(this.f66160d, j4 - 1)));
                return;
            }
            this.f66163g.request(io.reactivex.internal.util.b.d(this.f66160d, j4));
        }
    }

    /* loaded from: classes5.dex */
    static final class PublisherBufferSkipSubscriber<T, C extends Collection<? super T>> extends AtomicInteger implements io.reactivex.o<T>, l3.d {
        private static final long serialVersionUID = -5616169793639412593L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super C> f66168a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f66169b;

        /* renamed from: c  reason: collision with root package name */
        final int f66170c;

        /* renamed from: d  reason: collision with root package name */
        final int f66171d;

        /* renamed from: e  reason: collision with root package name */
        C f66172e;

        /* renamed from: f  reason: collision with root package name */
        l3.d f66173f;

        /* renamed from: g  reason: collision with root package name */
        boolean f66174g;

        /* renamed from: h  reason: collision with root package name */
        int f66175h;

        PublisherBufferSkipSubscriber(l3.c<? super C> cVar, int i2, int i4, Callable<C> callable) {
            this.f66168a = cVar;
            this.f66170c = i2;
            this.f66171d = i4;
            this.f66169b = callable;
        }

        @Override // l3.d
        public void cancel() {
            this.f66173f.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66174g) {
                return;
            }
            this.f66174g = true;
            C c4 = this.f66172e;
            this.f66172e = null;
            if (c4 != null) {
                this.f66168a.onNext(c4);
            }
            this.f66168a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66174g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66174g = true;
            this.f66172e = null;
            this.f66168a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66174g) {
                return;
            }
            C c4 = this.f66172e;
            int i2 = this.f66175h;
            int i4 = i2 + 1;
            if (i2 == 0) {
                try {
                    c4 = (C) io.reactivex.internal.functions.a.g(this.f66169b.call(), "The bufferSupplier returned a null buffer");
                    this.f66172e = c4;
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            if (c4 != null) {
                c4.add(t3);
                if (c4.size() == this.f66170c) {
                    this.f66172e = null;
                    this.f66168a.onNext(c4);
                }
            }
            if (i4 == this.f66171d) {
                i4 = 0;
            }
            this.f66175h = i4;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66173f, dVar)) {
                this.f66173f = dVar;
                this.f66168a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f66173f.request(io.reactivex.internal.util.b.c(io.reactivex.internal.util.b.d(j4, this.f66170c), io.reactivex.internal.util.b.d(this.f66171d - this.f66170c, j4 - 1)));
                    return;
                }
                this.f66173f.request(io.reactivex.internal.util.b.d(this.f66171d, j4));
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T, C extends Collection<? super T>> implements io.reactivex.o<T>, l3.d {

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super C> f66176a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f66177b;

        /* renamed from: c  reason: collision with root package name */
        final int f66178c;

        /* renamed from: d  reason: collision with root package name */
        C f66179d;

        /* renamed from: e  reason: collision with root package name */
        l3.d f66180e;

        /* renamed from: f  reason: collision with root package name */
        boolean f66181f;

        /* renamed from: g  reason: collision with root package name */
        int f66182g;

        a(l3.c<? super C> cVar, int i2, Callable<C> callable) {
            this.f66176a = cVar;
            this.f66178c = i2;
            this.f66177b = callable;
        }

        @Override // l3.d
        public void cancel() {
            this.f66180e.cancel();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66181f) {
                return;
            }
            this.f66181f = true;
            C c4 = this.f66179d;
            if (c4 != null && !c4.isEmpty()) {
                this.f66176a.onNext(c4);
            }
            this.f66176a.onComplete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (this.f66181f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f66181f = true;
            this.f66176a.onError(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66181f) {
                return;
            }
            C c4 = this.f66179d;
            if (c4 == null) {
                try {
                    c4 = (C) io.reactivex.internal.functions.a.g(this.f66177b.call(), "The bufferSupplier returned a null buffer");
                    this.f66179d = c4;
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            c4.add(t3);
            int i2 = this.f66182g + 1;
            if (i2 == this.f66178c) {
                this.f66182g = 0;
                this.f66179d = null;
                this.f66176a.onNext(c4);
                return;
            }
            this.f66182g = i2;
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66180e, dVar)) {
                this.f66180e = dVar;
                this.f66176a.onSubscribe(this);
            }
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                this.f66180e.request(io.reactivex.internal.util.b.d(j4, this.f66178c));
            }
        }
    }

    public FlowableBuffer(io.reactivex.j<T> jVar, int i2, int i4, Callable<C> callable) {
        super(jVar);
        this.f66154c = i2;
        this.f66155d = i4;
        this.f66156e = callable;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super C> cVar) {
        int i2 = this.f66154c;
        int i4 = this.f66155d;
        if (i2 == i4) {
            this.f67288b.g6(new a(cVar, i2, this.f66156e));
        } else if (i4 > i2) {
            this.f67288b.g6(new PublisherBufferSkipSubscriber(cVar, this.f66154c, this.f66155d, this.f66156e));
        } else {
            this.f67288b.g6(new PublisherBufferOverlappingSubscriber(cVar, this.f66154c, this.f66155d, this.f66156e));
        }
    }
}
