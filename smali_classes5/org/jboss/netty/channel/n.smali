.class public interface abstract Lorg/jboss/netty/channel/n;
.super Ljava/lang/Object;
.source "ChannelPipeline.java"


# virtual methods
.method public abstract a(Lorg/jboss/netty/channel/h;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract c(Lorg/jboss/netty/channel/h;)V
.end method

.method public abstract d(Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract e()Z
.end method

.method public abstract execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract g(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract getChannel()Lorg/jboss/netty/channel/e;
.end method

.method public abstract getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/m;"
        }
    .end annotation
.end method

.method public abstract getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/m;
.end method

.method public abstract getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/m;
.end method

.method public abstract getFirst()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract getLast()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract getNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract i(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/p;)V
.end method

.method public abstract j(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract k(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract l(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract m()Lorg/jboss/netty/channel/p;
.end method

.method public abstract remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract removeLast()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract toMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation
.end method
