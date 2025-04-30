package io.netty.util.internal.shaded.org.jctools.queues;
/* loaded from: classes5.dex */
public interface MessagePassingQueue<T> {
    public static final int UNBOUNDED_CAPACITY = -1;

    /* loaded from: classes5.dex */
    public interface Consumer<T> {
        void accept(T t3);
    }

    /* loaded from: classes5.dex */
    public interface ExitCondition {
        boolean keepRunning();
    }

    /* loaded from: classes5.dex */
    public interface Supplier<T> {
        T get();
    }

    /* loaded from: classes5.dex */
    public interface WaitStrategy {
        int idle(int i2);
    }

    int capacity();

    void clear();

    int drain(Consumer<T> consumer);

    int drain(Consumer<T> consumer, int i2);

    void drain(Consumer<T> consumer, WaitStrategy waitStrategy, ExitCondition exitCondition);

    int fill(Supplier<T> supplier);

    int fill(Supplier<T> supplier, int i2);

    void fill(Supplier<T> supplier, WaitStrategy waitStrategy, ExitCondition exitCondition);

    boolean isEmpty();

    boolean offer(T t3);

    T peek();

    T poll();

    boolean relaxedOffer(T t3);

    T relaxedPeek();

    T relaxedPoll();

    int size();
}
