.class final Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;
.super Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;
.source "ObservableSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SampleMainEmitLast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a0bdab9530de829L


# instance fields
.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile f:Z


# direct methods
.method constructor <init>(Lio/reactivex/g0;Lio/reactivex/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;",
            "Lio/reactivex/e0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;-><init>(Lio/reactivex/g0;Lio/reactivex/e0;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->f:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;->d()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->f:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;->d()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->f:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;->d()V

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method
