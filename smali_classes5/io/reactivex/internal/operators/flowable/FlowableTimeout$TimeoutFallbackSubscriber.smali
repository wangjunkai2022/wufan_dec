.class final Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "FlowableTimeout.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutFallbackSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x343e2a2afd6bc01eL


# instance fields
.field final h:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final i:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field final j:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ll3/d;",
            ">;"
        }
    .end annotation
.end field

.field final l:Ljava/util/concurrent/atomic/AtomicLong;

.field m:Ll3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field n:J


# direct methods
.method constructor <init>(Ll3/c;Lw2/o;Ll3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;",
            "Lw2/o<",
            "-TT;+",
            "Ll3/b<",
            "*>;>;",
            "Ll3/b<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->h:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->i:Lw2/o;

    .line 4
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->m:Ll3/b;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->h:Ll3/c;

    invoke-interface {p1, p3}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->m:Ll3/b;

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->m:Ll3/b;

    .line 5
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->n:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->g(J)V

    .line 7
    :cond_0
    new-instance p2, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$a;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->h:Ll3/c;

    invoke-direct {p2, v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$a;-><init>(Ll3/c;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;)V

    invoke-interface {p1, p2}, Ll3/b;->c(Ll3/c;)V

    :cond_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method i(Ll3/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/flowable/FlowableTimeout$a;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ll3/b;->c(Ll3/c;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->h:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->h:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    add-long v7, v0, v5

    invoke-virtual {v4, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 5
    :cond_1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->n:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->n:J

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->h:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->i:Lw2/o;

    .line 8
    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The itemTimeoutIndicator returned a null Publisher."

    .line 9
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;

    invoke-direct {v0, v7, v8, p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;-><init>(JLio/reactivex/internal/operators/flowable/FlowableTimeout$a;)V

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->j:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {p1, v0}, Ll3/b;->c(Ll3/c;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 15
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 16
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->h:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutFallbackSubscriber;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->h(Ll3/d;)V

    :cond_0
    return-void
.end method
