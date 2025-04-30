package io.netty.util;
/* loaded from: classes5.dex */
public interface Attribute<T> {
    boolean compareAndSet(T t3, T t4);

    T get();

    @Deprecated
    T getAndRemove();

    T getAndSet(T t3);

    AttributeKey<T> key();

    @Deprecated
    void remove();

    void set(T t3);

    T setIfAbsent(T t3);
}
