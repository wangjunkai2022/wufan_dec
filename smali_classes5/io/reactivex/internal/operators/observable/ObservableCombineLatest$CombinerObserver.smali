.class final Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableCombineLatest.java"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CombinerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Lio/reactivex/g0<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42f1490d3f05c855L


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<",
            "TT;TR;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->a:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->a:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->d(I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->a:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->b:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->e(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->a:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->b:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method
