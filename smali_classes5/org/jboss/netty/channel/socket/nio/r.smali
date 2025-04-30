.class public Lorg/jboss/netty/channel/socket/nio/r;
.super Lorg/jboss/netty/channel/socket/nio/b;
.source "NioSocketChannel.java"

# interfaces
.implements Lk3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/b<",
        "Ljava/nio/channels/SocketChannel;",
        ">;",
        "Lk3/d;"
    }
.end annotation


# static fields
.field private static final D:I = 0x0

.field private static final E:I = 0x1

.field private static final F:I = 0x2

.field private static final G:I = -0x1

.field static final synthetic H:Z


# instance fields
.field volatile B:I

.field private final C:Lorg/jboss/netty/channel/socket/nio/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/jboss/netty/channel/socket/nio/r;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/t;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/socket/nio/b;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/e;Ljava/nio/channels/SelectableChannel;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/r;->B:I

    .line 3
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/i;

    invoke-virtual {p5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jboss/netty/channel/socket/nio/i;-><init>(Ljava/net/Socket;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:Lorg/jboss/netty/channel/socket/nio/s;

    return-void
.end method


# virtual methods
.method public M0()Lorg/jboss/netty/channel/socket/nio/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:Lorg/jboss/netty/channel/socket/nio/s;

    return-object v0
.end method

.method public N0()Lorg/jboss/netty/channel/socket/nio/t;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->y0()Lorg/jboss/netty/channel/socket/nio/e;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/t;

    return-object v0
.end method

.method final O0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->B:I

    return-void
.end method

.method final P0()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->B:I

    :cond_0
    return-void
.end method

.method public bridge synthetic Q()I
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->Q()I

    move-result v0

    return v0
.end method

.method protected Y()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->B:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic e0()Lorg/jboss/netty/channel/socket/nio/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->M0()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lk3/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->M0()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/f;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->M0()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->U()Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 3
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/a;->i(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->B:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method k0()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public r()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->B:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method v0()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic y0()Lorg/jboss/netty/channel/socket/nio/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->N0()Lorg/jboss/netty/channel/socket/nio/t;

    move-result-object v0

    return-object v0
.end method
