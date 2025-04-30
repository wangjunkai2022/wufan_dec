package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import x2.n;
/* loaded from: classes5.dex */
public final class MpscLinkedQueue<T> implements n<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<LinkedQueueNode<T>> f69812a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<LinkedQueueNode<T>> f69813b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        private static final long serialVersionUID = 2404266111789071508L;

        /* renamed from: a  reason: collision with root package name */
        private E f69814a;

        LinkedQueueNode() {
        }

        public E a() {
            E b4 = b();
            e(null);
            return b4;
        }

        public E b() {
            return this.f69814a;
        }

        public LinkedQueueNode<E> c() {
            return get();
        }

        public void d(LinkedQueueNode<E> linkedQueueNode) {
            lazySet(linkedQueueNode);
        }

        public void e(E e4) {
            this.f69814a = e4;
        }

        LinkedQueueNode(E e4) {
            e(e4);
        }
    }

    public MpscLinkedQueue() {
        LinkedQueueNode<T> linkedQueueNode = new LinkedQueueNode<>();
        d(linkedQueueNode);
        e(linkedQueueNode);
    }

    LinkedQueueNode<T> a() {
        return this.f69813b.get();
    }

    LinkedQueueNode<T> b() {
        return this.f69813b.get();
    }

    LinkedQueueNode<T> c() {
        return this.f69812a.get();
    }

    @Override // x2.o
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    void d(LinkedQueueNode<T> linkedQueueNode) {
        this.f69813b.lazySet(linkedQueueNode);
    }

    LinkedQueueNode<T> e(LinkedQueueNode<T> linkedQueueNode) {
        return this.f69812a.getAndSet(linkedQueueNode);
    }

    @Override // x2.o
    public boolean isEmpty() {
        return b() == c();
    }

    @Override // x2.o
    public boolean offer(T t3) {
        Objects.requireNonNull(t3, "Null is not a valid element");
        LinkedQueueNode<T> linkedQueueNode = new LinkedQueueNode<>(t3);
        e(linkedQueueNode).d(linkedQueueNode);
        return true;
    }

    @Override // x2.n, x2.o
    @Nullable
    public T poll() {
        LinkedQueueNode<T> c4;
        LinkedQueueNode<T> a4 = a();
        LinkedQueueNode<T> c5 = a4.c();
        if (c5 != null) {
            T a5 = c5.a();
            d(c5);
            return a5;
        } else if (a4 != c()) {
            do {
                c4 = a4.c();
            } while (c4 == null);
            T a6 = c4.a();
            d(c4);
            return a6;
        } else {
            return null;
        }
    }

    @Override // x2.o
    public boolean offer(T t3, T t4) {
        offer(t3);
        offer(t4);
        return true;
    }
}
