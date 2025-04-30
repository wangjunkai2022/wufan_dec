.class public interface abstract Lorg/jboss/netty/channel/j;
.super Ljava/lang/Object;
.source "ChannelFuture.java"


# virtual methods
.method public abstract a()Ljava/lang/Throwable;
.end method

.method public abstract await()Lorg/jboss/netty/channel/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract await(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract await(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract awaitUninterruptibly()Lorg/jboss/netty/channel/j;
.end method

.method public abstract awaitUninterruptibly(J)Z
.end method

.method public abstract awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract b(Lorg/jboss/netty/channel/k;)V
.end method

.method public abstract c(Lorg/jboss/netty/channel/k;)V
.end method

.method public abstract cancel()Z
.end method

.method public abstract d(JJJ)Z
.end method

.method public abstract e()Lorg/jboss/netty/channel/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getChannel()Lorg/jboss/netty/channel/e;
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isDone()Z
.end method

.method public abstract isSuccess()Z
.end method

.method public abstract setFailure(Ljava/lang/Throwable;)Z
.end method

.method public abstract setSuccess()Z
.end method

.method public abstract sync()Lorg/jboss/netty/channel/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract syncUninterruptibly()Lorg/jboss/netty/channel/j;
.end method
