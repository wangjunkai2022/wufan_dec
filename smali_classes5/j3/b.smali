.class public interface abstract Lj3/b;
.super Ljava/lang/Object;
.source "ChannelGroupFuture.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jboss/netty/channel/j;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract U()Z
.end method

.method public abstract Y()Z
.end method

.method public abstract a0(Lj3/c;)V
.end method

.method public abstract await()Lj3/b;
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

.method public abstract awaitUninterruptibly()Lj3/b;
.end method

.method public abstract awaitUninterruptibly(J)Z
.end method

.method public abstract awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract isDone()Z
.end method

.method public abstract isPartialFailure()Z
.end method

.method public abstract isPartialSuccess()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jboss/netty/channel/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract k(Ljava/lang/Integer;)Lorg/jboss/netty/channel/j;
.end method

.method public abstract m(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
.end method

.method public abstract m0()Lj3/a;
.end method

.method public abstract y0(Lj3/c;)V
.end method
