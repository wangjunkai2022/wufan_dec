.class Lorg/jboss/netty/channel/socket/nio/o$a;
.super Ljava/lang/Object;
.source "NioClientSocketPipelineSink.java"

# interfaces
.implements Lorg/jboss/netty/channel/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/nio/o;->f(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/j;

.field final synthetic b:Lorg/jboss/netty/channel/socket/nio/o;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/o;Lorg/jboss/netty/channel/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o$a;->b:Lorg/jboss/netty/channel/socket/nio/o;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/o$a;->a:Lorg/jboss/netty/channel/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/jboss/netty/channel/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o$a;->a:Lorg/jboss/netty/channel/j;

    invoke-interface {p1}, Lorg/jboss/netty/channel/j;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o$a;->a:Lorg/jboss/netty/channel/j;

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
