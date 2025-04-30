.class final Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;
.super Ljava/util/ArrayDeque;
.source "ObservableTakeLast.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeLast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayDeque<",
        "TT;>;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6479cc5265c56d72L


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Lio/reactivex/disposables/b;

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/reactivex/g0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->a:Lio/reactivex/g0;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->b:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->a:Lio/reactivex/g0;

    .line 2
    :goto_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

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
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->b:I

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->c:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->c:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
