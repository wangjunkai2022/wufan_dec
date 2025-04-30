.class final Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "FlowableOnErrorNext.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnErrorNextSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3865630f1b3455e1L


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
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ll3/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final j:Z

.field k:Z

.field l:Z

.field m:J


# direct methods
.method constructor <init>(Ll3/c;Lw2/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ll3/b<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->h:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->i:Lw2/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->j:Z

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->l:Z

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->k:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->h:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->k:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->l:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->h:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->k:Z

    .line 6
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->j:Z

    if-eqz v1, :cond_2

    instance-of v1, p1, Ljava/lang/Exception;

    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->h:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->i:Lw2/o;

    invoke-interface {v1, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The nextSupplier returned a null Publisher"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->m:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->g(J)V

    .line 11
    :cond_3
    invoke-interface {v1, p0}, Ll3/b;->c(Ll3/c;)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 13
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->h:Ll3/c;

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->k:Z

    if-nez v0, :cond_1

    .line 3
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->m:J

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnErrorNext$OnErrorNextSubscriber;->h:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->h(Ll3/d;)V

    return-void
.end method
