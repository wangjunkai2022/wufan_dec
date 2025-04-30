.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad0;
.source "BaseLinkedAtomicQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad0<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile producerNode:Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;

    const-class v1, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    const-string v2, "producerNode"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueuePad0;-><init>()V

    return-void
.end method


# virtual methods
.method final casProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->producerNode:Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    return-object v0
.end method

.method final lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->producerNode:Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    return-object v0
.end method

.method final spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected final xchgProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;)Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;)",
            "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/BaseLinkedAtomicQueueProducerNodeRef;->P_NODE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/LinkedQueueAtomicNode;

    return-object p1
.end method
