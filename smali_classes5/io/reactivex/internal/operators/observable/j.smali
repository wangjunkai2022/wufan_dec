.class public final Lio/reactivex/internal/operators/observable/j;
.super Ljava/lang/Object;
.source "ObservableBlockingSubscribe.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lio/reactivex/e0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/util/d;

    invoke-direct {v0}, Lio/reactivex/internal/util/d;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lw2/g;Lw2/g;Lw2/a;Lw2/g;)V

    .line 4
    invoke-interface {p0, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 5
    invoke-static {v0, v1}, Lio/reactivex/internal/util/c;->a(Ljava/util/concurrent/CountDownLatch;Lio/reactivex/disposables/b;)V

    .line 6
    iget-object p0, v0, Lio/reactivex/internal/util/d;->a:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Lio/reactivex/e0;Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "+TT;>;",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/observers/BlockingObserver;

    invoke-direct {v1, v0}, Lio/reactivex/internal/observers/BlockingObserver;-><init>(Ljava/util/Queue;)V

    .line 3
    invoke-interface {p1, v1}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 4
    invoke-interface {p0, v1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lio/reactivex/internal/observers/BlockingObserver;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {v1}, Lio/reactivex/internal/observers/BlockingObserver;->dispose()V

    .line 9
    invoke-interface {p1, p0}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/internal/observers/BlockingObserver;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lio/reactivex/internal/observers/BlockingObserver;->b:Ljava/lang/Object;

    if-eq p0, v3, :cond_3

    .line 11
    invoke-static {v2, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/g0;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Lio/reactivex/e0;Lw2/g;Lw2/g;Lw2/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "+TT;>;",
            "Lw2/g<",
            "-TT;>;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lw2/g;Lw2/g;Lw2/a;Lw2/g;)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/j;->b(Lio/reactivex/e0;Lio/reactivex/g0;)V

    return-void
.end method
