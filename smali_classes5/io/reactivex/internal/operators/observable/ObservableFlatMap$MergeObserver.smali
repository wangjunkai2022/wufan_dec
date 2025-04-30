.class final Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableFlatMap.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/g0<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final q:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;"
        }
    .end annotation
.end field

.field static final r:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1d634c9cafb5cc5aL


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I

.field volatile f:Lx2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/n<",
            "TU;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field final h:Lio/reactivex/internal/util/AtomicThrowable;

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "**>;>;"
        }
    .end annotation
.end field

.field k:Lio/reactivex/disposables/b;

.field l:J

.field m:J

.field n:I

.field o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/e0<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 1
    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->q:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 2
    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    return-void
.end method

.method constructor <init>(Lio/reactivex/g0;Lw2/o;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TU;>;",
            "Lw2/o<",
            "-TT;+",
            "Lio/reactivex/e0<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/g0;

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b:Lw2/o;

    .line 5
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c:Z

    .line 6
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    .line 7
    iput p5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e:I

    const p1, 0x7fffffff

    if-eq p4, p1, :cond_0

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->o:Ljava/util/Queue;

    .line 9
    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->q:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 2
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a()V

    return v2

    .line 4
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 5
    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 6
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aput-object p1, v3, v1

    .line 8
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method b()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 3
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    .line 6
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/g0;

    invoke-interface {v2, v0}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->k:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 3
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    if-eq v0, v1, :cond_1

    .line 5
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_0

    .line 6
    invoke-static {v0}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method e()V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/g0;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f:Lx2/n;

    if-eqz v3, :cond_5

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-interface {v3}, Lx2/n;->poll()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    if-nez v4, :cond_2

    goto :goto_2

    .line 6
    :cond_4
    invoke-interface {v0, v4}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_5
    :goto_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    .line 8
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f:Lx2/n;

    .line 9
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 10
    array-length v6, v5

    .line 11
    iget v7, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    const v8, 0x7fffffff

    const/4 v9, 0x0

    if-eq v7, v8, :cond_6

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->o:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    .line 14
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    const/4 v7, 0x0

    :goto_3
    if-eqz v3, :cond_a

    if-eqz v4, :cond_7

    .line 15
    invoke-interface {v4}, Lx2/o;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_7
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 16
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->c()Ljava/lang/Throwable;

    move-result-object v1

    .line 17
    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq v1, v2, :cond_9

    if-nez v1, :cond_8

    .line 18
    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    goto :goto_4

    .line 19
    :cond_8
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void

    :cond_a
    if-eqz v6, :cond_1c

    .line 20
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->m:J

    .line 21
    iget v7, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->n:I

    if-le v6, v7, :cond_b

    .line 22
    aget-object v10, v5, v7

    iget-wide v10, v10, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_10

    :cond_b
    if-gt v6, v7, :cond_c

    const/4 v7, 0x0

    :cond_c
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_f

    .line 23
    aget-object v11, v5, v7

    iget-wide v11, v11, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a:J

    cmp-long v13, v11, v3

    if-nez v13, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_e

    const/4 v7, 0x0

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 24
    :cond_f
    :goto_6
    iput v7, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->n:I

    .line 25
    aget-object v3, v5, v7

    iget-wide v3, v3, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a:J

    iput-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->m:J

    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v3, v6, :cond_1b

    .line 26
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()Z

    move-result v10

    if-eqz v10, :cond_11

    return-void

    .line 27
    :cond_11
    aget-object v10, v5, v7

    .line 28
    :cond_12
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()Z

    move-result v11

    if-eqz v11, :cond_13

    return-void

    .line 29
    :cond_13
    iget-object v11, v10, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->d:Lx2/o;

    if-nez v11, :cond_14

    goto :goto_8

    .line 30
    :cond_14
    :try_start_1
    invoke-interface {v11}, Lx2/o;->poll()Ljava/lang/Object;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v12, :cond_18

    if-nez v12, :cond_12

    .line 31
    :goto_8
    iget-boolean v11, v10, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->c:Z

    .line 32
    iget-object v12, v10, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->d:Lx2/o;

    if-eqz v11, :cond_17

    if-eqz v12, :cond_15

    .line 33
    invoke-interface {v12}, Lx2/o;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 34
    :cond_15
    invoke-virtual {p0, v10}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()Z

    move-result v4

    if-eqz v4, :cond_16

    return-void

    :cond_16
    const/4 v4, 0x1

    :cond_17
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_1a

    const/4 v7, 0x0

    goto :goto_9

    .line 36
    :cond_18
    invoke-interface {v0, v12}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()Z

    move-result v12

    if-eqz v12, :cond_14

    return-void

    :catchall_1
    move-exception v4

    .line 38
    invoke-static {v4}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 39
    invoke-virtual {v10}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a()V

    .line 40
    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11, v4}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    .line 41
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()Z

    move-result v4

    if-eqz v4, :cond_19

    return-void

    .line 42
    :cond_19
    invoke-virtual {p0, v10}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    :cond_1a
    :goto_9
    add-int/2addr v3, v1

    goto :goto_7

    .line 43
    :cond_1b
    iput v7, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->n:I

    .line 44
    aget-object v3, v5, v7

    iget-wide v5, v3, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a:J

    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->m:J

    move v9, v4

    :cond_1c
    if-eqz v9, :cond_1e

    .line 45
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    if-eq v3, v8, :cond_0

    .line 46
    monitor-enter p0

    .line 47
    :try_start_2
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->o:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/e0;

    if-nez v3, :cond_1d

    .line 48
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    sub-int/2addr v3, v1

    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    .line 49
    monitor-exit p0

    goto/16 :goto_0

    .line 50
    :cond_1d
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g(Lio/reactivex/e0;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 52
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_1e
    neg-int v2, v2

    .line 53
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method f(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 3
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 4
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->q:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 5
    new-array v5, v5, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    .line 6
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 7
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 8
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method g(Lio/reactivex/e0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i(Ljava/util/concurrent/Callable;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    const/4 p1, 0x0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/e0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    sub-int/2addr p1, v1

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    const/4 p1, 0x1

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d()V

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 9
    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->l:J

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;J)V

    .line 10
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {p1, v0}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    :cond_3
    :goto_1
    return-void
.end method

.method h(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/g0;

    invoke-interface {p2, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->d:Lx2/o;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lio/reactivex/internal/queue/a;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    .line 6
    iput-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->d:Lx2/o;

    .line 7
    :cond_1
    invoke-interface {v0, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e()V

    return-void
.end method

.method i(Ljava/util/concurrent/Callable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/g0;

    invoke-interface {v1, p1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 5
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f:Lx2/n;

    if-nez v1, :cond_3

    .line 6
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 7
    new-instance v1, Lio/reactivex/internal/queue/a;

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e:I

    invoke-direct {v1, v3}, Lio/reactivex/internal/queue/a;-><init>(I)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    invoke-direct {v1, v3}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 9
    :goto_0
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f:Lx2/n;

    .line 10
    :cond_3
    invoke-interface {v1, p1}, Lx2/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Scalar queue full?!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    return v0

    .line 12
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    .line 13
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e()V

    return v0

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    .line 16
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d()V

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d()V

    goto :goto_0

    .line 6
    :cond_1
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

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b:Lw2/o;

    invoke-interface {v0, p1}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null ObservableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->o:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    .line 9
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g(Lio/reactivex/e0;)V

    return-void

    :catchall_1
    move-exception p1

    .line 11
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->k:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 13
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->k:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->k:Lio/reactivex/disposables/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
