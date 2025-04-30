.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableTimeoutTimed.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutFallbackObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x343e2a2afd6bc01eL


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0$c;

.field final e:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0$c;Lio/reactivex/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0$c;",
            "Lio/reactivex/e0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->a:Lio/reactivex/g0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->d:Lio/reactivex/h0$c;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->h:Lio/reactivex/e0;

    .line 7
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->e:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->h:Lio/reactivex/e0;

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->h:Lio/reactivex/e0;

    .line 5
    new-instance p2, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$a;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->a:Lio/reactivex/g0;

    invoke-direct {p2, v0, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$a;-><init>(Lio/reactivex/g0;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, p2}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->d:Lio/reactivex/h0$c;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method c(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->e:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->d:Lio/reactivex/h0$c;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$c;

    invoke-direct {v2, p1, p2, p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$c;-><init>(JLio/reactivex/internal/operators/observable/ObservableTimeoutTimed$b;)V

    iget-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, Lio/reactivex/h0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->d:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->e:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->d:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->e:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->d:Lio/reactivex/h0$c;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-virtual {v2, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->e:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->c(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method
