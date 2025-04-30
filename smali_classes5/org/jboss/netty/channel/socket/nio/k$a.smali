.class Lorg/jboss/netty/channel/socket/nio/k$a;
.super Ljava/lang/Object;
.source "NioClientBoss.java"

# interfaces
.implements Lorg/jboss/netty/util/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/jboss/netty/channel/socket/nio/k;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/k$a;->a:Lorg/jboss/netty/channel/socket/nio/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jboss/netty/util/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/k$a;->a:Lorg/jboss/netty/channel/socket/nio/k;

    iget-object p1, p1, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/nio/channels/Selector;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/k$a;->a:Lorg/jboss/netty/channel/socket/nio/k;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    return-void
.end method
