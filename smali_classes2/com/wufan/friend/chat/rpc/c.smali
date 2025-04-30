.class public Lcom/wufan/friend/chat/rpc/c;
.super Lio/netty/channel/SimpleChannelInboundHandler;
.source "FriendClientHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/SimpleChannelInboundHandler<",
        "Lcom/wufan/friend/chat/protocol/w1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/channel/SimpleChannelInboundHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lio/netty/channel/ChannelHandlerContext;Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "channelRead0"

    aput-object v1, p1, v0

    .line 1
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "channelInactive"

    const-string v1, "channelActive"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    const-string p1, "channelInactive"

    const-string/jumbo v0, "\u8fde\u63a5\u65ad\u5f00"

    .line 2
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->T(Z)V

    return-void
.end method

.method protected bridge synthetic channelRead0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/rpc/c;->a(Lio/netty/channel/ChannelHandlerContext;Lcom/wufan/friend/chat/protocol/w1;)V

    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "channelInactive"

    const-string v1, "userEventTriggered"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    instance-of v0, p2, Lio/netty/handler/timeout/IdleStateEvent;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lio/netty/handler/timeout/IdleStateEvent;

    invoke-virtual {p2}, Lio/netty/handler/timeout/IdleStateEvent;->state()Lio/netty/handler/timeout/IdleState;

    move-result-object p1

    .line 4
    sget-object p2, Lio/netty/handler/timeout/IdleState;->WRITER_IDLE:Lio/netty/handler/timeout/IdleState;

    if-ne p1, p2, :cond_1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->B()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
