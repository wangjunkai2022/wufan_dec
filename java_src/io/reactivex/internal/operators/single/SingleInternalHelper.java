package io.reactivex.internal.operators.single;

import io.reactivex.o0;
import io.reactivex.z;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
/* loaded from: classes5.dex */
public final class SingleInternalHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum NoSuchElementCallable implements Callable<NoSuchElementException> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        public NoSuchElementException call() throws Exception {
            return new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum ToFlowable implements w2.o<o0, l3.b> {
        INSTANCE;

        @Override // w2.o
        public l3.b apply(o0 o0Var) {
            return new SingleToFlowable(o0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum ToObservable implements w2.o<o0, z> {
        INSTANCE;

        @Override // w2.o
        public z apply(o0 o0Var) {
            return new SingleToObservable(o0Var);
        }
    }

    /* loaded from: classes5.dex */
    static final class a<T> implements Iterable<io.reactivex.j<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterable<? extends o0<? extends T>> f69667a;

        a(Iterable<? extends o0<? extends T>> iterable) {
            this.f69667a = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<io.reactivex.j<T>> iterator() {
            return new b(this.f69667a.iterator());
        }
    }

    /* loaded from: classes5.dex */
    static final class b<T> implements Iterator<io.reactivex.j<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<? extends o0<? extends T>> f69668a;

        b(Iterator<? extends o0<? extends T>> it2) {
            this.f69668a = it2;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public io.reactivex.j<T> next() {
            return new SingleToFlowable(this.f69668a.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f69668a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private SingleInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Callable<NoSuchElementException> a() {
        return NoSuchElementCallable.INSTANCE;
    }

    public static <T> Iterable<? extends io.reactivex.j<T>> b(Iterable<? extends o0<? extends T>> iterable) {
        return new a(iterable);
    }

    public static <T> w2.o<o0<? extends T>, l3.b<? extends T>> c() {
        return ToFlowable.INSTANCE;
    }

    public static <T> w2.o<o0<? extends T>, z<? extends T>> d() {
        return ToObservable.INSTANCE;
    }
}
