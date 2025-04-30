.class final Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableFlatMapSingle.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x775a28d5b42d01b7L


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field final e:Lio/reactivex/disposables/a;

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field final g:Lio/reactivex/internal/util/AtomicThrowable;

.field final h:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/queue/a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field j:Ll3/d;

.field volatile k:Z


# direct methods
.method constructor <init>(Ll3/c;Lw2/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->h:Lw2/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->b:Z

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->c:I

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance p1, Lio/reactivex/disposables/a;

    invoke-direct {p1}, Lio/reactivex/disposables/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->e:Lio/reactivex/disposables/a;

    .line 8
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->b()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 15

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a:Ll3/c;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4
    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    const/4 v11, 0x0

    cmp-long v12, v9, v5

    if-eqz v12, :cond_9

    .line 5
    iget-boolean v12, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    if-eqz v12, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    return-void

    .line 7
    :cond_1
    iget-boolean v12, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->b:Z

    if-nez v12, :cond_2

    .line 8
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Throwable;

    if-eqz v12, :cond_2

    .line 9
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    .line 11
    invoke-interface {v0, v1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 13
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/reactivex/internal/queue/a;

    if-eqz v13, :cond_4

    .line 14
    invoke-virtual {v13}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v13

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    if-eqz v12, :cond_7

    if-eqz v14, :cond_7

    .line 15
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 16
    invoke-interface {v0, v1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 17
    :cond_6
    invoke-interface {v0}, Ll3/c;->onComplete()V

    :goto_4
    return-void

    :cond_7
    if-eqz v14, :cond_8

    goto :goto_5

    .line 18
    :cond_8
    invoke-interface {v0, v13}, Ll3/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_9
    :goto_5
    cmp-long v12, v9, v5

    if-nez v12, :cond_10

    .line 19
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    if-eqz v5, :cond_a

    .line 20
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    return-void

    .line 21
    :cond_a
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->b:Z

    if-nez v5, :cond_b

    .line 22
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    .line 23
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->clear()V

    .line 25
    invoke-interface {v0, v1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 26
    :cond_b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    .line 27
    :goto_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/internal/queue/a;

    if-eqz v6, :cond_d

    .line 28
    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    const/4 v11, 0x1

    :cond_e
    if-eqz v5, :cond_10

    if-eqz v11, :cond_10

    .line 29
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 30
    invoke-interface {v0, v1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 31
    :cond_f
    invoke-interface {v0}, Ll3/c;->onComplete()V

    :goto_7
    return-void

    :cond_10
    cmp-long v5, v9, v7

    if-eqz v5, :cond_11

    .line 32
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v5, v9, v10}, Lio/reactivex/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 33
    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->c:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_11

    .line 34
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->j:Ll3/d;

    invoke-interface {v5, v9, v10}, Ll3/d;->request(J)V

    :cond_11
    neg-int v4, v4

    .line 35
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void
.end method

.method c()Lio/reactivex/internal/queue/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/queue/a<",
            "TR;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/a;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->j:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->e:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    return-void
.end method

.method clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    :cond_0
    return-void
.end method

.method d(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<",
            "TT;TR;>.InnerObserver;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->e:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->delete(Lio/reactivex/disposables/b;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->b:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->j:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->e:Lio/reactivex/disposables/a;

    invoke-virtual {p1}, Lio/reactivex/disposables/a;->dispose()V

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->c:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->j:Ll3/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p2}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method e(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber<",
            "TT;TR;>.InnerObserver;TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->e:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->delete(Lio/reactivex/disposables/b;)Z

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a:Ll3/c;

    invoke-interface {v0, p2}, Ll3/c;->onNext(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/reactivex/internal/queue/a;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lio/reactivex/internal/queue/a;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a:Ll3/c;

    invoke-interface {p2, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a:Ll3/c;

    invoke-interface {p1}, Ll3/c;->onComplete()V

    :goto_0
    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lio/reactivex/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 12
    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->c:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_5

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->j:Ll3/d;

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->c()Lio/reactivex/internal/queue/a;

    move-result-object p1

    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    invoke-virtual {p1, p2}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    :catchall_0
    move-exception p2

    .line 19
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 20
    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->c()Lio/reactivex/internal/queue/a;

    move-result-object p1

    .line 21
    monitor-enter p1

    .line 22
    :try_start_2
    invoke-virtual {p1, p2}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    .line 23
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 26
    :cond_7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->b()V

    return-void

    :catchall_1
    move-exception p2

    .line 27
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->g:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->b:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->e:Lio/reactivex/disposables/a;

    invoke-virtual {p1}, Lio/reactivex/disposables/a;->dispose()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->h:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/o0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver;-><init>(Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;)V

    .line 4
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->e:Lio/reactivex/disposables/a;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->j:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->j:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->j:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a:Ll3/c;

    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 4
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 6
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber;->a()V

    :cond_0
    return-void
.end method
