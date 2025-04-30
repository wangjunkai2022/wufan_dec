package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue;
import io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueueUtil;
import java.util.Iterator;
/* loaded from: classes5.dex */
abstract class BaseLinkedAtomicQueue<E> extends BaseLinkedAtomicQueuePad2<E> {
    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int capacity() {
        return -1;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int drain(MessagePassingQueue.Consumer<E> consumer, int i2) {
        if (consumer != null) {
            if (i2 < 0) {
                throw new IllegalArgumentException("limit is negative: " + i2);
            }
            int i4 = 0;
            if (i2 == 0) {
                return 0;
            }
            LinkedQueueAtomicNode<E> lpConsumerNode = lpConsumerNode();
            while (i4 < i2) {
                LinkedQueueAtomicNode<E> lvNext = lpConsumerNode.lvNext();
                if (lvNext == null) {
                    return i4;
                }
                consumer.accept(getSingleConsumerNodeValue(lpConsumerNode, lvNext));
                i4++;
                lpConsumerNode = lvNext;
            }
            return i2;
        }
        throw new IllegalArgumentException("c is null");
    }

    protected E getSingleConsumerNodeValue(LinkedQueueAtomicNode<E> linkedQueueAtomicNode, LinkedQueueAtomicNode<E> linkedQueueAtomicNode2) {
        E andNullValue = linkedQueueAtomicNode2.getAndNullValue();
        linkedQueueAtomicNode.soNext(linkedQueueAtomicNode);
        spConsumerNode(linkedQueueAtomicNode2);
        return andNullValue;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean isEmpty() {
        return lvConsumerNode() == lvProducerNode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LinkedQueueAtomicNode<E> newNode() {
        return new LinkedQueueAtomicNode<>();
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public boolean relaxedOffer(E e4) {
        return offer(e4);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPeek() {
        LinkedQueueAtomicNode<E> lvNext = lpConsumerNode().lvNext();
        if (lvNext != null) {
            return lvNext.lpValue();
        }
        return null;
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public E relaxedPoll() {
        LinkedQueueAtomicNode<E> lpConsumerNode = lpConsumerNode();
        LinkedQueueAtomicNode<E> lvNext = lpConsumerNode.lvNext();
        if (lvNext != null) {
            return getSingleConsumerNodeValue(lpConsumerNode, lvNext);
        }
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public final int size() {
        LinkedQueueAtomicNode<E> lvConsumerNode = lvConsumerNode();
        LinkedQueueAtomicNode<E> lvProducerNode = lvProducerNode();
        int i2 = 0;
        while (lvConsumerNode != lvProducerNode && lvConsumerNode != null && i2 < Integer.MAX_VALUE) {
            LinkedQueueAtomicNode<E> lvNext = lvConsumerNode.lvNext();
            if (lvNext == lvConsumerNode) {
                return i2;
            }
            i2++;
            lvConsumerNode = lvNext;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return getClass().getName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LinkedQueueAtomicNode<E> newNode(E e4) {
        return new LinkedQueueAtomicNode<>(e4);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public int drain(MessagePassingQueue.Consumer<E> consumer) {
        return MessagePassingQueueUtil.drain(this, consumer);
    }

    @Override // io.netty.util.internal.shaded.org.jctools.queues.MessagePassingQueue
    public void drain(MessagePassingQueue.Consumer<E> consumer, MessagePassingQueue.WaitStrategy waitStrategy, MessagePassingQueue.ExitCondition exitCondition) {
        MessagePassingQueueUtil.drain(this, consumer, waitStrategy, exitCondition);
    }
}
