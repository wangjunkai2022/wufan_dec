.class final Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableWindowBoundarySupplier.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowBoundaryMainObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final l:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final m:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1efd47eb1fc2a3a0L


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a<",
            "TT;TB;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Lio/reactivex/internal/queue/MpscLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/MpscLinkedQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/internal/util/AtomicThrowable;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/e0<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field i:Lio/reactivex/disposables/b;

.field volatile j:Z

.field k:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;)V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->l:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->m:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/g0;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;I",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/e0<",
            "TB;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->a:Lio/reactivex/g0;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b:I

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p1, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {p1}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->e:Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 7
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->h:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->l:Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->a:Lio/reactivex/g0;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->e:Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 6
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 7
    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->k:Lio/reactivex/subjects/UnicastSubject;

    return-void

    .line 8
    :cond_2
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->k:Lio/reactivex/subjects/UnicastSubject;

    .line 9
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->j:Z

    if-eqz v7, :cond_4

    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 11
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->clear()V

    .line 12
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v5, :cond_3

    .line 13
    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->k:Lio/reactivex/subjects/UnicastSubject;

    .line 14
    invoke-virtual {v5, v1}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    .line 15
    :cond_3
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 16
    :cond_4
    invoke-virtual {v1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    .line 17
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v5, :cond_6

    .line 18
    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->k:Lio/reactivex/subjects/UnicastSubject;

    .line 19
    invoke-virtual {v5}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 20
    :cond_6
    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    .line 21
    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->k:Lio/reactivex/subjects/UnicastSubject;

    .line 22
    invoke-virtual {v5, v1}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    .line 23
    :cond_8
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v9, :cond_a

    neg-int v4, v4

    .line 24
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 25
    :cond_a
    sget-object v7, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->m:Ljava/lang/Object;

    if-eq v8, v7, :cond_b

    .line 26
    invoke-virtual {v5, v8}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v5, :cond_c

    .line 27
    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->k:Lio/reactivex/subjects/UnicastSubject;

    .line 28
    invoke-virtual {v5}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 29
    :cond_c
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 30
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b:I

    invoke-static {v5, p0}, Lio/reactivex/subjects/UnicastSubject;->m8(ILjava/lang/Runnable;)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v5

    .line 31
    iput-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->k:Lio/reactivex/subjects/UnicastSubject;

    .line 32
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 33
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->h:Ljava/util/concurrent/Callable;

    invoke-interface {v7}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The other Callable returned a null ObservableSource"

    invoke-static {v7, v8}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    new-instance v8, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a;

    invoke-direct {v8, p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;)V

    .line 35
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v6, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    invoke-interface {v7, v8}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 37
    invoke-interface {v0, v5}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    .line 38
    invoke-static {v5}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 39
    invoke-virtual {v2, v5}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    .line 40
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->j:Z

    goto/16 :goto_0
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->i:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->j:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b()V

    return-void
.end method

.method d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->i:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->j:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->a()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->i:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method e(Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$a<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->e:Lio/reactivex/internal/queue/MpscLinkedQueue;

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->m:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->a()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->j:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->a()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->j:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b()V

    goto :goto_0

    .line 5
    :cond_0
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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->e:Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->i:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->i:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->e:Lio/reactivex/internal/queue/MpscLinkedQueue;

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->m:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->b()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->i:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method
