package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.subjects.UnicastSubject;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public final class ObservableWindow<T> extends a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f68869b;

    /* renamed from: c  reason: collision with root package name */
    final long f68870c;

    /* renamed from: d  reason: collision with root package name */
    final int f68871d;

    /* loaded from: classes5.dex */
    static final class WindowExactObserver<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = -7481782523886138128L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.z<T>> f68872a;

        /* renamed from: b  reason: collision with root package name */
        final long f68873b;

        /* renamed from: c  reason: collision with root package name */
        final int f68874c;

        /* renamed from: d  reason: collision with root package name */
        long f68875d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.b f68876e;

        /* renamed from: f  reason: collision with root package name */
        UnicastSubject<T> f68877f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68878g;

        WindowExactObserver(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, int i2) {
            this.f68872a = g0Var;
            this.f68873b = j4;
            this.f68874c = i2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68878g = true;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68878g;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            UnicastSubject<T> unicastSubject = this.f68877f;
            if (unicastSubject != null) {
                this.f68877f = null;
                unicastSubject.onComplete();
            }
            this.f68872a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            UnicastSubject<T> unicastSubject = this.f68877f;
            if (unicastSubject != null) {
                this.f68877f = null;
                unicastSubject.onError(th);
            }
            this.f68872a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            UnicastSubject<T> unicastSubject = this.f68877f;
            if (unicastSubject == null && !this.f68878g) {
                unicastSubject = UnicastSubject.m8(this.f68874c, this);
                this.f68877f = unicastSubject;
                this.f68872a.onNext(unicastSubject);
            }
            if (unicastSubject != null) {
                unicastSubject.onNext(t3);
                long j4 = this.f68875d + 1;
                this.f68875d = j4;
                if (j4 >= this.f68873b) {
                    this.f68875d = 0L;
                    this.f68877f = null;
                    unicastSubject.onComplete();
                    if (this.f68878g) {
                        this.f68876e.dispose();
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68876e, bVar)) {
                this.f68876e = bVar;
                this.f68872a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f68878g) {
                this.f68876e.dispose();
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class WindowSkipObserver<T> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.b, Runnable {
        private static final long serialVersionUID = 3366976432059579510L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.z<T>> f68879a;

        /* renamed from: b  reason: collision with root package name */
        final long f68880b;

        /* renamed from: c  reason: collision with root package name */
        final long f68881c;

        /* renamed from: d  reason: collision with root package name */
        final int f68882d;

        /* renamed from: f  reason: collision with root package name */
        long f68884f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f68885g;

        /* renamed from: h  reason: collision with root package name */
        long f68886h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.disposables.b f68887i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f68888j = new AtomicInteger();

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<UnicastSubject<T>> f68883e = new ArrayDeque<>();

        WindowSkipObserver(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, long j5, int i2) {
            this.f68879a = g0Var;
            this.f68880b = j4;
            this.f68881c = j5;
            this.f68882d = i2;
        }

        @Override // io.reactivex.disposables.b
        public void dispose() {
            this.f68885g = true;
        }

        @Override // io.reactivex.disposables.b
        public boolean isDisposed() {
            return this.f68885g;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.f68883e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onComplete();
            }
            this.f68879a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.f68883e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onError(th);
            }
            this.f68879a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            ArrayDeque<UnicastSubject<T>> arrayDeque = this.f68883e;
            long j4 = this.f68884f;
            long j5 = this.f68881c;
            if (j4 % j5 == 0 && !this.f68885g) {
                this.f68888j.getAndIncrement();
                UnicastSubject<T> m8 = UnicastSubject.m8(this.f68882d, this);
                arrayDeque.offer(m8);
                this.f68879a.onNext(m8);
            }
            long j6 = this.f68886h + 1;
            Iterator<UnicastSubject<T>> it2 = arrayDeque.iterator();
            while (it2.hasNext()) {
                it2.next().onNext(t3);
            }
            if (j6 >= this.f68880b) {
                arrayDeque.poll().onComplete();
                if (arrayDeque.isEmpty() && this.f68885g) {
                    this.f68887i.dispose();
                    return;
                }
                this.f68886h = j6 - j5;
            } else {
                this.f68886h = j6;
            }
            this.f68884f = j4 + 1;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.validate(this.f68887i, bVar)) {
                this.f68887i = bVar;
                this.f68879a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f68888j.decrementAndGet() == 0 && this.f68885g) {
                this.f68887i.dispose();
            }
        }
    }

    public ObservableWindow(io.reactivex.e0<T> e0Var, long j4, long j5, int i2) {
        super(e0Var);
        this.f68869b = j4;
        this.f68870c = j5;
        this.f68871d = i2;
    }

    @Override // io.reactivex.z
    public void F5(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        if (this.f68869b == this.f68870c) {
            this.f68961a.a(new WindowExactObserver(g0Var, this.f68869b, this.f68871d));
        } else {
            this.f68961a.a(new WindowSkipObserver(g0Var, this.f68869b, this.f68870c, this.f68871d));
        }
    }
}
