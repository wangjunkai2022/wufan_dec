.class public Lcom/wufan/friend/chat/rpc/d;
.super Lio/netty/channel/ChannelInitializer;
.source "FriendClientInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/socket/SocketChannel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lio/netty/channel/socket/SocketChannel;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 2
    new-instance v9, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;

    const/high16 v3, 0x200000

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;-><init>(IIIIIZ)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 3
    new-instance v3, Lio/netty/handler/codec/protobuf/ProtobufDecoder;

    invoke-static {}, Lcom/wufan/friend/chat/protocol/w1;->D3()Lcom/wufan/friend/chat/protocol/w1;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/protobuf/ProtobufDecoder;-><init>(Lcom/google/protobuf/MessageLite;)V

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 4
    new-instance v3, Lio/netty/handler/codec/LengthFieldPrepender;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2}, Lio/netty/handler/codec/LengthFieldPrepender;-><init>(IIZ)V

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 5
    new-instance v3, Lio/netty/handler/codec/protobuf/ProtobufEncoder;

    invoke-direct {v3}, Lio/netty/handler/codec/protobuf/ProtobufEncoder;-><init>()V

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 6
    new-instance v3, Lio/netty/handler/logging/LoggingHandler;

    invoke-direct {v3}, Lio/netty/handler/logging/LoggingHandler;-><init>()V

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 7
    new-instance v11, Lio/netty/handler/timeout/IdleStateHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1e

    const-wide/16 v8, 0x0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lio/netty/handler/timeout/IdleStateHandler;-><init>(JJJLjava/util/concurrent/TimeUnit;)V

    aput-object v11, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-array v0, v0, [Lio/netty/channel/ChannelHandler;

    .line 8
    new-instance v1, Lcom/wufan/friend/chat/rpc/c;

    invoke-direct {v1}, Lcom/wufan/friend/chat/rpc/c;-><init>()V

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic initChannel(Lio/netty/channel/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/netty/channel/socket/SocketChannel;

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/rpc/d;->a(Lio/netty/channel/socket/SocketChannel;)V

    return-void
.end method
