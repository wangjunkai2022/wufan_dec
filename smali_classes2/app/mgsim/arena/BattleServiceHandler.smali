.class public Lapp/mgsim/arena/BattleServiceHandler;
.super Lorg/jboss/netty/channel/l0;
.source "BattleServiceHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArenaService"


# instance fields
.field private final command:Lapp/mgsim/arena/SocketListener;


# direct methods
.method public constructor <init>(Lapp/mgsim/arena/SocketListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/l0;-><init>()V

    .line 2
    iput-object p1, p0, Lapp/mgsim/arena/BattleServiceHandler;->command:Lapp/mgsim/arena/SocketListener;

    return-void
.end method


# virtual methods
.method public channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    return-void
.end method

.method public channelConnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/BattleServiceHandler;->command:Lapp/mgsim/arena/SocketListener;

    invoke-interface {v0}, Lapp/mgsim/arena/SocketListener;->onSocketConnected()V

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->channelConnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/BattleServiceHandler;->command:Lapp/mgsim/arena/SocketListener;

    invoke-interface {v0}, Lapp/mgsim/arena/SocketListener;->onSocketDisconnected()V

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p2

    invoke-interface {p2}, Lorg/jboss/netty/channel/e;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    :cond_0
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/papa91/battle/protocol/Response;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lapp/mgsim/arena/BattleServiceHandler;->command:Lapp/mgsim/arena/SocketListener;

    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lapp/mgsim/arena/SocketListener;->onServerResponse(Ljava/lang/Object;)I

    :cond_0
    return-void
.end method
