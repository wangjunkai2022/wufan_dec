.class final Lio/reactivex/internal/operators/mixed/a;
.super Ljava/lang/Object;
.source "ScalarXMapZHelper.java"


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

.method static a(Ljava/lang/Object;Lw2/o;Lio/reactivex/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/d;",
            ")Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Ljava/util/concurrent/Callable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null CompletableSource"

    invoke-static {p0, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/d;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p2}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/d;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/Object;Lw2/o;Lio/reactivex/g0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/w<",
            "+TR;>;>;",
            "Lio/reactivex/g0<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Ljava/util/concurrent/Callable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null MaybeSource"

    invoke-static {p0, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lio/reactivex/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/g0;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Lio/reactivex/internal/operators/maybe/MaybeToObservable;->f8(Lio/reactivex/g0;)Lio/reactivex/t;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/g0;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static c(Ljava/lang/Object;Lw2/o;Lio/reactivex/g0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;",
            "Lio/reactivex/g0<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Ljava/util/concurrent/Callable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The mapper returned a null SingleSource"

    invoke-static {p0, p1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lio/reactivex/o0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/g0;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Lio/reactivex/internal/operators/single/SingleToObservable;->f8(Lio/reactivex/g0;)Lio/reactivex/l0;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0, p2}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/g0;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
