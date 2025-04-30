.class public Lorg/jboss/netty/channel/f0;
.super Lorg/jboss/netty/channel/u;
.source "FailedChannelFuture.java"


# instance fields
.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/u;-><init>(Lorg/jboss/netty/channel/e;)V

    const-string p1, "cause"

    .line 2
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lorg/jboss/netty/channel/f0;->b:Ljava/lang/Throwable;

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/f0;->b:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 2
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 4
    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    iget-object v1, p0, Lorg/jboss/netty/channel/f0;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/f0;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public e()Lorg/jboss/netty/channel/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/f0;->b:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_1

    .line 2
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lorg/jboss/netty/channel/f0;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    check-cast v0, Ljava/lang/Exception;

    throw v0
.end method

.method public isSuccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sync()Lorg/jboss/netty/channel/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/f0;->f()V

    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/f0;->f()V

    return-object p0
.end method
