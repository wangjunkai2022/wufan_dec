.class final Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableGroupJoin.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeftRightSubscriber"
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
.field private static final serialVersionUID:J = 0x1a24ec53e2780a15L


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;

.field final b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;->b:Z

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
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;

    invoke-interface {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;->e(Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber;->b:Z

    invoke-interface {v0, v1, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupJoin$a;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Ll3/d;J)Z

    return-void
.end method
