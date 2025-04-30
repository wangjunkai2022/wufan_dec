package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: BlockingFlowableNext.java */
/* loaded from: classes5.dex */
public final class d<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final l3.b<? extends T> f67325a;

    /* compiled from: BlockingFlowableNext.java */
    /* loaded from: classes5.dex */
    static final class a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T> f67326a;

        /* renamed from: b  reason: collision with root package name */
        private final l3.b<? extends T> f67327b;

        /* renamed from: c  reason: collision with root package name */
        private T f67328c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f67329d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f67330e = true;

        /* renamed from: f  reason: collision with root package name */
        private Throwable f67331f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f67332g;

        a(l3.b<? extends T> bVar, b<T> bVar2) {
            this.f67327b = bVar;
            this.f67326a = bVar2;
        }

        private boolean a() {
            try {
                if (!this.f67332g) {
                    this.f67332g = true;
                    this.f67326a.e();
                    io.reactivex.j.V2(this.f67327b).I3().g6(this.f67326a);
                }
                io.reactivex.y<T> f4 = this.f67326a.f();
                if (f4.h()) {
                    this.f67330e = false;
                    this.f67328c = f4.e();
                    return true;
                }
                this.f67329d = false;
                if (f4.f()) {
                    return false;
                }
                if (f4.g()) {
                    Throwable d4 = f4.d();
                    this.f67331f = d4;
                    throw ExceptionHelper.e(d4);
                }
                throw new IllegalStateException("Should not reach here");
            } catch (InterruptedException e4) {
                this.f67326a.dispose();
                this.f67331f = e4;
                throw ExceptionHelper.e(e4);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f67331f;
            if (th == null) {
                if (this.f67329d) {
                    return !this.f67330e || a();
                }
                return false;
            }
            throw ExceptionHelper.e(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f67331f;
            if (th == null) {
                if (hasNext()) {
                    this.f67330e = true;
                    return this.f67328c;
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
    /* compiled from: BlockingFlowableNext.java */
    /* loaded from: classes5.dex */
    public static final class b<T> extends io.reactivex.subscribers.b<io.reactivex.y<T>> {

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<io.reactivex.y<T>> f67333b = new ArrayBlockingQueue(1);

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f67334c = new AtomicInteger();

        b() {
        }

        @Override // l3.c
        /* renamed from: d */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f67334c.getAndSet(0) == 1 || !yVar.h()) {
                while (!this.f67333b.offer(yVar)) {
                    io.reactivex.y<T> poll = this.f67333b.poll();
                    if (poll != null && !poll.h()) {
                        yVar = poll;
                    }
                }
            }
        }

        void e() {
            this.f67334c.set(1);
        }

        public io.reactivex.y<T> f() throws InterruptedException {
            e();
            io.reactivex.internal.util.c.b();
            return this.f67333b.take();
        }

        @Override // l3.c
        public void onComplete() {
        }

        @Override // l3.c
        public void onError(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }
    }

    public d(l3.b<? extends T> bVar) {
        this.f67325a = bVar;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new a(this.f67325a, new b());
    }
}
