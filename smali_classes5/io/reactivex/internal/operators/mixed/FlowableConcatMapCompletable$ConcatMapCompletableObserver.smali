.class final Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableConcatMapCompletable.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapCompletableObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/o<",
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

.field final e:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

.field final f:I

.field final g:Lx2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Ll3/d;

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z

.field l:I


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
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->b:Lw2/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->f:I

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;-><init>(Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->e:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    .line 8
    new-instance p1, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {p1, p4}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

    invoke-interface {v0}, Lx2/o;->clear()V

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->i:Z

    if-nez v0, :cond_7

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

    invoke-interface {v0}, Lx2/o;->clear()V

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->j:Z

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

    invoke-interface {v1}, Lx2/n;->poll()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v0}, Lio/reactivex/d;->onComplete()V

    :goto_1
    return-void

    :cond_5
    if-nez v4, :cond_7

    .line 15
    iget v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->f:I

    shr-int/lit8 v4, v0, 0x1

    sub-int/2addr v0, v4

    .line 16
    iget v4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->l:I

    add-int/2addr v4, v3

    if-ne v4, v0, :cond_6

    .line 17
    iput v2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->l:I

    .line 18
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->h:Ll3/d;

    int-to-long v4, v0

    invoke-interface {v2, v4, v5}, Ll3/d;->request(J)V

    goto :goto_2

    .line 19
    :cond_6
    iput v4, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->l:I

    .line 20
    :goto_2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->b:Lw2/o;

    invoke-interface {v0, v1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null CompletableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->i:Z

    .line 22
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->e:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    invoke-interface {v0, v1}, Lio/reactivex/g;->a(Lio/reactivex/d;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 24
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

    invoke-interface {v1}, Lx2/o;->clear()V

    .line 25
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->h:Ll3/d;

    invoke-interface {v1}, Ll3/d;->cancel()V

    .line 26
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    .line 27
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v1, v0}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 29
    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->i:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->h:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

    invoke-interface {p1}, Lx2/o;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->i:Z

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    goto :goto_0

    .line 11
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
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->h:Ll3/d;

    invoke-interface {v0}, Ll3/d;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->e:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->a()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

    invoke-interface {v0}, Lx2/o;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->k:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->j:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->e:Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver;->a()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v0, p1}, Lio/reactivex/d;->onError(Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

    invoke-interface {p1}, Lx2/o;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->j:Z

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    goto :goto_0

    .line 11
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

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->g:Lx2/n;

    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->h:Ll3/d;

    invoke-interface {p1}, Ll3/d;->cancel()V

    .line 4
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Ll3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->h:Ll3/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Ll3/d;Ll3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->h:Ll3/d;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->a:Lio/reactivex/d;

    invoke-interface {v0, p0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 4
    iget v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ll3/d;->request(J)V

    :cond_0
    return-void
.end method
