package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: BlockingObservableMostRecent.java */
/* loaded from: classes5.dex */
public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f68988a;

    /* renamed from: b  reason: collision with root package name */
    final T f68989b;

    /* compiled from: BlockingObservableMostRecent.java */
    /* loaded from: classes5.dex */
    static final class a<T> extends io.reactivex.observers.a<T> {

        /* renamed from: b  reason: collision with root package name */
        volatile Object f68990b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BlockingObservableMostRecent.java */
        /* renamed from: io.reactivex.internal.operators.observable.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public final class C0457a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private Object f68991a;

            C0457a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Object obj = a.this.f68990b;
                this.f68991a = obj;
                return !NotificationLite.isComplete(obj);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f68991a == null) {
                        this.f68991a = a.this.f68990b;
                    }
                    if (!NotificationLite.isComplete(this.f68991a)) {
                        if (!NotificationLite.isError(this.f68991a)) {
                            return (T) NotificationLite.getValue(this.f68991a);
                        }
                        throw ExceptionHelper.e(NotificationLite.getError(this.f68991a));
                    }
                    throw new NoSuchElementException();
                } finally {
                    this.f68991a = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        a(T t3) {
            this.f68990b = NotificationLite.next(t3);
        }

        public a<T>.C0457a c() {
            return new C0457a();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f68990b = NotificationLite.complete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f68990b = NotificationLite.error(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t3) {
            this.f68990b = NotificationLite.next(t3);
        }
    }

    public c(io.reactivex.e0<T> e0Var, T t3) {
        this.f68988a = e0Var;
        this.f68989b = t3;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f68989b);
        this.f68988a.a(aVar);
        return aVar.c();
    }
}
