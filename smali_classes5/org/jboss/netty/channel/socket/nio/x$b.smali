.class final Lorg/jboss/netty/channel/socket/nio/x$b;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/x$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/jboss/netty/channel/g0;

.field private b:J

.field final synthetic c:Lorg/jboss/netty/channel/socket/nio/x;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->c:Lorg/jboss/netty/channel/socket/nio/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->a:Lorg/jboss/netty/channel/g0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->b:J

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->a:Lorg/jboss/netty/channel/g0;

    invoke-interface {v2}, Lorg/jboss/netty/channel/g0;->getCount()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->a:Lorg/jboss/netty/channel/g0;

    invoke-interface {v0}, Lorg/jboss/netty/channel/g0;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/nio/channels/WritableByteChannel;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->a:Lorg/jboss/netty/channel/g0;

    iget-wide v1, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->b:J

    invoke-interface {v0, p1, v1, v2}, Lorg/jboss/netty/channel/g0;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->b:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->b:J

    return-wide v0
.end method

.method public d(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->b:J

    return-wide v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->a:Lorg/jboss/netty/channel/g0;

    instance-of v1, v0, Lorg/jboss/netty/channel/a0;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/jboss/netty/channel/a0;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/a0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$b;->a:Lorg/jboss/netty/channel/g0;

    invoke-interface {v0}, Lorg/jboss/netty/util/b;->b()V

    :cond_0
    return-void
.end method
