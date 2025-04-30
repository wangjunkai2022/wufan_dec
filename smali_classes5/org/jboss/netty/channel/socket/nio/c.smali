.class public abstract Lorg/jboss/netty/channel/socket/nio/c;
.super Lorg/jboss/netty/channel/b;
.source "AbstractNioChannelSink.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/nio/b;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lorg/jboss/netty/channel/socket/nio/b;

    .line 4
    new-instance v1, Lk3/a;

    invoke-interface {p1}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lk3/a;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, v0, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/e;->e0(Ljava/lang/Runnable;)V

    return-object v1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/b;->b(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lorg/jboss/netty/channel/socket/nio/b;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/b;

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->p(Lorg/jboss/netty/channel/socket/nio/b;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
