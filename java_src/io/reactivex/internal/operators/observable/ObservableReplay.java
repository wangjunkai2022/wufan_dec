package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class ObservableReplay<T> extends io.reactivex.observables.a<T> implements x2.g<T>, io.reactivex.internal.disposables.c {

    /* renamed from: e  reason: collision with root package name */
    static final a f68595e = new i();

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f68596a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<ReplayObserver<T>> f68597b;

    /* renamed from: c  reason: collision with root package name */
    final a<T> f68598c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.e0<T> f68599d;

    /* loaded from: classes5.dex */
    static abstract class BoundedReplayBuffer<T> extends AtomicReference<Node> implements e<T> {
        private static final long serialVersionUID = 2346567790059478686L;

        /* renamed from: a  reason: collision with root package name */
        Node f68600a;

        /* renamed from: b  reason: collision with root package name */
        int f68601b;

        BoundedReplayBuffer() {
            Node node = new Node(null);
            this.f68600a = node;
            set(node);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.e
        public final void a(T t3) {
            c(new Node(e(NotificationLite.next(t3))));
            n();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.e
        public final void b(InnerDisposable<T> innerDisposable) {
            if (innerDisposable.getAndIncrement() != 0) {
                return;
            }
            int i2 = 1;
            do {
                Node node = (Node) innerDisposable.a();
                if (node == null) {
                    node = f();
                    innerDisposable.f68604c = node;
                }
                while (!innerDisposable.isDisposed()) {
                    Node node2 = node.get();
                    if (node2 != null) {
                        if (NotificationLite.accept(i(node2.f68606a), innerDisposable.f68603b)) {
                            innerDisposable.f68604c = null;
                            return;
                        }
                        node = node2;
                    } else {
                        innerDisposable.f68604c = node;
                        i2 = innerDisposable.addAndGet(-i2);
                    }
                }
                return;
            } while (i2 != 0);
        }

        final void c(Node node) {
            this.f68600a.set(node);
            this.f68600a = node;
            this.f68601b++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.e
        public final void complete() {
            c(new Node(e(NotificationLite.complete())));
            o();
        }

        final void d(Collection<? super T> collection) {
            Node f4 = f();
            while (true) {
                f4 = f4.get();
                if (f4 == null) {
                    return;
                }
                Object i2 = i(f4.f68606a);
                if (NotificationLite.isComplete(i2) || NotificationLite.isError(i2)) {
                    return;
                }
                collection.add((Object) NotificationLite.getValue(i2));
            }
        }

        Object e(Object obj) {
            return obj;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.e
        public final void error(Throwable th) {
            c(new Node(e(NotificationLite.error(th))));
            o();
        }

        Node f() {
            return get();
        }

        boolean g() {
            Object obj = this.f68600a.f68606a;
            return obj != null && NotificationLite.isComplete(i(obj));
        }

        boolean h() {
            Object obj = this.f68600a.f68606a;
            return obj != null && NotificationLite.isError(i(obj));
        }

        Object i(Object obj) {
            return obj;
        }

        final void j() {
            this.f68601b--;
            l(get().get());
        }

        final void k(int i2) {
            Node node = get();
            while (i2 > 0) {
                node = node.get();
                i2--;
                this.f68601b--;
            }
            l(node);
        }

        final void l(Node node) {
            set(node);
        }

        final void m() {
            Node node = get();
            if (node.f68606a != null) {
                Node node2 = new Node(null);
                node2.lazySet(node.get());
                set(node2);
            }
        }

        abstract void n();

        void o() {
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class InnerDisposable<T> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 2728361546769921047L;

        /* renamed from: a  reason: collision with root package name */
        final ReplayObserver<T> f68602a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super T> f68603b;

        /* renamed from: c  reason: collision with root package name */
        Object f68604c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f68605d;

        InnerDisposable(ReplayObserver<T> replayObserver, io.reactivex.g0<? super T> g0Var) {
            this.f68602a = replayObserver;
            this.f68603b = g0Var;
        }

        <U> U a() {
            return (U) this.f68604c;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            if (this.f68605d) {
                return;
            }
            this.f68605d = true;
            this.f68602a.b(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68605d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;

        /* renamed from: a  reason: collision with root package name */
        final Object f68606a;

        Node(Object obj) {
            this.f68606a = obj;
        }
    }

    /* loaded from: classes5.dex */
    static final class ReplayObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.g0<T>, io.reactivex.disposables.b {

        /* renamed from: e  reason: collision with root package name */
        static final InnerDisposable[] f68607e = new InnerDisposable[0];

        /* renamed from: f  reason: collision with root package name */
        static final InnerDisposable[] f68608f = new InnerDisposable[0];
        private static final long serialVersionUID = -533785617179540163L;

        /* renamed from: a  reason: collision with root package name */
        final e<T> f68609a;

        /* renamed from: b  reason: collision with root package name */
        boolean f68610b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<InnerDisposable[]> f68611c = new AtomicReference<>(f68607e);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f68612d = new AtomicBoolean();

        ReplayObserver(e<T> eVar) {
            this.f68609a = eVar;
        }

        boolean a(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.f68611c.get();
                if (innerDisposableArr == f68608f) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[length + 1];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!this.f68611c.compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        void b(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.f68611c.get();
                int length = innerDisposableArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = -1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (innerDisposableArr[i4].equals(innerDisposable)) {
                        i2 = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    innerDisposableArr2 = f68607e;
                } else {
                    InnerDisposable[] innerDisposableArr3 = new InnerDisposable[length - 1];
                    System.arraycopy(innerDisposableArr, 0, innerDisposableArr3, 0, i2);
                    System.arraycopy(innerDisposableArr, i2 + 1, innerDisposableArr3, i2, (length - i2) - 1);
                    innerDisposableArr2 = innerDisposableArr3;
                }
            } while (!this.f68611c.compareAndSet(innerDisposableArr, innerDisposableArr2));
        }

        void c() {
            for (InnerDisposable<T> innerDisposable : this.f68611c.get()) {
                this.f68609a.b(innerDisposable);
            }
        }

        void d() {
            for (InnerDisposable<T> innerDisposable : this.f68611c.getAndSet(f68608f)) {
                this.f68609a.b(innerDisposable);
            }
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68611c.set(f68608f);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68611c.get() == f68608f;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f68610b) {
                return;
            }
            this.f68610b = true;
            this.f68609a.complete();
            d();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (!this.f68610b) {
                this.f68610b = true;
                this.f68609a.error(th);
                d();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            if (this.f68610b) {
                return;
            }
            this.f68609a.a(t3);
            c();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.setOnce(this, bVar)) {
                c();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.h0 f68613c;

        /* renamed from: d  reason: collision with root package name */
        final long f68614d;

        /* renamed from: e  reason: collision with root package name */
        final TimeUnit f68615e;

        /* renamed from: f  reason: collision with root package name */
        final int f68616f;

        SizeAndTimeBoundReplayBuffer(int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f68613c = h0Var;
            this.f68616f = i2;
            this.f68614d = j4;
            this.f68615e = timeUnit;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        Object e(Object obj) {
            return new io.reactivex.schedulers.d(obj, this.f68613c.d(this.f68615e), this.f68615e);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        Node f() {
            Node node;
            long d4 = this.f68613c.d(this.f68615e) - this.f68614d;
            Node node2 = get();
            Node node3 = node2.get();
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                if (node2 != null) {
                    io.reactivex.schedulers.d dVar = (io.reactivex.schedulers.d) node2.f68606a;
                    if (NotificationLite.isComplete(dVar.d()) || NotificationLite.isError(dVar.d()) || dVar.a() > d4) {
                        break;
                    }
                    node3 = node2.get();
                } else {
                    break;
                }
            }
            return node;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        Object i(Object obj) {
            return ((io.reactivex.schedulers.d) obj).d();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        void n() {
            Node node;
            long d4 = this.f68613c.d(this.f68615e) - this.f68614d;
            Node node2 = get();
            Node node3 = node2.get();
            int i2 = 0;
            while (true) {
                Node node4 = node3;
                node = node2;
                node2 = node4;
                if (node2 != null) {
                    int i4 = this.f68601b;
                    if (i4 > this.f68616f) {
                        i2++;
                        this.f68601b = i4 - 1;
                        node3 = node2.get();
                    } else if (((io.reactivex.schedulers.d) node2.f68606a).a() > d4) {
                        break;
                    } else {
                        i2++;
                        this.f68601b--;
                        node3 = node2.get();
                    }
                } else {
                    break;
                }
            }
            if (i2 != 0) {
                l(node);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
            l(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
            return;
         */
        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void o() {
            /*
                r10 = this;
                io.reactivex.h0 r0 = r10.f68613c
                java.util.concurrent.TimeUnit r1 = r10.f68615e
                long r0 = r0.d(r1)
                long r2 = r10.f68614d
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                io.reactivex.internal.operators.observable.ObservableReplay$Node r2 = (io.reactivex.internal.operators.observable.ObservableReplay.Node) r2
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.observable.ObservableReplay$Node r3 = (io.reactivex.internal.operators.observable.ObservableReplay.Node) r3
                r4 = 0
            L18:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L3c
                int r5 = r10.f68601b
                r6 = 1
                if (r5 <= r6) goto L3c
                java.lang.Object r5 = r2.f68606a
                io.reactivex.schedulers.d r5 = (io.reactivex.schedulers.d) r5
                long r7 = r5.a()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L3c
                int r4 = r4 + 1
                int r3 = r10.f68601b
                int r3 = r3 - r6
                r10.f68601b = r3
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.observable.ObservableReplay$Node r3 = (io.reactivex.internal.operators.observable.ObservableReplay.Node) r3
                goto L18
            L3c:
                if (r4 == 0) goto L41
                r10.l(r3)
            L41:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableReplay.SizeAndTimeBoundReplayBuffer.o():void");
        }
    }

    /* loaded from: classes5.dex */
    static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;

        /* renamed from: c  reason: collision with root package name */
        final int f68617c;

        SizeBoundReplayBuffer(int i2) {
            this.f68617c = i2;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        void n() {
            if (this.f68601b > this.f68617c) {
                j();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements e<T> {
        private static final long serialVersionUID = 7063189396499112664L;

        /* renamed from: a  reason: collision with root package name */
        volatile int f68618a;

        UnboundedReplayBuffer(int i2) {
            super(i2);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.e
        public void a(T t3) {
            add(NotificationLite.next(t3));
            this.f68618a++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.e
        public void b(InnerDisposable<T> innerDisposable) {
            if (innerDisposable.getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super T> g0Var = innerDisposable.f68603b;
            int i2 = 1;
            while (!innerDisposable.isDisposed()) {
                int i4 = this.f68618a;
                Integer num = (Integer) innerDisposable.a();
                int intValue = num != null ? num.intValue() : 0;
                while (intValue < i4) {
                    if (NotificationLite.accept(get(intValue), g0Var) || innerDisposable.isDisposed()) {
                        return;
                    }
                    intValue++;
                }
                innerDisposable.f68604c = Integer.valueOf(intValue);
                i2 = innerDisposable.addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.e
        public void complete() {
            add(NotificationLite.complete());
            this.f68618a++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.e
        public void error(Throwable th) {
            add(NotificationLite.error(th));
            this.f68618a++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a<T> {
        e<T> call();
    }

    /* loaded from: classes5.dex */
    static final class b<R> implements w2.g<io.reactivex.disposables.b> {

        /* renamed from: a  reason: collision with root package name */
        private final ObserverResourceWrapper<R> f68619a;

        b(ObserverResourceWrapper<R> observerResourceWrapper) {
            this.f68619a = observerResourceWrapper;
        }

        @Override // w2.g
        /* renamed from: a */
        public void accept(io.reactivex.disposables.b bVar) {
            this.f68619a.a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c<R, U> extends io.reactivex.z<R> {

        /* renamed from: a  reason: collision with root package name */
        private final Callable<? extends io.reactivex.observables.a<U>> f68620a;

        /* renamed from: b  reason: collision with root package name */
        private final w2.o<? super io.reactivex.z<U>, ? extends io.reactivex.e0<R>> f68621b;

        c(Callable<? extends io.reactivex.observables.a<U>> callable, w2.o<? super io.reactivex.z<U>, ? extends io.reactivex.e0<R>> oVar) {
            this.f68620a = callable;
            this.f68621b = oVar;
        }

        @Override // io.reactivex.z
        protected void F5(io.reactivex.g0<? super R> g0Var) {
            try {
                io.reactivex.observables.a aVar = (io.reactivex.observables.a) io.reactivex.internal.functions.a.g(this.f68620a.call(), "The connectableFactory returned a null ConnectableObservable");
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.a.g(this.f68621b.apply(aVar), "The selector returned a null ObservableSource");
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(g0Var);
                e0Var.a(observerResourceWrapper);
                aVar.j8(new b(observerResourceWrapper));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class d<T> extends io.reactivex.observables.a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.observables.a<T> f68622a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.z<T> f68623b;

        d(io.reactivex.observables.a<T> aVar, io.reactivex.z<T> zVar) {
            this.f68622a = aVar;
            this.f68623b = zVar;
        }

        @Override // io.reactivex.z
        protected void F5(io.reactivex.g0<? super T> g0Var) {
            this.f68623b.a(g0Var);
        }

        @Override // io.reactivex.observables.a
        public void j8(w2.g<? super io.reactivex.disposables.b> gVar) {
            this.f68622a.j8(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface e<T> {
        void a(T t3);

        void b(InnerDisposable<T> innerDisposable);

        void complete();

        void error(Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f68624a;

        f(int i2) {
            this.f68624a = i2;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.a
        public e<T> call() {
            return new SizeBoundReplayBuffer(this.f68624a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class g<T> implements io.reactivex.e0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<ReplayObserver<T>> f68625a;

        /* renamed from: b  reason: collision with root package name */
        private final a<T> f68626b;

        g(AtomicReference<ReplayObserver<T>> atomicReference, a<T> aVar) {
            this.f68625a = atomicReference;
            this.f68626b = aVar;
        }

        @Override // io.reactivex.e0
        public void a(io.reactivex.g0<? super T> g0Var) {
            ReplayObserver<T> replayObserver;
            while (true) {
                replayObserver = this.f68625a.get();
                if (replayObserver != null) {
                    break;
                }
                ReplayObserver<T> replayObserver2 = new ReplayObserver<>(this.f68626b.call());
                if (this.f68625a.compareAndSet(null, replayObserver2)) {
                    replayObserver = replayObserver2;
                    break;
                }
            }
            InnerDisposable<T> innerDisposable = new InnerDisposable<>(replayObserver, g0Var);
            g0Var.onSubscribe(innerDisposable);
            replayObserver.a(innerDisposable);
            if (innerDisposable.isDisposed()) {
                replayObserver.b(innerDisposable);
            } else {
                replayObserver.f68609a.b(innerDisposable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class h<T> implements a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f68627a;

        /* renamed from: b  reason: collision with root package name */
        private final long f68628b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f68629c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.h0 f68630d;

        h(int i2, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f68627a = i2;
            this.f68628b = j4;
            this.f68629c = timeUnit;
            this.f68630d = h0Var;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.a
        public e<T> call() {
            return new SizeAndTimeBoundReplayBuffer(this.f68627a, this.f68628b, this.f68629c, this.f68630d);
        }
    }

    /* loaded from: classes5.dex */
    static final class i implements a<Object> {
        i() {
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.a
        public e<Object> call() {
            return new UnboundedReplayBuffer(16);
        }
    }

    private ObservableReplay(io.reactivex.e0<T> e0Var, io.reactivex.e0<T> e0Var2, AtomicReference<ReplayObserver<T>> atomicReference, a<T> aVar) {
        this.f68599d = e0Var;
        this.f68596a = e0Var2;
        this.f68597b = atomicReference;
        this.f68598c = aVar;
    }

    public static <T> io.reactivex.observables.a<T> q8(io.reactivex.e0<T> e0Var, int i2) {
        if (i2 == Integer.MAX_VALUE) {
            return u8(e0Var);
        }
        return t8(e0Var, new f(i2));
    }

    public static <T> io.reactivex.observables.a<T> r8(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return s8(e0Var, j4, timeUnit, h0Var, Integer.MAX_VALUE);
    }

    public static <T> io.reactivex.observables.a<T> s8(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i2) {
        return t8(e0Var, new h(i2, j4, timeUnit, h0Var));
    }

    static <T> io.reactivex.observables.a<T> t8(io.reactivex.e0<T> e0Var, a<T> aVar) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.plugins.a.U(new ObservableReplay(new g(atomicReference, aVar), e0Var, atomicReference, aVar));
    }

    public static <T> io.reactivex.observables.a<T> u8(io.reactivex.e0<? extends T> e0Var) {
        return t8(e0Var, f68595e);
    }

    public static <U, R> io.reactivex.z<R> v8(Callable<? extends io.reactivex.observables.a<U>> callable, w2.o<? super io.reactivex.z<U>, ? extends io.reactivex.e0<R>> oVar) {
        return io.reactivex.plugins.a.R(new c(callable, oVar));
    }

    public static <T> io.reactivex.observables.a<T> w8(io.reactivex.observables.a<T> aVar, io.reactivex.h0 h0Var) {
        return io.reactivex.plugins.a.U(new d(aVar, aVar.Y3(h0Var)));
    }

    @Override // io.reactivex.z
    protected void F5(io.reactivex.g0<? super T> g0Var) {
        this.f68599d.a(g0Var);
    }

    @Override // io.reactivex.internal.disposables.c
    public void b(io.reactivex.disposables.b bVar) {
        this.f68597b.compareAndSet((ReplayObserver) bVar, null);
    }

    @Override // io.reactivex.observables.a
    public void j8(w2.g<? super io.reactivex.disposables.b> gVar) {
        ReplayObserver<T> replayObserver;
        while (true) {
            replayObserver = this.f68597b.get();
            if (replayObserver != null && !replayObserver.isDisposed()) {
                break;
            }
            ReplayObserver<T> replayObserver2 = new ReplayObserver<>(this.f68598c.call());
            if (this.f68597b.compareAndSet(replayObserver, replayObserver2)) {
                replayObserver = replayObserver2;
                break;
            }
        }
        boolean z3 = !replayObserver.f68612d.get() && replayObserver.f68612d.compareAndSet(false, true);
        try {
            gVar.accept(replayObserver);
            if (z3) {
                this.f68596a.a(replayObserver);
            }
        } catch (Throwable th) {
            if (z3) {
                replayObserver.f68612d.compareAndSet(true, false);
            }
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.e(th);
        }
    }

    @Override // x2.g
    public io.reactivex.e0<T> source() {
        return this.f68596a;
    }
}
