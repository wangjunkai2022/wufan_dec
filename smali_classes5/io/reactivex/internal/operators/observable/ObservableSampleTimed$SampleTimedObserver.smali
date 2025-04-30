.class abstract Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableSampleTimed.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSampleTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SampleTimedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30d108f96c89b153L


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

.field final d:Lio/reactivex/h0;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/disposables/b;


# direct methods
.method constructor <init>(Lio/reactivex/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->a:Lio/reactivex/g0;

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->b:J

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->c:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->d:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method abstract b()V
.end method

.method c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->a:Lio/reactivex/g0;

    invoke-interface {v1, v0}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->a()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->f:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->f:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->d:Lio/reactivex/h0;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->c:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    :cond_0
    return-void
.end method
