.class final Lorg/jboss/netty/buffer/g$b;
.super Ljava/lang/Object;
.source "ChannelBufferIndexFinder.java"

# interfaces
.implements Lorg/jboss/netty/buffer/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/buffer/g;
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
.method public a(Lorg/jboss/netty/buffer/e;I)Z
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
