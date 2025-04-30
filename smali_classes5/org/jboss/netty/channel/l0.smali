.class public Lorg/jboss/netty/channel/l0;
.super Ljava/lang/Object;
.source "SimpleChannelHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/r;
.implements Lorg/jboss/netty/channel/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public channelBound(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
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

.method public channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
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

.method public channelConnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
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

.method public channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
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

.method public channelInterestChanged(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
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

.method public channelOpen(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
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

.method public channelUnbound(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
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

.method public childChannelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/t;)V
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

.method public childChannelOpen(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/t;)V
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

.method public closeRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public connectRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public disconnectRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getPipeline()Lorg/jboss/netty/channel/n;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/n;->getLast()Lorg/jboss/netty/channel/ChannelHandler;

    .line 2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/channel/i0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/jboss/netty/channel/i0;

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->writeRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Lorg/jboss/netty/channel/q;

    if-eqz v0, :cond_7

    .line 4
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/q;

    .line 5
    sget-object v1, Lorg/jboss/netty/channel/l0$a;->a:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 6
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->setInterestOpsRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->connectRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->disconnectRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->bindRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->unbindRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 14
    :cond_6
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 15
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->closeRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 16
    :cond_7
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/channel/i0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lorg/jboss/netty/channel/i0;

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->messageReceived(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Lorg/jboss/netty/channel/q0;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lorg/jboss/netty/channel/q0;

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->writeComplete(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q0;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    instance-of v0, p2, Lorg/jboss/netty/channel/t;

    if-eqz v0, :cond_3

    .line 7
    check-cast p2, Lorg/jboss/netty/channel/t;

    .line 8
    invoke-interface {p2}, Lorg/jboss/netty/channel/t;->b()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/e;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->childChannelOpen(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/t;)V

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->childChannelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/t;)V

    goto/16 :goto_0

    .line 11
    :cond_3
    instance-of v0, p2, Lorg/jboss/netty/channel/q;

    if-eqz v0, :cond_b

    .line 12
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/q;

    .line 13
    sget-object v1, Lorg/jboss/netty/channel/l0$a;->a:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    .line 14
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->channelInterestChanged(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->channelConnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 19
    :cond_7
    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 20
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->channelBound(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 21
    :cond_8
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->channelUnbound(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 22
    :cond_9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 23
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->channelOpen(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 24
    :cond_a
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/l0;->channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    goto :goto_0

    .line 25
    :cond_b
    instance-of v0, p2, Lorg/jboss/netty/channel/e0;

    if-eqz v0, :cond_c

    .line 26
    check-cast p2, Lorg/jboss/netty/channel/e0;

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V

    goto :goto_0

    .line 27
    :cond_c
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    :goto_0
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V
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

.method public setInterestOpsRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public unbindRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method

.method public writeComplete(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q0;)V
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

.method public writeRequested(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->c(Lorg/jboss/netty/channel/h;)V

    return-void
.end method
