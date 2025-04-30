.class final Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMapCompletable.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapCompletableObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321c7f6dd838d46aL


# instance fields
.field final a:Lio/reactivex/d;

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field final e:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

.field final f:I

.field g:Lx2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/disposables/b;

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z


# direct methods
.method constructor <init>(Lio/reactivex/d;Lw2/o;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/d;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->b:Lw2/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->f:I

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;-><init>(Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->e:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 4
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    invoke-interface {v0}, Lx2/o;->clear()V

    return-void

    .line 6
    :cond_2
    iget-boolean v2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->i:Z

    if-nez v2, :cond_7

    .line 7
    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    .line 10
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    invoke-interface {v1}, Lx2/o;->clear()V

    .line 11
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_3
    iget-boolean v2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->j:Z

    const/4 v4, 0x0

    .line 14
    :try_start_0
    iget-object v5, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    invoke-interface {v5}, Lx2/o;->poll()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 15
    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->b:Lw2/o;

    invoke-interface {v4, v5}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null CompletableSource"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    .line 16
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    .line 17
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :goto_1
    return-void

    :cond_6
    if-nez v5, :cond_7

    .line 20
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->i:Z

    .line 21
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->e:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    invoke-interface {v4, v2}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 22
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 23
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    .line 24
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    invoke-interface {v2}, Lx2/o;->clear()V

    .line 25
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {v2}, Lio/reactivex/disposables/b;->dispose()V

    .line 26
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    .line 27
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 29
    :cond_7
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->i:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    invoke-interface {p1}, Lx2/o;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->i:Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->e:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->a()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    invoke-interface {v0}, Lx2/o;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->e:Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->a()V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    invoke-interface {p1}, Lx2/o;->clear()V

    goto :goto_0

    .line 10
    :cond_1
    iput-boolean v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->j:Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
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

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->h:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->h:Lio/reactivex/disposables/b;

    .line 3
    instance-of v0, p1, Lx2/j;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lx2/j;

    const/4 v0, 0x3

    .line 5
    invoke-interface {p1, v0}, Lx2/k;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    .line 7
    iput-boolean v1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->j:Z

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    .line 11
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Lio/reactivex/internal/queue/a;

    iget v0, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->f:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/o;

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {p1, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_2
    return-void
.end method
