.class final Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;
.super Lio/netty/channel/AbstractCoalescingBufferQueue;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SslHandlerCoalescingBufferQueue"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/Channel;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->this$0:Lio/netty/handler/ssl/SslHandler;

    .line 2
    invoke-direct {p0, p2, p3}, Lio/netty/channel/AbstractCoalescingBufferQueue;-><init>(Lio/netty/channel/Channel;I)V

    return-void
.end method


# virtual methods
.method protected compose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget v0, v0, Lio/netty/handler/ssl/SslHandler;->wrapDataSize:I

    .line 2
    instance-of v1, p2, Lio/netty/buffer/CompositeByteBuf;

    if-eqz v1, :cond_2

    .line 3
    check-cast p2, Lio/netty/buffer/CompositeByteBuf;

    .line 4
    invoke-virtual {p2}, Lio/netty/buffer/CompositeByteBuf;->numComponents()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sub-int/2addr p1, v1

    .line 5
    invoke-virtual {p2, p1}, Lio/netty/buffer/CompositeByteBuf;->internalComponent(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-static {p1, p3, v0}, Lio/netty/handler/ssl/SslHandler;->access$2800(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p2, v1, p3}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    :cond_1
    return-object p2

    .line 7
    :cond_2
    invoke-static {p2, p3, v0}, Lio/netty/handler/ssl/SslHandler;->access$2800(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/AbstractCoalescingBufferQueue;->copyAndCompose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method protected composeFirst(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    instance-of v0, p2, Lio/netty/buffer/CompositeByteBuf;

    if-eqz v0, :cond_1

    .line 2
    check-cast p2, Lio/netty/buffer/CompositeByteBuf;

    .line 3
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslHandlerCoalescingBufferQueue;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$2900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$SslEngineType;

    move-result-object v0

    iget-boolean v0, v0, Lio/netty/handler/ssl/SslHandler$SslEngineType;->wantsDirectBuffer:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 8
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 9
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->release()Z

    move-object p2, p1

    :cond_1
    return-object p2
.end method

.method protected removeEmptyValue()Lio/netty/buffer/ByteBuf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
