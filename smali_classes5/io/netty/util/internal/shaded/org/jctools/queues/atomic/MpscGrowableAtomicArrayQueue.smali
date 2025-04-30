.class public Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscGrowableAtomicArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;
.source "MpscGrowableAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueue;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected getCurrentBufferCapacity(J)J
    .locals 5

    const-wide/16 v0, 0x2

    add-long/2addr v0, p1

    .line 1
    iget-wide v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->maxQueueCapacity:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    move-wide p1, v2

    :cond_0
    return-wide p1
.end method

.method protected getNextBufferSize(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscChunkedAtomicArrayQueueColdProducerFields;->maxQueueCapacity:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    .line 2
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result v2

    const-string v3, "buffer.length"

    invoke-static {v2, v0, v1, v3}, Lio/netty/util/internal/shaded/org/jctools/util/RangeUtil;->checkLessThanOrEqual(IJLjava/lang/String;)I

    .line 3
    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/AtomicQueueUtil;->length(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
