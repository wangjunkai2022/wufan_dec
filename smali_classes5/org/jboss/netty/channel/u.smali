.class public abstract Lorg/jboss/netty/channel/u;
.super Ljava/lang/Object;
.source "CompleteChannelFuture.java"

# interfaces
.implements Lorg/jboss/netty/channel/j;


# instance fields
.field private final a:Lorg/jboss/netty/channel/e;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/channel/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/jboss/netty/channel/u;->a:Lorg/jboss/netty/channel/e;

    return-void
.end method


# virtual methods
.method public await()Lorg/jboss/netty/channel/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public await(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public awaitUninterruptibly()Lorg/jboss/netty/channel/j;
    .locals 0

    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lorg/jboss/netty/channel/k;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lorg/jboss/netty/channel/k;->b(Lorg/jboss/netty/channel/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(Lorg/jboss/netty/channel/k;)V
    .locals 0

    return-void
.end method

.method public cancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(JJJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/u;->a:Lorg/jboss/netty/channel/e;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setFailure(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSuccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
