package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: BlockingFlowableMostRecent.java */
/* loaded from: classes5.dex */
public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f67314a;

    /* renamed from: b  reason: collision with root package name */
    final T f67315b;

    /* compiled from: BlockingFlowableMostRecent.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.subscribers.a<T> {

        /* renamed from: b  reason: collision with root package name */
        volatile Object f67316b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BlockingFlowableMostRecent.java */
        /* renamed from: io.reactivex.internal.operators.flowable.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public final class C0453a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private Object f67317a;

            C0453a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = a.this.f67316b;
                this.f67317a = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f67317a == null) {
                        this.f67317a = a.this.f67316b;
                    }
                    if (!NotificationLite.isComplete(this.f67317a)) {
                        if (!NotificationLite.isError(this.f67317a)) {
                            return (T) NotificationLite.getValue(this.f67317a);
                        }
                        throw ExceptionHelper.e(NotificationLite.getError(this.f67317a));
                    }
                    throw new NoSuchElementException();
                } finally {
                    this.f67317a = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T t3) {
            this.f67316b = NotificationLite.next(t3);
        }

        public a<T>.C0453a d() {
            return new C0453a();
        }

        @Override // l3.c
        public void onComplete() {
            this.f67316b = NotificationLite.complete();
        }

        @Override // l3.c
        public void onError(Throwable th) {
            this.f67316b = NotificationLite.error(th);
        }

        @Override // l3.c
        public void onNext(T t3) {
            this.f67316b = NotificationLite.next(t3);
        }
    }

    public c(io.reactivex.j<T> jVar, T t3) {
        this.f67314a = jVar;
        this.f67315b = t3;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f67315b);
        this.f67314a.g6(aVar);
        return aVar.d();
    }
}
