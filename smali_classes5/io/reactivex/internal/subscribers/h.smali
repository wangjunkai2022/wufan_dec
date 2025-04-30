.class public abstract Lio/reactivex/internal/subscribers/h;
.super Lio/reactivex/internal/subscribers/l;
.source "QueueDrainSubscriber.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/internal/util/m;


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
        "Lio/reactivex/internal/subscribers/l;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lio/reactivex/internal/util/m<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected volatile A0:Z

.field protected B0:Ljava/lang/Throwable;

.field protected final x0:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected final y0:Lx2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/n<",
            "TU;>;"
        }
    .end annotation
.end field

.field protected volatile z0:Z


# direct methods
.method public constructor <init>(Ll3/c;Lx2/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TV;>;",
            "Lx2/n<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscribers/l;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/m;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/m;->p:Ljava/util/concurrent/atomic/AtomicInteger;

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
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->A0:Z

    return v0
.end method

.method public final cancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    return v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->B0:Ljava/lang/Throwable;

    return-object v0
.end method

.method public f(Ll3/c;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TV;>;TU;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final g(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/m;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/subscribers/m;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected final i(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/subscribers/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/subscribers/h;->f(Ll3/c;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    .line 6
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscribers/h;->g(J)J

    :cond_0
    const/4 p1, -0x1

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/h;->a(I)I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_1
    invoke-interface {p3}, Lio/reactivex/disposables/b;->dispose()V

    .line 9
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Could not emit buffer due to lack of requests"

    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    invoke-interface {v1, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 12
    :cond_3
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/n;->e(Lx2/n;Ll3/c;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/m;)V

    return-void
.end method

.method protected final j(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->x0:Ll3/c;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/subscribers/h;->y0:Lx2/n;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/subscribers/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 5
    invoke-interface {v1}, Lx2/o;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/subscribers/h;->f(Ll3/c;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    .line 7
    invoke-virtual {p0, v2, v3}, Lio/reactivex/internal/subscribers/h;->g(J)J

    :cond_0
    const/4 p1, -0x1

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/h;->a(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 9
    :cond_1
    invoke-interface {v1, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lio/reactivex/internal/subscribers/h;->z0:Z

    .line 11
    invoke-interface {p3}, Lio/reactivex/disposables/b;->dispose()V

    .line 12
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Could not emit buffer due to lack of requests"

    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_3
    invoke-interface {v1, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 15
    :cond_4
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/n;->e(Lx2/n;Ll3/c;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/m;)V

    return-void
.end method

.method public final k(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/subscribers/k;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
