.class public final Lio/reactivex/disposables/c;
.super Ljava/lang/Object;
.source "Disposables.java"


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

.method public static a()Lio/reactivex/disposables/b;
    .locals 1
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0
.end method

.method public static b()Lio/reactivex/disposables/b;
    .locals 1
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/functions/Functions;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/reactivex/disposables/c;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lw2/a;)Lio/reactivex/disposables/b;
    .locals 1
    .param p0    # Lw2/a;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/ActionDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/ActionDisposable;-><init>(Lw2/a;)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Future;)Lio/reactivex/disposables/b;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lio/reactivex/disposables/c;->e(Ljava/util/concurrent/Future;Z)Lio/reactivex/disposables/b;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Future;Z)Lio/reactivex/disposables/b;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/FutureDisposable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/disposables/FutureDisposable;-><init>(Ljava/util/concurrent/Future;Z)V

    return-object v0
.end method

.method public static f(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/RunnableDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/RunnableDisposable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static g(Ll3/d;)Lio/reactivex/disposables/b;
    .locals 1
    .param p0    # Ll3/d;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-string v0, "subscription is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/disposables/SubscriptionDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/SubscriptionDisposable;-><init>(Ll3/d;)V

    return-object v0
.end method
