.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;
.super Ljava/lang/Object;
.source "MaybeFlatMapBiSelector.java"

# interfaces
.implements Lio/reactivex/t;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapBiMainObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/t<",
        "TT;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final a:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/t;Lw2/o;Lw2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TU;>;>;",
            "Lw2/c<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    invoke-direct {v0, p1, p3}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;-><init>(Lio/reactivex/t;Lw2/c;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->a:Lw2/o;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    iget-object p1, p1, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->a:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null MaybeSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    iput-object p1, v1, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->c:Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver;->b:Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;

    iget-object v0, v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
