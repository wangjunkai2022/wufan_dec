package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: BlockingObservableNext.java */
/* loaded from: classes5.dex */
public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f69007a;

    /* compiled from: BlockingObservableNext.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f69008a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.e0<T> f69009b;

        /* renamed from: c  reason: collision with root package name */
        private T f69010c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f69011d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f69012e = true;

        /* renamed from: f  reason: collision with root package name */
        private Throwable f69013f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f69014g;

        a(io.reactivex.e0<T> e0Var, b<T> bVar) {
            this.f69009b = e0Var;
            this.f69008a = bVar;
        }

        private boolean a() {
            if (!this.f69014g) {
                this.f69014g = true;
                this.f69008a.c();
                new z0(this.f69009b).a(this.f69008a);
            }
            try {
                io.reactivex.y<T> d4 = this.f69008a.d();
                if (d4.h()) {
                    this.f69012e = false;
                    this.f69010c = d4.e();
                    return true;
                }
                this.f69011d = false;
                if (d4.f()) {
                    return false;
                }
                Throwable d5 = d4.d();
                this.f69013f = d5;
                throw ExceptionHelper.e(d5);
            } catch (InterruptedException e4) {
                this.f69008a.dispose();
                this.f69013f = e4;
                throw ExceptionHelper.e(e4);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f69013f;
            if (th == null) {
                if (this.f69011d) {
                    return !this.f69012e || a();
                }
                return false;
            }
            throw ExceptionHelper.e(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f69013f;
            if (th == null) {
                if (hasNext()) {
                    this.f69012e = true;
                    return this.f69010c;
                }
                throw new NoSuchElementException("No more elements");
            }
            throw ExceptionHelper.e(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BlockingObservableNext.java */
    /* loaded from: classes5.dex */
    public static final class b<T> extends io.reactivex.observers.d<io.reactivex.y<T>> {

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<io.reactivex.y<T>> f69015b = new ArrayBlockingQueue(1);

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f69016c = new AtomicInteger();

        b() {
        }

        @Override // io.reactivex.g0
        /* renamed from: b */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f69016c.getAndSet(0) == 1 || !yVar.h()) {
                while (!this.f69015b.offer(yVar)) {
                    io.reactivex.y<T> poll = this.f69015b.poll();
                    if (poll != null && !poll.h()) {
                        yVar = poll;
                    }
                }
            }
        }

        void c() {
            this.f69016c.set(1);
        }

        public io.reactivex.y<T> d() throws InterruptedException {
            c();
            io.reactivex.internal.util.c.b();
            return this.f69015b.take();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }
    }

    public d(io.reactivex.e0<T> e0Var) {
        this.f69007a = e0Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new a(this.f69007a, new b());
    }
}
