.class final Lio/netty/util/Recycler$Stack;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

.field private cursor:Lio/netty/util/Recycler$WeakOrderQueue;

.field elements:[Lio/netty/util/Recycler$DefaultHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;"
        }
    .end annotation
.end field

.field private handleRecycleCount:I

.field private volatile head:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final interval:I

.field private final maxCapacity:I

.field private final maxDelayedQueues:I

.field final parent:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/Recycler$WeakOrderQueue;

.field size:I

.field final threadRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;Ljava/lang/Thread;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler<",
            "TT;>;",
            "Ljava/lang/Thread;",
            "IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->parent:Lio/netty/util/Recycler;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    .line 4
    iput p3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    div-int p2, p3, p4

    invoke-static {}, Lio/netty/util/Recycler;->access$500()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->availableSharedCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-static {}, Lio/netty/util/Recycler;->access$800()I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 7
    iput p5, p0, Lio/netty/util/Recycler$Stack;->interval:I

    .line 8
    iput p5, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 9
    iput p6, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    return-void
.end method

.method static synthetic access$700(Lio/netty/util/Recycler$Stack;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/netty/util/Recycler$Stack;->interval:I

    return p0
.end method

.method private newWeakOrderQueue(Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->newQueue(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object p1

    return-object p1
.end method

.method private pushLater(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Thread;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lio/netty/util/Recycler;->access$400()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/Recycler$WeakOrderQueue;

    if-nez v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lio/netty/util/Recycler$Stack;->maxDelayedQueues:I

    if-lt v1, v2, :cond_1

    .line 5
    sget-object p1, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p2}, Lio/netty/util/Recycler$Stack;->newWeakOrderQueue(Ljava/lang/Thread;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_3
    sget-object p2, Lio/netty/util/Recycler$WeakOrderQueue;->DUMMY:Lio/netty/util/Recycler$WeakOrderQueue;

    if-ne v1, p2, :cond_4

    return-void

    .line 9
    :cond_4
    :goto_0
    invoke-virtual {v1, p1}, Lio/netty/util/Recycler$WeakOrderQueue;->add(Lio/netty/util/Recycler$DefaultHandle;)V

    return-void
.end method

.method private pushNow(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    iget v1, p1, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lio/netty/util/Recycler;->access$900()I

    move-result v0

    iput v0, p1, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    iput v0, p1, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 3
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 4
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$Stack;->dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    shl-int/lit8 v2, v0, 0x1

    .line 6
    iget v3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 7
    :cond_1
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "recycled already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private scavenge()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/util/Recycler$Stack;->scavengeSome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 3
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    const/4 v0, 0x0

    return v0
.end method

.method private scavengeSome()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v2, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    goto :goto_4

    .line 5
    :cond_2
    invoke-virtual {v2}, Lio/netty/util/Recycler$WeakOrderQueue;->getNext()Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 7
    invoke-virtual {v2}, Lio/netty/util/Recycler$WeakOrderQueue;->hasFinalData()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    :goto_1
    invoke-virtual {v2, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v2}, Lio/netty/util/Recycler$WeakOrderQueue;->reclaimAllSpaceAndUnlink()V

    .line 10
    invoke-virtual {v0, v3}, Lio/netty/util/Recycler$WeakOrderQueue;->setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V

    goto :goto_2

    :cond_4
    move-object v0, v2

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v3

    goto :goto_0

    :cond_7
    :goto_3
    move v4, v1

    move-object v2, v3

    .line 11
    :goto_4
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 12
    iput-object v2, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    return v4
.end method


# virtual methods
.method dropHandle(Lio/netty/util/Recycler$DefaultHandle;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lio/netty/util/Recycler$DefaultHandle;->hasBeenRecycled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    iget v2, p0, Lio/netty/util/Recycler$Stack;->interval:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    add-int/2addr v0, v3

    .line 3
    iput v0, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    return v3

    .line 4
    :cond_0
    iput v1, p0, Lio/netty/util/Recycler$Stack;->handleRecycleCount:I

    .line 5
    iput-boolean v3, p1, Lio/netty/util/Recycler$DefaultHandle;->hasBeenRecycled:Z

    :cond_1
    return v1
.end method

.method increaseCapacity(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v0, v0

    .line 2
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_1

    if-lt v0, v1, :cond_0

    .line 3
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v1, v0

    if-eq p1, v1, :cond_2

    .line 5
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    :cond_2
    return p1
.end method

.method newHandle()Lio/netty/util/Recycler$DefaultHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/netty/util/Recycler$DefaultHandle;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$DefaultHandle;-><init>(Lio/netty/util/Recycler$Stack;)V

    return-object v0
.end method

.method pop()Lio/netty/util/Recycler$DefaultHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lio/netty/util/Recycler$Stack;->scavenge()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 4
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aget-object v3, v2, v0

    .line 5
    aput-object v1, v2, v0

    .line 6
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 7
    iget v0, v3, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    iget v1, v3, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 8
    iput v0, v3, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    .line 9
    iput v0, v3, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    return-object v3

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recycled multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method push(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$DefaultHandle<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lio/netty/util/Recycler$Stack;->pushNow(Lio/netty/util/Recycler$DefaultHandle;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/netty/util/Recycler$Stack;->pushLater(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Thread;)V

    :goto_0
    return-void
.end method

.method declared-synchronized setHead(Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    invoke-virtual {p1, v0}, Lio/netty/util/Recycler$WeakOrderQueue;->setNext(Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 2
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
