.class final Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableConcat.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableConcatSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
        "Lio/reactivex/g;",
        ">;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d58c452a57faa4cL


# instance fields
.field final a:Lio/reactivex/d;

.field final b:I

.field final c:I

.field final d:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field f:I

.field g:I

.field h:Lx2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/o<",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field i:Ll3/d;

.field volatile j:Z

.field volatile k:Z


# direct methods
.method constructor <init>(Lio/reactivex/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a:Lio/reactivex/d;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->b:I

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;-><init>(Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->d:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 6
    iput p2, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->c:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->k:Z

    if-nez v0, :cond_5

    .line 4
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->j:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->h:Lx2/o;

    invoke-interface {v1}, Lx2/o;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :cond_3
    return-void

    :cond_4
    if-nez v4, :cond_5

    .line 8
    iput-boolean v3, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->k:Z

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->d:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;

    invoke-interface {v1, v0}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->c(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->k:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->i:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d(Lio/reactivex/g;)V
    .locals 1

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->h:Lx2/o;

    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->i:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->d:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method e()V
    .locals 4

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->g:I

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->c:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->g:I

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->i:Ll3/d;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ll3/d;->request(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->g:I

    :cond_1
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->d:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->d:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/reactivex/g;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->d(Lio/reactivex/g;)V

    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->i:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->i:Ll3/d;

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v2, v0

    .line 4
    :goto_0
    instance-of v0, p1, Lx2/l;

    if-eqz v0, :cond_2

    .line 5
    move-object v0, p1

    check-cast v0, Lx2/l;

    const/4 v4, 0x3

    .line 6
    invoke-interface {v0, v4}, Lx2/k;->requestFusion(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 7
    iput v4, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->f:I

    .line 8
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->h:Lx2/o;

    .line 9
    iput-boolean v5, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->j:Z

    .line 10
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a()V

    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 12
    iput v4, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->f:I

    .line 13
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->h:Lx2/o;

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 15
    invoke-interface {p1, v2, v3}, Ll3/d;->request(J)V

    return-void

    .line 16
    :cond_2
    iget v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->b:I

    if-ne v0, v1, :cond_3

    .line 17
    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-static {}, Lio/reactivex/j;->V()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->h:Lx2/o;

    goto :goto_1

    .line 18
    :cond_3
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->h:Lx2/o;

    .line 19
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 20
    invoke-interface {p1, v2, v3}, Ll3/d;->request(J)V

    :cond_4
    return-void
.end method
