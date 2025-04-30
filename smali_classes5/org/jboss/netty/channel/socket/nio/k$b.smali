.class final Lorg/jboss/netty/channel/socket/nio/k$b;
.super Ljava/lang/Object;
.source "NioClientBoss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/jboss/netty/channel/socket/nio/k;

.field private final b:Lorg/jboss/netty/channel/socket/nio/m;

.field final synthetic c:Lorg/jboss/netty/channel/socket/nio/k;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/k;Lorg/jboss/netty/channel/socket/nio/k;Lorg/jboss/netty/channel/socket/nio/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->a:Lorg/jboss/netty/channel/socket/nio/k;

    .line 3
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/r;->M0()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/f;->getConnectTimeoutMillis()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/r;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/k;

    invoke-static {v2}, Lorg/jboss/netty/channel/socket/nio/k;->m(Lorg/jboss/netty/channel/socket/nio/k;)Lorg/jboss/netty/util/g;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->c:Lorg/jboss/netty/channel/socket/nio/k;

    invoke-static {v3}, Lorg/jboss/netty/channel/socket/nio/k;->l(Lorg/jboss/netty/channel/socket/nio/k;)Lorg/jboss/netty/util/h;

    move-result-object v3

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Lorg/jboss/netty/util/g;->a(Lorg/jboss/netty/util/h;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/f;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/channel/socket/nio/m;->n0:Lorg/jboss/netty/util/f;

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->a:Lorg/jboss/netty/channel/socket/nio/k;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-static {v0}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/r;->M0()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/f;->getConnectTimeoutMillis()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/k$b;->b:Lorg/jboss/netty/channel/socket/nio/m;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/channel/socket/nio/m;->K:J

    :cond_1
    return-void
.end method
