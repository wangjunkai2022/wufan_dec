.class final Lorg/jboss/netty/util/c$b;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field final synthetic c:Lorg/jboss/netty/util/c;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/c$a;",
            ">;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-object v0, v0, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget v1, v0, Lorg/jboss/netty/util/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget v2, v2, Lorg/jboss/netty/util/c;->h:I

    and-int/2addr v1, v2

    iput v1, v0, Lorg/jboss/netty/util/c;->j:I

    .line 3
    iget-object v0, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-object v0, v0, Lorg/jboss/netty/util/c;->g:[Lorg/jboss/netty/util/internal/f;

    aget-object v0, v0, v1

    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jboss/netty/util/c$b;->b(Ljava/util/List;Lorg/jboss/netty/util/internal/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-object p1, p1, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-object p2, p2, Lorg/jboss/netty/util/c;->i:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private b(Ljava/util/List;Lorg/jboss/netty/util/internal/f;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/c$a;",
            ">;",
            "Lorg/jboss/netty/util/internal/f<",
            "Lorg/jboss/netty/util/c$a;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/f;->rewind()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/util/c$a;

    .line 4
    iget-wide v2, v1, Lorg/jboss/netty/util/c$a;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 6
    iget-wide v2, v1, Lorg/jboss/netty/util/c$a;->b:J

    cmp-long v4, v2, p3

    if-gtz v4, :cond_0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-wide v2, v1, Lorg/jboss/netty/util/c$a;->d:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/c$a;->d:J

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jboss/netty/util/c$a;

    .line 12
    iget-object v0, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-wide v1, p2, Lorg/jboss/netty/util/c$a;->b:J

    sub-long/2addr v1, p3

    invoke-virtual {v0, p2, v1, v2}, Lorg/jboss/netty/util/c;->e(Lorg/jboss/netty/util/c$a;J)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/util/c$a;

    invoke-virtual {v1}, Lorg/jboss/netty/util/c$a;->c()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private d()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/util/c$b;->a:J

    iget-object v2, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-wide v2, v2, Lorg/jboss/netty/util/c;->e:J

    iget-wide v4, p0, Lorg/jboss/netty/util/c$b;->b:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 2
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-wide v4, v4, Lorg/jboss/netty/util/c;->e:J

    iget-wide v6, p0, Lorg/jboss/netty/util/c$b;->b:J

    mul-long v4, v4, v6

    iget-wide v6, p0, Lorg/jboss/netty/util/c$b;->a:J

    sub-long/2addr v2, v6

    sub-long/2addr v4, v2

    .line 4
    invoke-static {}, Lorg/jboss/netty/util/internal/d;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xa

    .line 5
    div-long/2addr v4, v2

    mul-long v4, v4, v2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    .line 6
    iget-wide v2, p0, Lorg/jboss/netty/util/c$b;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/util/c$b;->b:J

    return-wide v0

    .line 7
    :cond_2
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object v2, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-object v2, v2, Lorg/jboss/netty/util/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jboss/netty/util/c$b;->a:J

    const-wide/16 v1, 0x1

    .line 3
    iput-wide v1, p0, Lorg/jboss/netty/util/c$b;->b:J

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/c$b;->c:Lorg/jboss/netty/util/c;

    iget-object v1, v1, Lorg/jboss/netty/util/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/jboss/netty/util/c$b;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 6
    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/c$b;->a(Ljava/util/List;J)V

    .line 7
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/c$b;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
