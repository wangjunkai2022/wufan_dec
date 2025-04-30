.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MaybeFlatMapNotification.java"

# interfaces
.implements Lio/reactivex/t;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$a;
    }
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
        "Lio/reactivex/t<",
        "TT;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3cb9c044fe24c252L


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/w<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field e:Lio/reactivex/disposables/b;


# direct methods
.method constructor <init>(Lio/reactivex/t;Lw2/o;Lw2/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/w<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/w<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->a:Lio/reactivex/t;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->b:Lw2/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->c:Lw2/o;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->e:Lio/reactivex/disposables/b;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onCompleteSupplier returned a null MaybeSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$a;-><init>(Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->c:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onErrorMapper returned a null MaybeSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$a;-><init>(Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;)V

    invoke-interface {v0, p1}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->a:Lio/reactivex/t;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->e:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->e:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->a:Lio/reactivex/t;

    invoke-interface {p1, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->b:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The onSuccessMapper returned a null MaybeSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$a;-><init>(Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;)V

    invoke-interface {p1, v0}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
