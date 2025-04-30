.class final Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ParallelJoin.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ll3/d;",
        ">;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x74b67204a49678c3L


# instance fields
.field final a:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I

.field d:J

.field volatile e:Lx2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->a:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->b:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method b()Lx2/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx2/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->e:Lx2/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 3
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->e:Lx2/n;

    :cond_0
    return-object v0
.end method

.method public c(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->d:J

    add-long/2addr v0, p1

    .line 2
    iget p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->c:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->d:J

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/d;

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    goto :goto_0

    .line 5
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->d:J

    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    iget v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->d:J

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/d;

    invoke-interface {v2, v0, v1}, Ll3/d;->request(J)V

    goto :goto_0

    .line 5
    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->d:J

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->a:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->a:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->e(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->a:Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->f(Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;->b:I

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Ll3/d;J)Z

    return-void
.end method
