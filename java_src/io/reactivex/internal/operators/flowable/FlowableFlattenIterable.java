package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class FlowableFlattenIterable<T, R> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final w2.o<? super T, ? extends Iterable<? extends R>> f66464c;

    /* renamed from: d  reason: collision with root package name */
    final int f66465d;

    /* loaded from: classes5.dex */
    static final class FlattenIterableSubscriber<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.o<T> {
        private static final long serialVersionUID = -3096000382929934955L;

        /* renamed from: a  reason: collision with root package name */
        final l3.c<? super R> f66466a;

        /* renamed from: b  reason: collision with root package name */
        final w2.o<? super T, ? extends Iterable<? extends R>> f66467b;

        /* renamed from: c  reason: collision with root package name */
        final int f66468c;

        /* renamed from: d  reason: collision with root package name */
        final int f66469d;

        /* renamed from: f  reason: collision with root package name */
        l3.d f66471f;

        /* renamed from: g  reason: collision with root package name */
        x2.o<T> f66472g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f66473h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f66474i;

        /* renamed from: k  reason: collision with root package name */
        Iterator<? extends R> f66476k;

        /* renamed from: l  reason: collision with root package name */
        int f66477l;

        /* renamed from: m  reason: collision with root package name */
        int f66478m;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<Throwable> f66475j = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f66470e = new AtomicLong();

        FlattenIterableSubscriber(l3.c<? super R> cVar, w2.o<? super T, ? extends Iterable<? extends R>> oVar, int i2) {
            this.f66466a = cVar;
            this.f66467b = oVar;
            this.f66468c = i2;
            this.f66469d = i2 - (i2 >> 2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:67:0x0121, code lost:
            if (r6 == null) goto L57;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void b() {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlattenIterable.FlattenIterableSubscriber.b():void");
        }

        @Override // l3.d
        public void cancel() {
            if (this.f66474i) {
                return;
            }
            this.f66474i = true;
            this.f66471f.cancel();
            if (getAndIncrement() == 0) {
                this.f66472g.clear();
            }
        }

        @Override // x2.o
        public void clear() {
            this.f66476k = null;
            this.f66472g.clear();
        }

        boolean d(boolean z3, boolean z4, l3.c<?> cVar, x2.o<?> oVar) {
            if (this.f66474i) {
                this.f66476k = null;
                oVar.clear();
                return true;
            } else if (z3) {
                if (this.f66475j.get() == null) {
                    if (z4) {
                        cVar.onComplete();
                        return true;
                    }
                    return false;
                }
                Throwable c4 = ExceptionHelper.c(this.f66475j);
                this.f66476k = null;
                oVar.clear();
                cVar.onError(c4);
                return true;
            } else {
                return false;
            }
        }

        void e(boolean z3) {
            if (z3) {
                int i2 = this.f66477l + 1;
                if (i2 == this.f66469d) {
                    this.f66477l = 0;
                    this.f66471f.request(i2);
                    return;
                }
                this.f66477l = i2;
            }
        }

        @Override // x2.o
        public boolean isEmpty() {
            return this.f66476k == null && this.f66472g.isEmpty();
        }

        @Override // l3.c
        public void onComplete() {
            if (this.f66473h) {
                return;
            }
            this.f66473h = true;
            b();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            if (!this.f66473h && ExceptionHelper.a(this.f66475j, th)) {
                this.f66473h = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            if (this.f66473h) {
                return;
            }
            if (this.f66478m == 0 && !this.f66472g.offer(t3)) {
                onError(new MissingBackpressureException("Queue is full?!"));
            } else {
                b();
            }
        }

        @Override // io.reactivex.o, l3.c
        public void onSubscribe(l3.d dVar) {
            if (SubscriptionHelper.validate(this.f66471f, dVar)) {
                this.f66471f = dVar;
                if (dVar instanceof x2.l) {
                    x2.l lVar = (x2.l) dVar;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f66478m = requestFusion;
                        this.f66472g = lVar;
                        this.f66473h = true;
                        this.f66466a.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f66478m = requestFusion;
                        this.f66472g = lVar;
                        this.f66466a.onSubscribe(this);
                        dVar.request(this.f66468c);
                        return;
                    }
                }
                this.f66472g = new SpscArrayQueue(this.f66468c);
                this.f66466a.onSubscribe(this);
                dVar.request(this.f66468c);
            }
        }

        @Override // x2.o
        @Nullable
        public R poll() throws Exception {
            Iterator<? extends R> it2 = this.f66476k;
            while (true) {
                if (it2 == null) {
                    T poll = this.f66472g.poll();
                    if (poll != null) {
                        it2 = this.f66467b.apply(poll).iterator();
                        if (it2.hasNext()) {
                            this.f66476k = it2;
                            break;
                        }
                        it2 = null;
                    } else {
                        return null;
                    }
                } else {
                    break;
                }
            }
            R r3 = (R) io.reactivex.internal.functions.a.g(it2.next(), "The iterator returned a null value");
            if (!it2.hasNext()) {
                this.f66476k = null;
            }
            return r3;
        }

        @Override // l3.d
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f66470e, j4);
                b();
            }
        }

        @Override // x2.k
        public int requestFusion(int i2) {
            return ((i2 & 1) == 0 || this.f66478m != 1) ? 0 : 1;
        }
    }

    public FlowableFlattenIterable(io.reactivex.j<T> jVar, w2.o<? super T, ? extends Iterable<? extends R>> oVar, int i2) {
        super(jVar);
        this.f66464c = oVar;
        this.f66465d = i2;
    }

    @Override // io.reactivex.j
    public void h6(l3.c<? super R> cVar) {
        io.reactivex.j<T> jVar = this.f67288b;
        if (jVar instanceof Callable) {
            try {
                Object call = ((Callable) jVar).call();
                if (call == null) {
                    EmptySubscription.complete(cVar);
                    return;
                }
                try {
                    FlowableFromIterable.J8(cVar, this.f66464c.apply(call).iterator());
                    return;
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    EmptySubscription.error(th, cVar);
                    return;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptySubscription.error(th2, cVar);
                return;
            }
        }
        jVar.g6(new FlattenIterableSubscriber(cVar, this.f66464c, this.f66465d));
    }
}
