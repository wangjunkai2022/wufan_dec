.class public abstract Lio/reactivex/internal/observers/k;
.super Lio/reactivex/internal/observers/m;
.source "QueueDrainObserver.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/internal/util/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/m;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/internal/util/j<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected final F:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected final G:Lx2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/n<",
            "TU;>;"
        }
    .end annotation
.end field

.field protected volatile H:Z

.field protected volatile I:Z

.field protected J:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/reactivex/g0;Lx2/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TV;>;",
            "Lx2/n<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/observers/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/n;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/n;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->I:Z

    return v0
.end method

.method public final cancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->H:Z

    return v0
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/n;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/observers/n;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->J:Ljava/lang/Throwable;

    return-object v0
.end method

.method public f(Lio/reactivex/g0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TV;>;TU;)V"
        }
    .end annotation

    return-void
.end method

.method protected final g(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/observers/n;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/observers/n;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/k;->f(Lio/reactivex/g0;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/k;->a(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_0
    invoke-interface {v1, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/n;->d(Lx2/n;Lio/reactivex/g0;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/j;)V

    return-void
.end method

.method protected final h(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/k;->F:Lio/reactivex/g0;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/k;->G:Lx2/n;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/observers/n;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/observers/n;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Lx2/o;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/k;->f(Lio/reactivex/g0;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 6
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/k;->a(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_0
    invoke-interface {v1, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->b()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/n;->d(Lx2/n;Lio/reactivex/g0;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/j;)V

    return-void
.end method
