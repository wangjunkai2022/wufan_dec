.class final Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableTimeout.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ll3/d;",
        ">;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78db4ef70799ee01L


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;

.field final b:J


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/flowable/FlowableTimeout$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->b:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->a:Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/d;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->isCancelled(Ll3/d;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->a:Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->b:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$b;->b(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->a:Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->b:J

    invoke-interface {v0, v1, v2, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;->a(JLjava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/d;

    .line 2
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-eq p1, v0, :cond_0

    .line 3
    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->a:Lio/reactivex/internal/operators/flowable/FlowableTimeout$a;

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutConsumer;->b:J

    invoke-interface {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableTimeoutTimed$b;->b(J)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Ll3/d;J)Z

    return-void
.end method
