.class final Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableConcatWithCompletable.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/d;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatWithSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lio/reactivex/d;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x65f39aa804f9be51L


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Ll3/d;

.field c:Lio/reactivex/g;

.field d:Z


# direct methods
.method constructor <init>(Ll3/c;Lio/reactivex/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;",
            "Lio/reactivex/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->a:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->c:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->b:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 2
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->a:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->d:Z

    .line 4
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->b:Ll3/d;

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->c:Lio/reactivex/g;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->c:Lio/reactivex/g;

    .line 7
    invoke-interface {v0, p0}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->b:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->b:Ll3/d;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->a:Ll3/c;

    invoke-interface {p1, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithCompletable$ConcatWithSubscriber;->b:Ll3/d;

    invoke-interface {v0, p1, p2}, Ll3/d;->request(J)V

    return-void
.end method
