.class abstract Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableSampleTimed.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSampleTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SampleTimedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30d108f96c89b153L


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

.field final d:Lio/reactivex/h0;

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field final f:Lio/reactivex/internal/disposables/SequentialDisposable;

.field g:Ll3/d;


# direct methods
.method constructor <init>(Ll3/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->f:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->a:Ll3/c;

    .line 5
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->b:J

    .line 6
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->c:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->d:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->f:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method abstract b()V
.end method

.method c()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->a:Ll3/c;

    invoke-interface {v1, v0}, Ll3/c;->onNext(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lio/reactivex/internal/util/b;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->cancel()V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->a:Ll3/c;

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Couldn\'t emit value due to lack of requests!"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->g:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->a()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->g:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->g:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->a:Ll3/c;

    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->f:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->d:Lio/reactivex/h0;

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->c:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    const-wide v0, 0x7fffffffffffffffL

    .line 5
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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSampleTimed$SampleTimedSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
