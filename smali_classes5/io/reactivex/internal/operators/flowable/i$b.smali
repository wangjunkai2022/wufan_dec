.class final Lio/reactivex/internal/operators/flowable/i$b;
.super Lio/reactivex/internal/subscribers/h;
.source "FlowableBufferBoundarySupplier.java"

# interfaces
.implements Lio/reactivex/o;
.implements Ll3/d;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/h<",
        "TT;TU;TU;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Ll3/d;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final C0:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final D0:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field E0:Ll3/d;

.field final F0:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field G0:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ll3/c;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ll3/b<",
            "TB;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/h;-><init>(Ll3/c;Lx2/n;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/i$b;->F0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/i$b;->C0:Ljava/util/concurrent/Callable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/i$b;->D0:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->E0:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/i$b;->m()V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    invoke-interface {v0}, Lx2/o;->clear()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->E0:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/i$b;->m()V

    return-void
.end method

.method public bridge synthetic f(Ll3/c;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/i$b;->l(Ll3/c;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->F0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Ll3/c;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TU;>;TU;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    invoke-interface {p1, p2}, Ll3/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->F0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method n()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->C0:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/i$b;->D0:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The boundary publisher supplied is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/flowable/i$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/flowable/i$a;-><init>(Lio/reactivex/internal/operators/flowable/i$b;)V

    .line 4
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/i$b;->F0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v2}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_2
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/i$b;->G0:Ljava/util/Collection;

    if-nez v3, :cond_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->G0:Ljava/util/Collection;

    .line 9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    invoke-interface {v1, v2}, Ll3/b;->c(Ll3/c;)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v3, v0, p0}, Lio/reactivex/internal/subscribers/h;->i(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 13
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    .line 15
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/i$b;->E0:Ll3/d;

    invoke-interface {v1}, Ll3/d;->cancel()V

    .line 16
    iget-object v1, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    invoke-interface {v1, v0}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    .line 17
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/i$b;->cancel()V

    .line 19
    iget-object v1, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    invoke-interface {v1, v0}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->G0:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/i$b;->G0:Ljava/util/Collection;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    invoke-interface {v1, v0}, Lx2/o;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->A0:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    iget-object v1, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/n;->e(Lx2/n;Ll3/c;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/m;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/i$b;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

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
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->G0:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i$b;->E0:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/i$b;->E0:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/i$b;->C0:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The buffer supplied is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/i$b;->G0:Ljava/util/Collection;

    .line 6
    :try_start_1
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/i$b;->D0:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The boundary publisher supplied is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    new-instance v1, Lio/reactivex/internal/operators/flowable/i$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/flowable/i$a;-><init>(Lio/reactivex/internal/operators/flowable/i$b;)V

    .line 8
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/i$b;->F0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    invoke-interface {v0, p0}, Ll3/c;->onSubscribe(Ll3/d;)V

    .line 10
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    if-nez v0, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    .line 11
    invoke-interface {p1, v3, v4}, Ll3/d;->request(J)V

    .line 12
    invoke-interface {v2, v1}, Ll3/b;->c(Ll3/c;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 13
    invoke-static {v2}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 14
    iput-boolean v1, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    .line 15
    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 16
    invoke-static {v2, v0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ll3/c;)V

    return-void

    :catchall_1
    move-exception v2

    .line 17
    invoke-static {v2}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 18
    iput-boolean v1, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    .line 19
    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 20
    invoke-static {v2, v0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ll3/c;)V

    return-void
.end method

.method public request(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/subscribers/h;->k(J)V

    return-void
.end method
