.class final Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;
.super Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;
.source "ParallelReduce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelReduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelReduceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/DeferredScalarSubscriber<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x71ce22a1fe47cbf8L


# instance fields
.field final m:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field o:Z


# direct methods
.method constructor <init>(Ll3/c;Ljava/lang/Object;Lw2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TR;>;TR;",
            "Lw2/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;-><init>(Ll3/c;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->n:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->m:Lw2/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;->k:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->o:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->n:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->n:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->o:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->o:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->n:Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->o:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->m:Lw2/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->n:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lw2/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->n:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->cancel()V

    .line 6
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;->k:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/subscribers/DeferredScalarSubscriber;->k:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->a:Ll3/c;

    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method
