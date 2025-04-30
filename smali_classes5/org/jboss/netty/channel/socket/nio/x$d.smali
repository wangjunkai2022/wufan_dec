.class final Lorg/jboss/netty/channel/socket/nio/x$d;
.super Lorg/jboss/netty/channel/socket/nio/x$h;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field private final c:Lorg/jboss/netty/channel/socket/nio/x$e;

.field final synthetic d:Lorg/jboss/netty/channel/socket/nio/x;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->d:Lorg/jboss/netty/channel/socket/nio/x;

    .line 2
    invoke-direct {p0, p3}, Lorg/jboss/netty/channel/socket/nio/x$h;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->c:Lorg/jboss/netty/channel/socket/nio/x$e;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->c:Lorg/jboss/netty/channel/socket/nio/x$e;

    .line 2
    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->b:I

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/x$e;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->d:Lorg/jboss/netty/channel/socket/nio/x;

    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/x;->c(Lorg/jboss/netty/channel/socket/nio/x;)Lorg/jboss/netty/channel/socket/nio/x$e;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->d:Lorg/jboss/netty/channel/socket/nio/x;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/x$f;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/x$d;->d:Lorg/jboss/netty/channel/socket/nio/x;

    invoke-static {v3}, Lorg/jboss/netty/channel/socket/nio/x;->d(Lorg/jboss/netty/channel/socket/nio/x;)Lorg/jboss/netty/channel/socket/nio/x$f;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/jboss/netty/channel/socket/nio/x$f;-><init>(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$e;Lorg/jboss/netty/channel/socket/nio/x$f;)V

    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/nio/x;->e(Lorg/jboss/netty/channel/socket/nio/x;Lorg/jboss/netty/channel/socket/nio/x$f;)Lorg/jboss/netty/channel/socket/nio/x$f;

    :cond_0
    return-void
.end method
