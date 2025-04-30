.class final Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber;
.super Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;
.source "FlowableConcatWithSingle.java"

# interfaces
.implements Lio/reactivex/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle;
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
        "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<",
        "TT;TT;>;",
        "Lio/reactivex/l0<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x65f39aa804f9be51L


# instance fields
.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ll3/c;Lio/reactivex/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;",
            "Lio/reactivex/o0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;-><init>(Ll3/c;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber;->h:Lio/reactivex/o0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->b:Ll3/d;

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber;->h:Lio/reactivex/o0;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber;->h:Lio/reactivex/o0;

    .line 4
    invoke-interface {v0, p0}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

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
    iget-wide v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->d:J

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->a:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatWithSingle$ConcatWithSubscriber;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;->a(Ljava/lang/Object;)V

    return-void
.end method
