.class final Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MaybeConcatArrayDelayError.java"

# interfaces
.implements Lio/reactivex/t;
.implements Ll3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/t<",
        "TT;>;",
        "Ll3/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30dc8174e7c3966aL


# instance fields
.field final a:Ll3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final e:[Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final f:Lio/reactivex/internal/util/AtomicThrowable;

.field g:I

.field h:J


# direct methods
.method constructor <init>(Ll3/c;[Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c<",
            "-TT;>;[",
            "Lio/reactivex/w<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->a:Ll3/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->e:[Lio/reactivex/w;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->a:Ll3/c;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 5
    :cond_1
    invoke-interface {v2}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 8
    sget-object v5, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v6, 0x1

    if-eq v3, v5, :cond_4

    .line 9
    iget-wide v7, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->h:J

    .line 10
    iget-object v5, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 11
    iput-wide v7, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->h:J

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 13
    invoke-interface {v1, v3}, Ll3/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    if-eqz v6, :cond_7

    .line 15
    invoke-interface {v2}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 16
    iget v3, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->g:I

    .line 17
    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->e:[Lio/reactivex/w;

    array-length v5, v4

    if-ne v3, v5, :cond_6

    .line 18
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Ll3/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-interface {v1}, Ll3/c;->onComplete()V

    :goto_1
    return-void

    :cond_6
    add-int/lit8 v5, v3, 0x1

    .line 21
    iput v5, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->g:I

    .line 22
    aget-object v3, v4, v3

    invoke-interface {v3, p0}, Lio/reactivex/w;->a(Lio/reactivex/t;)V

    .line 23
    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->a()V

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArrayDelayError$ConcatMaybeObserver;->a()V

    :cond_0
    return-void
.end method
