.class final Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableThrottleLatest.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThrottleLatestSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7323c2cdbcdaca16L


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0$c;

.field final e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field h:Ll3/d;

.field volatile i:Z

.field j:Ljava/lang/Throwable;

.field volatile k:Z

.field volatile l:Z

.field m:J

.field n:Z


# direct methods
.method constructor <init>(Ll3/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0$c;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->a:Ll3/c;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->d:Lio/reactivex/h0$c;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->e:Z

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->g:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method a()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->a:Ll3/c;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->k:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->i:Z

    if-eqz v5, :cond_3

    .line 8
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->j:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->j:Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    .line 11
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->d:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v9, 0x1

    if-eqz v5, :cond_7

    if-nez v7, :cond_6

    .line 13
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->e:Z

    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->m:J

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    add-long/2addr v3, v9

    .line 17
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->m:J

    .line 18
    invoke-interface {v2, v0}, Ll3/c;->onNext(Ljava/lang/Object;)V

    .line 19
    invoke-interface {v2}, Ll3/c;->onComplete()V

    goto :goto_2

    .line 20
    :cond_5
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not emit final value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 22
    invoke-interface {v2}, Ll3/c;->onComplete()V

    .line 23
    :goto_2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->d:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void

    :cond_7
    if-eqz v7, :cond_8

    .line 24
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->l:Z

    if-eqz v5, :cond_9

    .line 25
    iput-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->n:Z

    .line 26
    iput-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->l:Z

    goto :goto_3

    .line 27
    :cond_8
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->n:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->l:Z

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    neg-int v4, v4

    .line 28
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 29
    :cond_a
    :goto_4
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 30
    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->m:J

    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    cmp-long v13, v6, v11

    if-eqz v13, :cond_b

    .line 32
    invoke-interface {v2, v5}, Ll3/c;->onNext(Ljava/lang/Object;)V

    add-long/2addr v6, v9

    .line 33
    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->m:J

    .line 34
    iput-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->l:Z

    .line 35
    iput-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->n:Z

    .line 36
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->d:Lio/reactivex/h0$c;

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->b:J

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v6, v7, v8}, Lio/reactivex/h0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    goto/16 :goto_0

    .line 37
    :cond_b
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->h:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 38
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->d:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->k:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->h:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->d:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->i:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->i:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->a()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->a()V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->h:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->h:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->a:Ll3/c;

    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->l:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->a()V

    return-void
.end method
