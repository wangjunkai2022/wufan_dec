.class final Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMapSingle.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapSingleMainObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field static final l:I = 0x0

.field static final m:I = 0x1

.field static final n:I = 0x2

.field private static final serialVersionUID:J = -0x7ed83da4674d8da5L


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/AtomicThrowable;

.field final d:Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver<",
            "TR;>;"
        }
    .end annotation
.end field

.field final e:Lx2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/internal/util/ErrorMode;

.field g:Lio/reactivex/disposables/b;

.field volatile h:Z

.field volatile i:Z

.field j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field volatile k:I


# direct methods
.method constructor <init>(Lio/reactivex/g0;Lw2/o;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->a:Lio/reactivex/g0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->b:Lw2/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->f:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->c:Lio/reactivex/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;-><init>(Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->d:Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;

    .line 7
    new-instance p1, Lio/reactivex/internal/queue/a;

    invoke-direct {p1, p3}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->e:Lx2/n;

    return-void
.end method


# virtual methods
.method a()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->a:Lio/reactivex/g0;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->f:Lio/reactivex/internal/util/ErrorMode;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->e:Lx2/n;

    .line 5
    iget-object v3, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->c:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->i:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 7
    invoke-interface {v2}, Lx2/o;->clear()V

    .line 8
    iput-object v7, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->j:Ljava/lang/Object;

    goto/16 :goto_2

    .line 9
    :cond_2
    iget v6, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->k:I

    .line 10
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 11
    sget-object v8, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-eq v1, v8, :cond_3

    sget-object v8, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    if-ne v1, v8, :cond_4

    if-nez v6, :cond_4

    .line 12
    :cond_3
    invoke-interface {v2}, Lx2/o;->clear()V

    .line 13
    iput-object v7, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->j:Ljava/lang/Object;

    .line 14
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const/4 v8, 0x0

    if-nez v6, :cond_9

    .line 16
    iget-boolean v6, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->h:Z

    .line 17
    invoke-interface {v2}, Lx2/n;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    .line 18
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 19
    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    goto :goto_1

    .line 20
    :cond_6
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_7
    if-eqz v8, :cond_8

    goto :goto_2

    .line 21
    :cond_8
    :try_start_0
    iget-object v6, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->b:Lw2/o;

    invoke-interface {v6, v7}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The mapper returned a null SingleSource"

    invoke-static {v6, v7}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/o0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iput v4, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->k:I

    .line 23
    iget-object v7, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->d:Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;

    invoke-interface {v6, v7}, Lio/reactivex/o0;->a(Lio/reactivex/l0;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 24
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 25
    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->g:Lio/reactivex/disposables/b;

    invoke-interface {v4}, Lio/reactivex/disposables/b;->dispose()V

    .line 26
    invoke-interface {v2}, Lx2/o;->clear()V

    .line 27
    invoke-virtual {v3, v1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    .line 28
    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    const/4 v9, 0x2

    if-ne v6, v9, :cond_a

    .line 30
    iget-object v6, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->j:Ljava/lang/Object;

    .line 31
    iput-object v7, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->j:Ljava/lang/Object;

    .line 32
    invoke-interface {v0, v6}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 33
    iput v8, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->k:I

    goto/16 :goto_0

    :cond_a
    :goto_2
    neg-int v5, v5

    .line 34
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->c:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->f:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->g:Lio/reactivex/disposables/b;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->k:I

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->a()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->j:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->k:I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->i:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->g:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->d:Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;->a()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->e:Lx2/n;

    invoke-interface {v0}, Lx2/o;->clear()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->j:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->h:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->c:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->f:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->d:Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->h:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->a()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->e:Lx2/n;

    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->a()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->g:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->g:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
