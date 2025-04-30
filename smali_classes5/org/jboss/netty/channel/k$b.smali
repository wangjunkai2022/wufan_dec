.class final Lorg/jboss/netty/channel/k$b;
.super Ljava/lang/Object;
.source "ChannelFutureListener.java"

# interfaces
.implements Lorg/jboss/netty/channel/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/jboss/netty/channel/j;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/j;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/jboss/netty/channel/j;->getChannel()Lorg/jboss/netty/channel/e;

    move-result-object p1

    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    :cond_0
    return-void
.end method
