.class public abstract Lorg/jboss/netty/handler/codec/frame/a;
.super Lorg/jboss/netty/channel/m0;
.source "FrameDecoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/h0;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private copyThreshold:I

.field private volatile ctx:Lorg/jboss/netty/channel/m;

.field protected cumulation:Lorg/jboss/netty/buffer/e;

.field private maxCumulationBufferComponents:I

.field private unfold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/frame/a;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/jboss/netty/channel/m0;-><init>()V

    const/16 v0, 0x400

    .line 3
    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->maxCumulationBufferComponents:I

    .line 4
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->unfold:Z

    return-void
.end method

.method private callDecode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;Ljava/net/SocketAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->I0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/a;->decode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 6
    invoke-virtual {p0, p1, p4, v1}, Lorg/jboss/netty/handler/codec/frame/a;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decode() method must read at least one byte if it returned a frame (caused by: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected actualReadableBytes()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/frame/a;->internalBuffer()Lorg/jboss/netty/buffer/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    return v0
.end method

.method public afterAdd(Lorg/jboss/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected appendToCumulation(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 2
    instance-of v1, v0, Lorg/jboss/netty/buffer/i;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/buffer/i;

    .line 4
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/i;->Y()I

    move-result v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/a;->maxCumulationBufferComponents:I

    if-lt v2, v3, :cond_0

    .line 5
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/a;->copy()Lorg/jboss/netty/buffer/e;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jboss/netty/buffer/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 6
    invoke-static {v1}, Lorg/jboss/netty/buffer/h;->j0([Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    return-object p1
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/a;->cleanup(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/a;->cleanup(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    return-void
.end method

.method protected cleanup(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_1
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 4
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->I0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/jboss/netty/handler/codec/frame/a;->callDecode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;Ljava/net/SocketAddress;)V

    .line 6
    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lorg/jboss/netty/handler/codec/frame/a;->decodeLast(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    throw v0
.end method

.method protected abstract decode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/a;->decode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/e;II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->factory()Lorg/jboss/netty/buffer/f;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/jboss/netty/buffer/f;->a(I)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->L(Lorg/jboss/netty/buffer/e;II)V

    return-object v0
.end method

.method public final getMaxCumulationBufferCapacity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->copyThreshold:I

    return v0
.end method

.method public final getMaxCumulationBufferComponents()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->maxCumulationBufferComponents:I

    return v0
.end method

.method protected internalBuffer()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    :cond_0
    return-object v0
.end method

.method public final isUnfold()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->unfold:Z

    return v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/jboss/netty/buffer/e;

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void

    .line 4
    :cond_0
    check-cast v0, Lorg/jboss/netty/buffer/e;

    .line 5
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->I0()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    if-nez v1, :cond_2

    .line 7
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p2

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/a;->callDecode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    throw p2

    .line 9
    :cond_2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/frame/a;->appendToCumulation(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    move-result-object v0

    .line 10
    :try_start_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p2

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/a;->callDecode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    :goto_0
    return-void

    :catchall_1
    move-exception p2

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    throw p2
.end method

.method protected newCumulationBuffer(Lorg/jboss/netty/channel/m;I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->getConfig()Lorg/jboss/netty/channel/f;

    move-result-object p1

    invoke-interface {p1}, Lorg/jboss/netty/channel/f;->g()Lorg/jboss/netty/buffer/f;

    move-result-object p1

    const/16 v0, 0x100

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/f;->a(I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    invoke-interface {v0}, Lorg/jboss/netty/channel/m;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    invoke-interface {v1}, Lorg/jboss/netty/channel/m;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lorg/jboss/netty/channel/n;->f(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    iget-object p2, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/frame/a;->actualReadableBytes()I

    move-result v1

    invoke-interface {p2, v1}, Lorg/jboss/netty/buffer/e;->o(I)Lorg/jboss/netty/buffer/e;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/s;->J(Lorg/jboss/netty/channel/m;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/n;->d(Lorg/jboss/netty/channel/ChannelHandler;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/n;->d(Lorg/jboss/netty/channel/ChannelHandler;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Replace cann only be called once the FrameDecoder is added to the ChannelPipeline"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setMaxCumulationBufferCapacity(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->copyThreshold:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxCumulationBufferCapacity must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .locals 3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->maxCumulationBufferComponents:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCumulationBufferComponents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: >= 2)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setUnfold(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->unfold:Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->unfold:Z

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    check-cast p3, [Ljava/lang/Object;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p3, v1

    .line 4
    invoke-static {p1, v2, p2}, Lorg/jboss/netty/channel/s;->K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p3, Ljava/lang/Iterable;

    if-eqz v0, :cond_1

    .line 6
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {p1, v0, p2}, Lorg/jboss/netty/channel/s;->K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/s;->K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/s;->K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->copyThreshold:I

    if-le v1, v0, :cond_0

    .line 4
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->newCumulationBuffer(Lorg/jboss/netty/channel/m;I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 5
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/e;->q(Lorg/jboss/netty/buffer/e;)V

    move-object p2, p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->H0()Lorg/jboss/netty/buffer/e;

    move-result-object p2

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    goto :goto_0

    .line 8
    :cond_1
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    :goto_0
    return-object p2
.end method
