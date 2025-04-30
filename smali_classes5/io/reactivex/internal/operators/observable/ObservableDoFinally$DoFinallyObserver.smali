.class final Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "ObservableDoFinally.java"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDoFinally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoFinallyObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TT;>;",
        "Lio/reactivex/g0<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3907ba0b13897e3dL


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lw2/a;

.field c:Lio/reactivex/disposables/b;

.field d:Lx2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/g0;Lw2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/g0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->b:Lw2/a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->b:Lw2/a;

    invoke-interface {v0}, Lw2/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lx2/j;

    invoke-interface {v0}, Lx2/o;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lx2/j;

    invoke-interface {v0}, Lx2/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a()V

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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->c:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->c:Lio/reactivex/disposables/b;

    .line 3
    instance-of v0, p1, Lx2/j;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lx2/j;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lx2/j;

    .line 5
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_1
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lx2/j;

    invoke-interface {v0}, Lx2/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->e:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->a()V

    :cond_0
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->d:Lx2/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    .line 2
    invoke-interface {v0, p1}, Lx2/k;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDoFinally$DoFinallyObserver;->e:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method
