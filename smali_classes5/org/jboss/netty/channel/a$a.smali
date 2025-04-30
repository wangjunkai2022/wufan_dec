.class final Lorg/jboss/netty/channel/a$a;
.super Lorg/jboss/netty/channel/w;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic l:Lorg/jboss/netty/channel/a;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/a$a;->l:Lorg/jboss/netty/channel/a;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/w;-><init>(Lorg/jboss/netty/channel/e;Z)V

    return-void
.end method


# virtual methods
.method n()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/w;->setSuccess()Z

    move-result v0

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
