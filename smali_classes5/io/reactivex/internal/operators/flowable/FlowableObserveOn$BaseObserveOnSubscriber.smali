.class abstract Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "FlowableObserveOn.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x725dec0716520049L


# instance fields
.field final a:Lio/reactivex/h0$c;

.field final b:Z

.field final c:I

.field final d:I

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field f:Ll3/d;

.field g:Lx2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile h:Z

.field volatile i:Z

.field j:Ljava/lang/Throwable;

.field k:I

.field l:J

.field m:Z


# direct methods
.method constructor <init>(Lio/reactivex/h0$c;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->a:Lio/reactivex/h0$c;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->b:Z

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->c:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 6
    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->d:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->f:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->a:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->g:Lx2/o;

    invoke-interface {v0}, Lx2/o;->clear()V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->g:Lx2/o;

    invoke-interface {v0}, Lx2/o;->clear()V

    return-void
.end method

.method final d(ZZLl3/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ll3/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->b:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h:Z

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->j:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Ll3/c;->onComplete()V

    .line 8
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->a:Lio/reactivex/h0$c;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    return v1

    .line 9
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->j:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 10
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h:Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->clear()V

    .line 12
    invoke-interface {p3, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->a:Lio/reactivex/h0$c;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h:Z

    .line 15
    invoke-interface {p3}, Ll3/c;->onComplete()V

    .line 16
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->a:Lio/reactivex/h0$c;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method abstract g()V
.end method

.method final h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->a:Lio/reactivex/h0$c;

    invoke-virtual {v0, p0}, Lio/reactivex/h0$c;->b(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->g:Lx2/o;

    invoke-interface {v0}, Lx2/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->i:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->i:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->g:Lx2/o;

    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->f:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 6
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->i:Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h()V

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->h()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->m:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->f()V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->g()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->e()V

    :goto_0
    return-void
.end method
