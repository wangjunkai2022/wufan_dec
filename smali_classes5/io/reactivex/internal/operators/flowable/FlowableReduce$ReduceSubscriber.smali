.class final Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "FlowableReduce.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40b970e193918fd6L


# instance fields
.field final k:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field l:Ll3/d;


# direct methods
.method constructor <init>(Ll3/c;Lw2/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;",
            "Lw2/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Ll3/c;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->k:Lw2/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 3
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    .line 4
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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->k:Lw2/c;

    invoke-interface {v1, v0, p1}, Lw2/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->l:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->a:Ll3/c;

    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method
