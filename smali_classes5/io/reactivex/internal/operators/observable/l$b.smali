.class final Lio/reactivex/internal/operators/observable/l$b;
.super Lio/reactivex/internal/observers/k;
.source "ObservableBufferExactBoundary.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/l;
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
        "Lio/reactivex/internal/observers/k<",
        "TT;TU;TU;>;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final K:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final n0:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TB;>;"
        }
    .end annotation
.end field

.field o0:Lio/reactivex/disposables/b;

.field p0:Lio/reactivex/disposables/b;

.field q0:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/g0;Ljava/util/concurrent/Callable;Lio/reactivex/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lio/reactivex/e0<",
            "TB;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/g0;Lx2/n;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/l$b;->K:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/l$b;->n0:Lio/reactivex/e0;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/k;->H:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->p0:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->o0:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    invoke-interface {v0}, Lx2/o;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic f(Lio/reactivex/g0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/l$b;->i(Lio/reactivex/g0;Ljava/util/Collection;)V

    return-void
.end method

.method public i(Lio/reactivex/g0;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    invoke-interface {p1, p2}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->H:Z

    return v0
.end method

.method j()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->K:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/l$b;->q0:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->q0:Ljava/util/Collection;

    .line 6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/internal/observers/k;->g(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 9
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/l$b;->dispose()V

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    invoke-interface {v1, v0}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->q0:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/l$b;->q0:Ljava/util/Collection;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    invoke-interface {v1, v0}, Lx2/o;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/internal/observers/k;->I:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    iget-object v1, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/n;->d(Lx2/n;Lio/reactivex/g0;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/j;)V

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
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/l$b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->q0:Ljava/util/Collection;

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

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->o0:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/l$b;->o0:Lio/reactivex/disposables/b;

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->K:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->q0:Ljava/util/Collection;

    .line 5
    new-instance p1, Lio/reactivex/internal/operators/observable/l$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/l$a;-><init>(Lio/reactivex/internal/operators/observable/l$b;)V

    .line 6
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/l$b;->p0:Lio/reactivex/disposables/b;

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    invoke-interface {v0, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 8
    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->H:Z

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l$b;->n0:Lio/reactivex/e0;

    invoke-interface {v0, p1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lio/reactivex/internal/observers/k;->H:Z

    .line 12
    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/g0;)V

    :cond_0
    :goto_0
    return-void
.end method
