.class final Lio/reactivex/internal/operators/flowable/k1$b;
.super Lio/reactivex/internal/subscribers/h;
.source "FlowableWindowTimed.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/h<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/j<",
        "TT;>;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final K0:Ljava/lang/Object;


# instance fields
.field final C0:J

.field final D0:Ljava/util/concurrent/TimeUnit;

.field final E0:Lio/reactivex/h0;

.field final F0:I

.field G0:Ll3/d;

.field H0:Lio/reactivex/processors/UnicastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/UnicastProcessor<",
            "TT;>;"
        }
    .end annotation
.end field

.field final I0:Lio/reactivex/internal/disposables/SequentialDisposable;

.field volatile J0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/k1$b;->K0:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ll3/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/h;-><init>(Ll3/c;Lx2/n;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/k1$b;->I0:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/k1$b;->C0:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/k1$b;->D0:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/k1$b;->E0:Lio/reactivex/h0;

    .line 6
    iput p6, p0, Lio/reactivex/internal/operators/flowable/k1$b;->F0:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->I0:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method l()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/k1$b;->H0:Lio/reactivex/processors/UnicastProcessor;

    const/4 v3, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/k1$b;->J0:Z

    .line 5
    iget-boolean v5, p0, Lio/reactivex/internal/subscribers/h;->A0:Z

    .line 6
    invoke-interface {v0}, Lx2/n;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    .line 7
    sget-object v5, Lio/reactivex/internal/operators/flowable/k1$b;->K0:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    .line 8
    :cond_1
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/k1$b;->H0:Lio/reactivex/processors/UnicastProcessor;

    .line 9
    invoke-interface {v0}, Lx2/o;->clear()V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->dispose()V

    .line 11
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->B0:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v2, v0}, Lio/reactivex/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    :goto_1
    return-void

    :cond_3
    if-nez v6, :cond_4

    neg-int v3, v3

    .line 14
    invoke-virtual {p0, v3}, Lio/reactivex/internal/subscribers/h;->a(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 15
    :cond_4
    sget-object v5, Lio/reactivex/internal/operators/flowable/k1$b;->K0:Ljava/lang/Object;

    if-ne v6, v5, :cond_7

    .line 16
    invoke-virtual {v2}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    if-nez v4, :cond_6

    .line 17
    iget v2, p0, Lio/reactivex/internal/operators/flowable/k1$b;->F0:I

    invoke-static {v2}, Lio/reactivex/processors/UnicastProcessor;->Q8(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v2

    .line 18
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/k1$b;->H0:Lio/reactivex/processors/UnicastProcessor;

    .line 19
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->d()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_5

    .line 20
    invoke-interface {v1, v2}, Ll3/c;->onNext(Ljava/lang/Object;)V

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    const-wide/16 v4, 0x1

    .line 21
    invoke-virtual {p0, v4, v5}, Lio/reactivex/internal/subscribers/h;->g(J)J

    goto :goto_0

    .line 22
    :cond_5
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/k1$b;->H0:Lio/reactivex/processors/UnicastProcessor;

    .line 23
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    invoke-interface {v0}, Lx2/o;->clear()V

    .line 24
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->G0:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 25
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->dispose()V

    .line 26
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Could not deliver first window due to lack of requests."

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 27
    :cond_6
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/k1$b;->G0:Ll3/d;

    invoke-interface {v4}, Ll3/d;->cancel()V

    goto :goto_0

    .line 28
    :cond_7
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->A0:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->l()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    invoke-interface {v0}, Ll3/c;->onComplete()V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/subscribers/h;->B0:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->A0:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->l()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->dispose()V

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->J0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->H0:Lio/reactivex/processors/UnicastProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/h;->a(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->l()V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->G0:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/k1$b;->G0:Ll3/d;

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->F0:I

    invoke-static {v0}, Lio/reactivex/processors/UnicastProcessor;->Q8(I)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->H0:Lio/reactivex/processors/UnicastProcessor;

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    .line 5
    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 7
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/k1$b;->H0:Lio/reactivex/processors/UnicastProcessor;

    invoke-interface {v0, v3}, Ll3/c;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscribers/h;->g(J)J

    .line 9
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->I0:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/k1$b;->E0:Lio/reactivex/h0;

    iget-wide v9, p0, Lio/reactivex/internal/operators/flowable/k1$b;->C0:J

    iget-object v11, p0, Lio/reactivex/internal/operators/flowable/k1$b;->D0:Ljava/util/concurrent/TimeUnit;

    move-object v6, p0

    move-wide v7, v9

    invoke-virtual/range {v5 .. v11}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p1, v3, v4}, Ll3/d;->request(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    .line 13
    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 14
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not deliver first window due to lack of requests."

    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/subscribers/h;->k(J)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/k1$b;->J0:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->dispose()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    sget-object v1, Lio/reactivex/internal/operators/flowable/k1$b;->K0:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/k1$b;->l()V

    :cond_1
    return-void
.end method
