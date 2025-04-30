.class final Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableMergeWithCompletable.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeWithSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3fbd8a98db8e76f7L


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ll3/d;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile f:Z

.field volatile g:Z


# direct methods
.method constructor <init>(Ll3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->a:Ll3/c;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;-><init>(Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->c:Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;

    .line 5
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->g:Z

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->f:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->a:Ll3/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/g;->b(Ll3/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->a:Ll3/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/g;->d(Ll3/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->c:Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->f:Z

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->g:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->a:Ll3/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/g;->b(Ll3/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->a:Ll3/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/g;->d(Ll3/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->a:Ll3/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/g;->f(Ll3/c;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Ll3/d;)Z

    return-void
.end method

.method public request(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
