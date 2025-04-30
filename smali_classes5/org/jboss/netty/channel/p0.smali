.class public Lorg/jboss/netty/channel/p0;
.super Ljava/lang/Object;
.source "UpstreamMessageEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/i0;


# instance fields
.field private final a:Lorg/jboss/netty/channel/e;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "message"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/jboss/netty/channel/p0;->a:Lorg/jboss/netty/channel/e;

    .line 5
    iput-object p2, p0, Lorg/jboss/netty/channel/p0;->b:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 6
    iput-object p3, p0, Lorg/jboss/netty/channel/p0;->c:Ljava/net/SocketAddress;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/channel/p0;->c:Ljava/net/SocketAddress;

    :goto_0
    return-void
.end method


# virtual methods
.method public d()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/p0;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/p0;->a:Lorg/jboss/netty/channel/e;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/p0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/p0;->c:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/p0;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/p0;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/e;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    const-string v2, " RECEIVED: "

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/p0;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/p0;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/p0;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/p0;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/i;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/p0;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
