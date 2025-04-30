.class public Lorg/jboss/netty/channel/socket/nio/l;
.super Lorg/jboss/netty/channel/socket/nio/a;
.source "NioClientBossPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/a<",
        "Lorg/jboss/netty/channel/socket/nio/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lorg/jboss/netty/util/d;

.field private final f:Lorg/jboss/netty/util/g;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 2

    .line 5
    new-instance v0, Lorg/jboss/netty/util/c;

    invoke-direct {v0}, Lorg/jboss/netty/util/c;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/channel/socket/nio/l;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/g;Lorg/jboss/netty/util/d;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/jboss/netty/channel/socket/nio/l;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/g;Lorg/jboss/netty/util/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/a;-><init>(Ljava/util/concurrent/Executor;IZ)V

    .line 2
    iput-object p4, p0, Lorg/jboss/netty/channel/socket/nio/l;->e:Lorg/jboss/netty/util/d;

    .line 3
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/l;->f:Lorg/jboss/netty/util/g;

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/a;->f()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/a;->b()V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->f:Lorg/jboss/netty/util/g;

    invoke-interface {v0}, Lorg/jboss/netty/util/g;->stop()Ljava/util/Set;

    return-void
.end method

.method protected bridge synthetic g(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/l;->h(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/k;

    move-result-object p1

    return-object p1
.end method

.method protected h(Ljava/util/concurrent/Executor;)Lorg/jboss/netty/channel/socket/nio/k;
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/k;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/l;->f:Lorg/jboss/netty/util/g;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/l;->e:Lorg/jboss/netty/util/d;

    invoke-direct {v0, p1, v1, v2}, Lorg/jboss/netty/channel/socket/nio/k;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/g;Lorg/jboss/netty/util/d;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/a;->shutdown()V

    .line 2
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->g:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/l;->f:Lorg/jboss/netty/util/g;

    invoke-interface {v0}, Lorg/jboss/netty/util/g;->stop()Ljava/util/Set;

    :cond_0
    return-void
.end method
