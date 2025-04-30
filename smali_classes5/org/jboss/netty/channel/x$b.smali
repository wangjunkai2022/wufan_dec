.class final Lorg/jboss/netty/channel/x$b;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;)V
    .locals 0

    return-void
.end method

.method public b(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    new-instance p2, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "Not attached yet"

    invoke-direct {p2, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/s;->i(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    throw p3
.end method
