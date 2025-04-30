package io.netty.util.internal;

import java.util.Queue;
/* loaded from: classes5.dex */
public interface PriorityQueue<T> extends Queue<T> {
    void clearIgnoringIndexes();

    boolean containsTyped(T t3);

    void priorityChanged(T t3);

    boolean removeTyped(T t3);
}
