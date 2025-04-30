.class public Lorg/jboss/netty/channel/n0;
.super Lorg/jboss/netty/channel/u;
.source "SucceededChannelFuture.java"


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/u;-><init>(Lorg/jboss/netty/channel/e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lorg/jboss/netty/channel/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public isSuccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sync()Lorg/jboss/netty/channel/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/j;
    .locals 0

    return-object p0
.end method
