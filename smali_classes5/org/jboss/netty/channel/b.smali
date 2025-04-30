.class public abstract Lorg/jboss/netty/channel/b;
.super Ljava/lang/Object;
.source "AbstractChannelSink.java"

# interfaces
.implements Lorg/jboss/netty/channel/p;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p2

    invoke-static {p2}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 3
    invoke-interface {p1}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

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
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/b;->d(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected d(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
