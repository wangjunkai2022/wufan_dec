.class Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "WeightedFairQueueByteDistributor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;-><init>(Lio/netty/handler/codec/http2/Http2Connection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$400(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->setStreamReservedOrActivated()V

    return-void
.end method

.method public onStreamAdded(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$000(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/collection/IntObjectMap;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-direct {v0, v2, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;-><init>(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v3, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$100(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->takeChild(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;ZLjava/util/List;)V

    .line 5
    iget-object v3, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-virtual {v3, v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->notifyParentChanged(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v2}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$200(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/internal/PriorityQueue;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/netty/util/internal/PriorityQueue;->removeTyped(Ljava/lang/Object;)Z

    .line 7
    iput-object p1, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    .line 8
    :goto_0
    sget-object v2, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$2;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->setStreamReservedOrActivated()V

    .line 10
    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$300(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/handler/codec/http2/Http2Connection$a;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$a;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$400(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->close()V

    return-void
.end method

.method public onStreamRemoved(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$400(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$500(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->removeChild(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$200(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$500(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$200(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    .line 7
    sget-object v1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;->INSTANCE:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;

    invoke-virtual {v1, v0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$StateOnlyComparator;->compare(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 8
    iget-object v0, p1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->removeChild(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$200(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/internal/PriorityQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 10
    iget-object v1, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->parent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->removeChild(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V

    .line 11
    iget-object v1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$000(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/collection/IntObjectMap;

    move-result-object v1

    iget v0, v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamId:I

    invoke-interface {v1, v0}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$200(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$1;->this$0:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->access$000(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;)Lio/netty/util/collection/IntObjectMap;

    move-result-object v0

    iget v1, p1, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;->streamId:I

    invoke-interface {v0, v1, p1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
