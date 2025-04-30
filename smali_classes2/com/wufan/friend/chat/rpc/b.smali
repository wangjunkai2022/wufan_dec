.class public Lcom/wufan/friend/chat/rpc/b;
.super Ljava/lang/Object;
.source "FriendClient.java"


# instance fields
.field a:Lio/netty/channel/EventLoopGroup;

.field b:Lio/netty/bootstrap/Bootstrap;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lio/netty/channel/Channel;

.field f:Z

.field g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/netty/channel/nio/NioEventLoopGroup;

    invoke-direct {v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>()V

    iput-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->a:Lio/netty/channel/EventLoopGroup;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/wufan/friend/chat/rpc/b;->f:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/wufan/friend/chat/rpc/b;->g:J

    .line 5
    iput-object p1, p0, Lcom/wufan/friend/chat/rpc/b;->c:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/wufan/friend/chat/rpc/b;->d:I

    .line 7
    new-instance p1, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {p1}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    iput-object p1, p0, Lcom/wufan/friend/chat/rpc/b;->b:Lio/netty/bootstrap/Bootstrap;

    .line 8
    iget-object p2, p0, Lcom/wufan/friend/chat/rpc/b;->a:Lio/netty/channel/EventLoopGroup;

    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object p1

    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    const-class p2, Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->channel(Ljava/lang/Class;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object p1

    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    new-instance p2, Lcom/wufan/friend/chat/rpc/d;

    invoke-direct {p2}, Lcom/wufan/friend/chat/rpc/d;-><init>()V

    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 9
    iget-object p1, p0, Lcom/wufan/friend/chat/rpc/b;->b:Lio/netty/bootstrap/Bootstrap;

    sget-object p2, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/rpc/b;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/wufan/friend/chat/rpc/b;Lio/netty/channel/ChannelFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->p(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method private synthetic p(Lio/netty/channel/ChannelFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/rpc/b;->f:Z

    .line 2
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/event/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/join/mgps/event/m;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    new-instance v0, Lcom/wufan/friend/chat/rpc/b$a;

    invoke-direct {v0, p0}, Lcom/wufan/friend/chat/rpc/b$a;-><init>(Lcom/wufan/friend/chat/rpc/b;)V

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    :goto_0
    return-void
.end method

.method private r(Lcom/wufan/friend/chat/protocol/s1;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/rpc/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public b(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;JI)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BAT_CHAT_ROOM:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->d3()Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->X2(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->W2(J)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->V2(I)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 6
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->r3(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 8
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 10
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BAT_CHAT_SEND:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/i;->X2()Lcom/wufan/friend/chat/protocol/i$b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/i$b;->T2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/i$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i;

    .line 6
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->p3(Lcom/wufan/friend/chat/protocol/i;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 8
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 10
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/wufan/friend/chat/rpc/b;->f:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wufan/friend/chat/rpc/b;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/wufan/friend/chat/rpc/b;->f:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wufan/friend/chat/rpc/b;->g:J

    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->b:Lio/netty/bootstrap/Bootstrap;

    iget-object v1, p0, Lcom/wufan/friend/chat/rpc/b;->c:Ljava/lang/String;

    iget v2, p0, Lcom/wufan/friend/chat/rpc/b;->d:I

    invoke-virtual {v0, v1, v2}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/lang/String;I)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/wufan/friend/chat/rpc/a;

    invoke-direct {v1, p0}, Lcom/wufan/friend/chat/rpc/a;-><init>(Lcom/wufan/friend/chat/rpc/b;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public f(IILjava/lang/String;ZJZ)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_INVITE:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/e0;->m3()Lcom/wufan/friend/chat/protocol/e0$b;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/wufan/friend/chat/protocol/e0$b;->a3(J)Lcom/wufan/friend/chat/protocol/e0$b;

    move-result-object p5

    int-to-long v2, p2

    invoke-virtual {p5, v2, v3}, Lcom/wufan/friend/chat/protocol/e0$b;->b3(J)Lcom/wufan/friend/chat/protocol/e0$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wufan/friend/chat/protocol/e0$b;->Z2(I)Lcom/wufan/friend/chat/protocol/e0$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/wufan/friend/chat/protocol/e0$b;->c3(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/e0$b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/wufan/friend/chat/protocol/e0$b;->Y2(Z)Lcom/wufan/friend/chat/protocol/e0$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/wufan/friend/chat/protocol/e0$b;->e3(Z)Lcom/wufan/friend/chat/protocol/e0$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/e0;

    .line 6
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->t3(Lcom/wufan/friend/chat/protocol/e0;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 8
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 10
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public g(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JIIZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_PLAY:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->t3()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->f3(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->h3(Lcom/wufan/friend/chat/protocol/PlayType;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->c3(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->d3(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->b3(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->j3(Z)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 6
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->B3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 8
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 10
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public h(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JIIZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;",
            "Lcom/wufan/friend/chat/protocol/PlayType;",
            "JIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_PLAY:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->t3()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->f3(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->h3(Lcom/wufan/friend/chat/protocol/PlayType;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->c3(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->d3(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->b3(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->j3(Z)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->S2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 6
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->B3(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 8
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 10
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->FRIEND:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->FRD_GET_ALL_FRIENDS:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    .line 5
    invoke-direct {p0, v0}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public j(IJ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->RECOMMEND:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_LOCAL_BATTLE_GAME:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/i0;->Z2()Lcom/wufan/friend/chat/protocol/i0$b;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/wufan/friend/chat/protocol/i0$b;->V2(J)Lcom/wufan/friend/chat/protocol/i0$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wufan/friend/chat/protocol/i0$b;->U2(I)Lcom/wufan/friend/chat/protocol/i0$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/i0;

    .line 6
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->x3(Lcom/wufan/friend/chat/protocol/i0;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 8
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 10
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public k(JLjava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->m3()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0, p4}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->S2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 4
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p4

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->RECOMMEND:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 5
    invoke-virtual {p4, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p4

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_PLAYER:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {p4, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p4

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->Y2(J)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->Z2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->d3(I)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 8
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->D3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 10
    invoke-virtual {p4, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 13
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public l(JLjava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->m3()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0, p4}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->S2(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 4
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p4

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->RECOMMEND:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 5
    invoke-virtual {p4, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p4

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_PLAYER_V2:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {p4, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p4

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->Y2(J)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->Z2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->d3(I)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 8
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->D3(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 10
    invoke-virtual {p4, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 13
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->SYSTEM:Lcom/wufan/friend/chat/protocol/ServiceName;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_HEART:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->X2()Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    move-result-object v2

    sget-object v3, Lcom/wufan/friend/chat/protocol/HeartArgs$State;->APP:Lcom/wufan/friend/chat/protocol/HeartArgs$State;

    invoke-virtual {v2, v3}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->T2(Lcom/wufan/friend/chat/protocol/HeartArgs$State;)Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/HeartArgs;

    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/t1$b;->v3(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/t1;

    .line 5
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->i3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1;

    .line 7
    invoke-direct {p0, v0}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iget v0, p0, Lcom/wufan/friend/chat/rpc/b;->d:I

    if-ne v0, p2, :cond_2

    iget-object p2, p0, Lcom/wufan/friend/chat/rpc/b;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/wufan/friend/chat/rpc/b;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->SYSTEM:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_LOGIN:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->i3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t0;->d3()Lcom/wufan/friend/chat/protocol/t0$b;

    move-result-object v2

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/t0$b;->V2(I)Lcom/wufan/friend/chat/protocol/t0$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/protocol/t0$b;->Y2(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/t0$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t0;

    .line 8
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->z3(Lcom/wufan/friend/chat/protocol/t0;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 10
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 12
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method

.method public s(Lcom/wufan/friend/chat/protocol/OnlineState;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->t3()Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->SYSTEM:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 2
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->j3(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_ONLINE_STATE:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/s1$b;->e3(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/s1$b;->l3(J)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->c4()Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a1;->X2()Lcom/wufan/friend/chat/protocol/a1$b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/a1$b;->U2(I)Lcom/wufan/friend/chat/protocol/a1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a1;

    .line 6
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/t1$b;->F3(Lcom/wufan/friend/chat/protocol/a1;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    .line 8
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/s1$b;->d3(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/s1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/s1;

    .line 10
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/s1;)V

    return-void
.end method
