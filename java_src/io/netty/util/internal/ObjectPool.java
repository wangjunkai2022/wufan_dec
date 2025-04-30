package io.netty.util.internal;

import io.netty.util.Recycler;
/* loaded from: classes5.dex */
public abstract class ObjectPool<T> {

    /* loaded from: classes5.dex */
    public interface Handle<T> {
        void recycle(T t3);
    }

    /* loaded from: classes5.dex */
    public interface ObjectCreator<T> {
        T newObject(Handle<T> handle);
    }

    /* loaded from: classes5.dex */
    private static final class RecyclerObjectPool<T> extends ObjectPool<T> {
        private final Recycler<T> recycler;

        RecyclerObjectPool(final ObjectCreator<T> objectCreator) {
            this.recycler = new Recycler<T>() { // from class: io.netty.util.internal.ObjectPool.RecyclerObjectPool.1
                @Override // io.netty.util.Recycler
                protected T newObject(Recycler.a<T> aVar) {
                    return (T) objectCreator.newObject(aVar);
                }
            };
        }

        @Override // io.netty.util.internal.ObjectPool
        public T get() {
            return this.recycler.get();
        }
    }

    ObjectPool() {
    }

    public static <T> ObjectPool<T> newPool(ObjectCreator<T> objectCreator) {
        return new RecyclerObjectPool((ObjectCreator) ObjectUtil.checkNotNull(objectCreator, "creator"));
    }

    public abstract T get();
}
