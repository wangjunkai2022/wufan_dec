.class final Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableMergeWithMaybe.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeWithObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;
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
.field static final j:I = 0x1

.field static final k:I = 0x2

.field private static final serialVersionUID:J = -0x3fbd8a98db8e76f7L


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field volatile e:Lx2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile g:Z

.field volatile h:Z

.field volatile i:I


# direct methods
.method constructor <init>(Lio/reactivex/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->a:Lio/reactivex/g0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->c:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;

    .line 5
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->a:Lio/reactivex/g0;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 2
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->f:Ljava/lang/Object;

    .line 4
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->e:Lx2/n;

    return-void

    .line 5
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->f:Ljava/lang/Object;

    .line 7
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->e:Lx2/n;

    .line 8
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 9
    :cond_2
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->i:I

    const/4 v5, 0x2

    if-ne v3, v1, :cond_3

    .line 10
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->f:Ljava/lang/Object;

    .line 11
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->f:Ljava/lang/Object;

    .line 12
    iput v5, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->i:I

    .line 13
    invoke-interface {v0, v3}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 14
    :cond_3
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->h:Z

    .line 15
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->e:Lx2/n;

    if-eqz v7, :cond_4

    .line 16
    invoke-interface {v7}, Lx2/n;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    if-nez v7, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    if-ne v3, v5, :cond_6

    .line 17
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->e:Lx2/n;

    .line 18
    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void

    :cond_6
    if-eqz v8, :cond_7

    neg-int v2, v2

    .line 19
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 20
    :cond_7
    invoke-interface {v0, v7}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method c()Lx2/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx2/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->e:Lx2/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-static {}, Lio/reactivex/z;->S()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    .line 3
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->e:Lx2/n;

    :cond_0
    return-object v0
.end method

.method d()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->i:I

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->a()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->g:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->c:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->e:Lx2/n;

    .line 6
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->f:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method f(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->i:I

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->f:Ljava/lang/Object;

    .line 5
    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->i:I

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->h:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->a:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->c()Lx2/n;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method
