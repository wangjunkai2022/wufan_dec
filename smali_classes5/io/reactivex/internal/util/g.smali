.class public final Lio/reactivex/internal/util/g;
.super Ljava/lang/Object;
.source "HalfSerializer.java"


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

.method public static a(Lio/reactivex/g0;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lio/reactivex/g0;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ll3/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Ll3/c;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lio/reactivex/g0;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p3}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ll3/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p3}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Lio/reactivex/g0;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/g0<",
            "-TT;>;TT;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p3}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p0, p1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0}, Lio/reactivex/g0;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static f(Ll3/c;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/c<",
            "-TT;>;TT;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lio/reactivex/internal/util/AtomicThrowable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Ll3/c;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p3}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p0, p1}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0}, Ll3/c;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method
