.class final Lio/reactivex/processors/ReplayProcessor$b;
.super Ljava/lang/Object;
.source "ReplayProcessor.java"

# interfaces
.implements Lio/reactivex/processors/ReplayProcessor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/processors/ReplayProcessor$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field e:I

.field volatile f:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Ljava/lang/Throwable;

.field volatile i:Z


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "maxSize"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->a:I

    const-string p1, "maxAge"

    .line 3
    invoke-static {p2, p3, p1}, Lio/reactivex/internal/functions/a;->i(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->b:J

    const-string p1, "unit is null"

    .line 4
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->c:Ljava/util/concurrent/TimeUnit;

    const-string p1, "scheduler is null"

    .line 5
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/h0;

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->d:Lio/reactivex/h0;

    .line 6
    new-instance p1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 7
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->g:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 8
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->d:Lio/reactivex/h0;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 2
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->g:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 3
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->g:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 4
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->e:I

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$b;->g()V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 3
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :cond_0
    return-void
.end method

.method public c([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$b;->e()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$b;->f(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 4
    aput-object v2, p1, v3

    goto :goto_1

    .line 5
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eq v3, v1, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 8
    iget-object v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->a:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    .line 10
    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public complete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$b;->h()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->i:Z

    return-void
.end method

.method public d(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->a:Ll3/c;

    .line 3
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->c:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$b;->e()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v1

    .line 5
    :cond_1
    iget-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->f:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 6
    :cond_2
    iget-object v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :goto_0
    const/4 v8, 0x0

    cmp-long v9, v2, v6

    if-eqz v9, :cond_8

    .line 7
    iget-boolean v9, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->e:Z

    if-eqz v9, :cond_3

    .line 8
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->c:Ljava/lang/Object;

    return-void

    .line 9
    :cond_3
    iget-boolean v9, p0, Lio/reactivex/processors/ReplayProcessor$b;->i:Z

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v10, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_6

    if-eqz v11, :cond_6

    .line 11
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->c:Ljava/lang/Object;

    .line 12
    iput-boolean v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->e:Z

    .line 13
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->h:Ljava/lang/Throwable;

    if-nez p1, :cond_5

    .line 14
    invoke-interface {v0}, Ll3/c;->onComplete()V

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_6
    if-eqz v11, :cond_7

    goto :goto_3

    .line 16
    :cond_7
    iget-object v1, v10, Lio/reactivex/processors/ReplayProcessor$TimedNode;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    move-object v1, v10

    goto :goto_0

    :cond_8
    :goto_3
    cmp-long v9, v2, v6

    if-nez v9, :cond_b

    .line 17
    iget-boolean v6, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->e:Z

    if-eqz v6, :cond_9

    .line 18
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->c:Ljava/lang/Object;

    return-void

    .line 19
    :cond_9
    iget-boolean v6, p0, Lio/reactivex/processors/ReplayProcessor$b;->i:Z

    if-eqz v6, :cond_b

    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    .line 21
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->c:Ljava/lang/Object;

    .line 22
    iput-boolean v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->e:Z

    .line 23
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->h:Ljava/lang/Throwable;

    if-nez p1, :cond_a

    .line 24
    invoke-interface {v0}, Ll3/c;->onComplete()V

    goto :goto_4

    .line 25
    :cond_a
    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    .line 26
    :cond_b
    iput-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->c:Ljava/lang/Object;

    .line 27
    iput-wide v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->f:J

    neg-int v5, v5

    .line 28
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_2

    return-void
.end method

.method e()Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 2
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->d:Lio/reactivex/h0;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$b;->b:J

    sub-long/2addr v1, v3

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_0
    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    if-eqz v0, :cond_1

    .line 4
    iget-wide v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->b:J

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$b;->h()V

    .line 2
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/processors/ReplayProcessor$b;->i:Z

    return-void
.end method

.method f(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method g()V
    .locals 7

    .line 1
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->e:I

    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->a:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->e:I

    .line 3
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->d:Lio/reactivex/h0;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->b:J

    sub-long/2addr v0, v2

    .line 6
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v3, :cond_1

    .line 8
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 9
    :cond_1
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->b:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 10
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->h:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->d:Lio/reactivex/h0;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/processors/ReplayProcessor$b;->b:J

    sub-long/2addr v1, v3

    .line 4
    iget-wide v3, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->b:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->a:Ljava/lang/Object;

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method h()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->d:Lio/reactivex/h0;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/h0;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->b:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 3
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 4
    iget-object v0, v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    invoke-direct {v0, v6, v4, v5}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 6
    :cond_0
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 7
    :cond_1
    iget-wide v7, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->b:J

    cmp-long v9, v7, v0

    if-lez v9, :cond_3

    .line 8
    iget-object v0, v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    invoke-direct {v0, v6, v4, v5}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 12
    :cond_2
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$b;->f:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_1
    return-void

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor$b;->i:Z

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$b;->e()Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor$b;->f(Lio/reactivex/processors/ReplayProcessor$TimedNode;)I

    move-result v0

    return v0
.end method
