package io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* compiled from: BaseLinkedAtomicQueue.java */
/* loaded from: classes5.dex */
abstract class BaseLinkedAtomicQueueProducerNodeRef<E> extends BaseLinkedAtomicQueuePad0<E> {
    private static final AtomicReferenceFieldUpdater<BaseLinkedAtomicQueueProducerNodeRef, LinkedQueueAtomicNode> P_NODE_UPDATER = AtomicReferenceFieldUpdater.newUpdater(BaseLinkedAtomicQueueProducerNodeRef.class, LinkedQueueAtomicNode.class, "producerNode");
    private volatile LinkedQueueAtomicNode<E> producerNode;

    final boolean casProducerNode(LinkedQueueAtomicNode<E> linkedQueueAtomicNode, LinkedQueueAtomicNode<E> linkedQueueAtomicNode2) {
        return P_NODE_UPDATER.compareAndSet(this, linkedQueueAtomicNode, linkedQueueAtomicNode2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final LinkedQueueAtomicNode<E> lpProducerNode() {
        return this.producerNode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final LinkedQueueAtomicNode<E> lvProducerNode() {
        return this.producerNode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void spProducerNode(LinkedQueueAtomicNode<E> linkedQueueAtomicNode) {
        P_NODE_UPDATER.lazySet(this, linkedQueueAtomicNode);
    }

    protected final LinkedQueueAtomicNode<E> xchgProducerNode(LinkedQueueAtomicNode<E> linkedQueueAtomicNode) {
        return P_NODE_UPDATER.getAndSet(this, linkedQueueAtomicNode);
    }
}
