.class final Lorg/jboss/netty/channel/socket/nio/b$b;
.super Ljava/lang/Object;
.source "AbstractNioChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/socket/nio/b;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$b;->a:Lorg/jboss/netty/channel/socket/nio/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$b;->a:Lorg/jboss/netty/channel/socket/nio/b;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/b;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$b;->a:Lorg/jboss/netty/channel/socket/nio/b;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->x(Lorg/jboss/netty/channel/socket/nio/b;)V

    return-void
.end method
