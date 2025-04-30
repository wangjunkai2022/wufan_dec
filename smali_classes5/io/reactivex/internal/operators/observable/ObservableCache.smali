.class public final Lio/reactivex/internal/operators/observable/ObservableCache;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;,
        Lio/reactivex/internal/operators/observable/ObservableCache$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/internal/operators/observable/ObservableCache$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lio/reactivex/z;Lio/reactivex/internal/operators/observable/ObservableCache$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableCache$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static g8(Lio/reactivex/z;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;->h8(Lio/reactivex/z;I)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static h8(Lio/reactivex/z;I)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;I)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCache$a;-><init>(Lio/reactivex/z;I)V

    .line 3
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCache;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;-><init>(Lio/reactivex/z;Lio/reactivex/internal/operators/observable/ObservableCache$a;)V

    invoke-static {p1}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;-><init>(Lio/reactivex/g0;Lio/reactivex/internal/operators/observable/ObservableCache$a;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$a;->d(Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;)Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableCache$a;->e()V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->a()V

    return-void
.end method

.method f8()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-virtual {v0}, Lio/reactivex/internal/util/h;->c()I

    move-result v0

    return v0
.end method

.method i8()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableCache$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j8()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    iget-boolean v0, v0, Lio/reactivex/internal/operators/observable/ObservableCache$a;->i:Z

    return v0
.end method
