.class abstract Lorg/jboss/netty/channel/socket/nio/b;
.super Lorg/jboss/netty/channel/a;
.source "AbstractNioChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/b$b;,
        Lorg/jboss/netty/channel/socket/nio/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/nio/channels/SelectableChannel;",
        ":",
        "Ljava/nio/channels/WritableByteChannel;",
        ">",
        "Lorg/jboss/netty/channel/a;"
    }
.end annotation


# instance fields
.field final A:Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final n:Lorg/jboss/netty/channel/socket/nio/e;

.field final o:Ljava/lang/Object;

.field final p:Ljava/lang/Runnable;

.field final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/i0;",
            ">;"
        }
    .end annotation
.end field

.field final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field u:Lorg/jboss/netty/channel/i0;

.field v:Lorg/jboss/netty/channel/socket/nio/x$g;

.field w:Z

.field x:Z

.field private volatile y:Ljava/net/InetSocketAddress;

.field volatile z:Ljava/net/InetSocketAddress;


# direct methods
.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/e;Ljava/nio/channels/SelectableChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/e;",
            "Lorg/jboss/netty/channel/i;",
            "Lorg/jboss/netty/channel/n;",
            "Lorg/jboss/netty/channel/p;",
            "Lorg/jboss/netty/channel/socket/nio/e;",
            "TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/channel/a;-><init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->o:Ljava/lang/Object;

    .line 3
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/b$b;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/b$b;-><init>(Lorg/jboss/netty/channel/socket/nio/b;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->p:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/b$a;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/b$a;-><init>(Lorg/jboss/netty/channel/socket/nio/b;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/Queue;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iput-object p6, p0, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    .line 9
    iput-object p7, p0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/e;Ljava/nio/channels/SelectableChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/e;",
            "Lorg/jboss/netty/channel/i;",
            "Lorg/jboss/netty/channel/n;",
            "Lorg/jboss/netty/channel/p;",
            "Lorg/jboss/netty/channel/socket/nio/e;",
            "TC;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/channel/a;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;)V

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->o:Ljava/lang/Object;

    .line 12
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/b$b;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/b$b;-><init>(Lorg/jboss/netty/channel/socket/nio/b;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->p:Ljava/lang/Runnable;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/b$a;

    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/b$a;-><init>(Lorg/jboss/netty/channel/socket/nio/b;)V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/Queue;

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    iput-object p5, p0, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    .line 18
    iput-object p6, p0, Lorg/jboss/netty/channel/socket/nio/b;->A:Ljava/nio/channels/SelectableChannel;

    return-void
.end method


# virtual methods
.method L0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/a;->a0(I)V

    return-void
.end method

.method public Q()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->isOpen()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->m0()I

    move-result v0

    .line 3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->e0()Lorg/jboss/netty/channel/socket/nio/j;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteBufferLowWaterMark()I

    move-result v3

    if-lt v2, v3, :cond_2

    :goto_0
    or-int/2addr v0, v1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->e0()Lorg/jboss/netty/channel/socket/nio/j;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteBufferHighWaterMark()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_1
    return v0
.end method

.method protected Y()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/a;->Y()Z

    move-result v0

    return v0
.end method

.method public abstract e0()Lorg/jboss/netty/channel/socket/nio/j;
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->e0()Lorg/jboss/netty/channel/socket/nio/j;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->y:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->k0()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->y:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->z:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->v0()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->z:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method abstract k0()Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method m0()I
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/a;->Q()I

    move-result v0

    return v0
.end method

.method abstract v0()Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public y0()Lorg/jboss/netty/channel/socket/nio/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->n:Lorg/jboss/netty/channel/socket/nio/e;

    return-object v0
.end method
