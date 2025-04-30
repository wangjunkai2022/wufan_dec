.class final Lorg/jboss/netty/channel/socket/nio/b$a;
.super Ljava/lang/Object;
.source "AbstractNioChannel.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Queue<",
        "Lorg/jboss/netty/channel/i0;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field private final a:Lorg/jboss/netty/util/internal/k;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jboss/netty/channel/i0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lorg/jboss/netty/channel/socket/nio/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/jboss/netty/channel/socket/nio/b;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lorg/jboss/netty/util/internal/k;

    invoke-direct {p1}, Lorg/jboss/netty/util/internal/k;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->a:Lorg/jboss/netty/util/internal/k;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    return-void
.end method

.method private c(Lorg/jboss/netty/channel/i0;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lorg/jboss/netty/buffer/e;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/jboss/netty/buffer/e;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/i0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/jboss/netty/channel/i0;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/b$a;->a(Lorg/jboss/netty/channel/i0;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jboss/netty/channel/i0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public b()Lorg/jboss/netty/channel/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/i0;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public d(Lorg/jboss/netty/channel/i0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/b$a;->c(Lorg/jboss/netty/channel/i0;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/b;->e0()Lorg/jboss/netty/channel/socket/nio/j;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteBufferHighWaterMark()I

    move-result v1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, p1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    iget-object p1, p1, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->a:Lorg/jboss/netty/util/internal/k;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->a:Lorg/jboss/netty/util/internal/k;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    invoke-static {p1}, Lorg/jboss/netty/channel/s;->u(Lorg/jboss/netty/channel/e;)V

    .line 9
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->a:Lorg/jboss/netty/util/internal/k;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic element()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b$a;->b()Lorg/jboss/netty/channel/i0;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/jboss/netty/channel/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/i0;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jboss/netty/channel/i0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/jboss/netty/channel/i0;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/i0;

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/b$a;->c(Lorg/jboss/netty/channel/i0;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/b;->e0()Lorg/jboss/netty/channel/socket/nio/j;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteBufferLowWaterMark()I

    move-result v3

    if-eqz v2, :cond_0

    if-ge v2, v3, :cond_1

    :cond_0
    add-int/2addr v2, v1

    if-lt v2, v3, :cond_1

    .line 5
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 6
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    invoke-interface {v1}, Lorg/jboss/netty/channel/e;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->a:Lorg/jboss/netty/util/internal/k;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->a:Lorg/jboss/netty/util/internal/k;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->c:Lorg/jboss/netty/channel/socket/nio/b;

    invoke-static {v1}, Lorg/jboss/netty/channel/s;->u(Lorg/jboss/netty/channel/e;)V

    .line 9
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->a:Lorg/jboss/netty/util/internal/k;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public l()Lorg/jboss/netty/channel/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/i0;

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/jboss/netty/channel/i0;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/b$a;->d(Lorg/jboss/netty/channel/i0;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b$a;->f()Lorg/jboss/netty/channel/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b$a;->j()Lorg/jboss/netty/channel/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b$a;->l()Lorg/jboss/netty/channel/i0;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
