package io.netty.util.internal.shaded.org.jctools.queues;

import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue;
import io.netty.util.internal.shaded.org.jctools.util.PortableJvmInfo;
/* loaded from: classes5.dex */
public final class MessagePassingQueueUtil {
    private MessagePassingQueueUtil() {
    }

    public static <E> int drain(MessagePassingQueue<E> messagePassingQueue, MessagePassingQueue.Consumer<E> consumer, int i2) {
        if (consumer != null) {
            if (i2 < 0) {
                throw new IllegalArgumentException("limit is negative: " + i2);
            }
            int i4 = 0;
            if (i2 == 0) {
                return 0;
            }
            while (i4 < i2) {
                E relaxedPoll = messagePassingQueue.relaxedPoll();
                if (relaxedPoll == null) {
                    break;
                }
                consumer.accept(relaxedPoll);
                i4++;
            }
            return i4;
        }
        throw new IllegalArgumentException("c is null");
    }

    public static <E> void fill(MessagePassingQueue<E> messagePassingQueue, MessagePassingQueue.Supplier<E> supplier, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        if (waitStrategy == null) {
            throw new IllegalArgumentException("waiter is null");
        }
        if (exitCondition == null) {
            throw new IllegalArgumentException("exit condition is null");
        }
        while (true) {
            while (exitCondition.keepRunning()) {
                int idle = messagePassingQueue.fill(supplier, PortableJvmInfo.RECOMENDED_OFFER_BATCH) == 0 ? waitStrategy.idle(idle) : 0;
            }
            return;
        }
    }

    public static <E> int fillBounded(MessagePassingQueue<E> messagePassingQueue, MessagePassingQueue.Supplier<E> supplier) {
        return fillInBatchesToLimit(messagePassingQueue, supplier, PortableJvmInfo.RECOMENDED_OFFER_BATCH, messagePassingQueue.capacity());
    }

    public static <E> int fillInBatchesToLimit(MessagePassingQueue<E> messagePassingQueue, MessagePassingQueue.Supplier<E> supplier, int i2, int i4) {
        long j4 = 0;
        do {
            int fill = messagePassingQueue.fill(supplier, i2);
            if (fill == 0) {
                return (int) j4;
            }
            j4 += fill;
        } while (j4 <= i4);
        return (int) j4;
    }

    public static <E> int fillUnbounded(MessagePassingQueue<E> messagePassingQueue, MessagePassingQueue.Supplier<E> supplier) {
        return fillInBatchesToLimit(messagePassingQueue, supplier, PortableJvmInfo.RECOMENDED_OFFER_BATCH, 4096);
    }

    public static <E> int drain(MessagePassingQueue<E> messagePassingQueue, MessagePassingQueue.Consumer<E> consumer) {
        if (consumer == null) {
            throw new IllegalArgumentException("c is null");
        }
        int i2 = 0;
        while (true) {
            E relaxedPoll = messagePassingQueue.relaxedPoll();
            if (relaxedPoll == null) {
                return i2;
            }
            i2++;
            consumer.accept(relaxedPoll);
        }
    }

    public static <E> void drain(MessagePassingQueue<E> messagePassingQueue, MessagePassingQueue.Consumer<E> consumer, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        E relaxedPoll;
        if (consumer == null) {
            throw new IllegalArgumentException("c is null");
        }
        if (waitStrategy == null) {
            throw new IllegalArgumentException("wait is null");
        }
        if (exitCondition == null) {
            throw new IllegalArgumentException("exit condition is null");
        }
        while (true) {
            while (exitCondition.keepRunning()) {
                relaxedPoll = messagePassingQueue.relaxedPoll();
                int idle = relaxedPoll == null ? waitStrategy.idle(idle) : 0;
            }
            return;
            consumer.accept(relaxedPoll);
        }
    }
}
