.class final Lio/reactivex/internal/operators/observable/w1$c;
.super Lio/reactivex/internal/observers/k;
.source "ObservableWindowBoundarySelector.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/k<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/z<",
        "TT;>;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final K:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TB;>;"
        }
    .end annotation
.end field

.field final n0:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TB;+",
            "Lio/reactivex/e0<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final o0:I

.field final p0:Lio/reactivex/disposables/a;

.field q0:Lio/reactivex/disposables/b;

.field final r0:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field final s0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final t0:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lio/reactivex/g0;Lio/reactivex/e0;Lw2/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;",
            "Lio/reactivex/e0<",
            "TB;>;",
            "Lw2/o<",
            "-TB;+",
            "Lio/reactivex/e0<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/g0;Lx2/n;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w1$c;->r0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w1$c;->t0:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/w1$c;->K:Lio/reactivex/e0;

    .line 5
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/w1$c;->n0:Lw2/o;

    .line 6
    iput p4, p0, Lio/reactivex/internal/operators/observable/w1$c;->o0:I

    .line 7
    new-instance p2, Lio/reactivex/disposables/a;

    invoke-direct {p2}, Lio/reactivex/disposables/a;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/w1$c;->p0:Lio/reactivex/disposables/a;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/w1$c;->s0:Ljava/util/List;

    const-wide/16 p2, 0x1

    .line 9
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/k;->H:Z

    return-void
.end method

.method public f(Lio/reactivex/g0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method i(Lio/reactivex/internal/operators/observable/w1$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/w1$a<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->p0:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->delete(Lio/reactivex/disposables/b;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    new-instance v1, Lio/reactivex/internal/operators/observable/w1$d;

    iget-object p1, p1, Lio/reactivex/internal/operators/observable/w1$a;->c:Lio/reactivex/subjects/UnicastSubject;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/w1$d;-><init>(Lio/reactivex/subjects/UnicastSubject;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/w1$c;->k()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->H:Z

    return v0
.end method

.method j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->p0:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->r0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method k()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    check-cast v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/w1$c;->s0:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/observers/k;->I:Z

    .line 5
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/w1$c;->j()V

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->J:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/UnicastSubject;

    .line 9
    invoke-virtual {v3, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    .line 11
    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_3

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_4
    if-eqz v7, :cond_5

    neg-int v4, v4

    .line 13
    invoke-virtual {p0, v4}, Lio/reactivex/internal/observers/k;->a(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 14
    :cond_5
    instance-of v5, v6, Lio/reactivex/internal/operators/observable/w1$d;

    if-eqz v5, :cond_8

    .line 15
    check-cast v6, Lio/reactivex/internal/operators/observable/w1$d;

    .line 16
    iget-object v5, v6, Lio/reactivex/internal/operators/observable/w1$d;->a:Lio/reactivex/subjects/UnicastSubject;

    if-eqz v5, :cond_6

    .line 17
    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    iget-object v5, v6, Lio/reactivex/internal/operators/observable/w1$d;->a:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v5}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 19
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/w1$c;->t0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 20
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/w1$c;->j()V

    return-void

    .line 21
    :cond_6
    iget-boolean v5, p0, Lio/reactivex/internal/observers/k;->H:Z

    if-eqz v5, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    iget v5, p0, Lio/reactivex/internal/operators/observable/w1$c;->o0:I

    invoke-static {v5}, Lio/reactivex/subjects/UnicastSubject;->l8(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v5

    .line 23
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v1, v5}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 25
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/w1$c;->n0:Lw2/o;

    iget-object v6, v6, Lio/reactivex/internal/operators/observable/w1$d;->b:Ljava/lang/Object;

    invoke-interface {v7, v6}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The ObservableSource supplied is null"

    invoke-static {v6, v7}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    new-instance v7, Lio/reactivex/internal/operators/observable/w1$a;

    invoke-direct {v7, p0, v5}, Lio/reactivex/internal/operators/observable/w1$a;-><init>(Lio/reactivex/internal/operators/observable/w1$c;Lio/reactivex/subjects/UnicastSubject;)V

    .line 27
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/w1$c;->p0:Lio/reactivex/disposables/a;

    invoke-virtual {v5, v7}, Lio/reactivex/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/w1$c;->t0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 29
    invoke-interface {v6, v7}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    .line 30
    invoke-static {v5}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 31
    iput-boolean v3, p0, Lio/reactivex/internal/observers/k;->H:Z

    .line 32
    invoke-interface {v1, v5}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 33
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/subjects/UnicastSubject;

    .line 34
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method l(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->q0:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->p0:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    .line 3
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/w1$c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method m(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    new-instance v1, Lio/reactivex/internal/operators/observable/w1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lio/reactivex/internal/operators/observable/w1$d;-><init>(Lio/reactivex/subjects/UnicastSubject;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/w1$c;->k()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/k;->I:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/w1$c;->k()V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->t0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->p0:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->I:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/observers/k;->J:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/observers/k;->I:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/w1$c;->k()V

    .line 7
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->t0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->p0:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    .line 9
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    invoke-interface {v0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->s0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    .line 3
    invoke-virtual {v1, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/k;->a(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/w1$c;->k()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->q0:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w1$c;->q0:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    .line 4
    iget-boolean p1, p0, Lio/reactivex/internal/observers/k;->H:Z

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Lio/reactivex/internal/operators/observable/w1$b;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/w1$b;-><init>(Lio/reactivex/internal/operators/observable/w1$c;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->r0:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->t0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$c;->K:Lio/reactivex/e0;

    invoke-interface {v0, p1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    :cond_1
    return-void
.end method
