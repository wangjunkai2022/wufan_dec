.class final Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableJoin.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JoinDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;"
    }
.end annotation


# static fields
.field static final n:Ljava/lang/Integer;

.field static final o:Ljava/lang/Integer;

.field static final p:Ljava/lang/Integer;

.field static final q:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x54414b546f40e739L


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/disposables/a;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/e0<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final h:Lw2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/o<",
            "-TTRight;+",
            "Lio/reactivex/e0<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final i:Lw2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field k:I

.field l:I

.field volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->n:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->o:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->p:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->q:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lio/reactivex/g0;Lw2/o;Lw2/o;Lw2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;",
            "Lw2/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/e0<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lw2/o<",
            "-TTRight;+",
            "Lio/reactivex/e0<",
            "TTRightEnd;>;>;",
            "Lw2/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->a:Lio/reactivex/g0;

    .line 3
    new-instance p1, Lio/reactivex/disposables/a;

    invoke-direct {p1}, Lio/reactivex/disposables/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->c:Lio/reactivex/disposables/a;

    .line 4
    new-instance p1, Lio/reactivex/internal/queue/a;

    invoke-static {}, Lio/reactivex/z;->S()I

    move-result v0

    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->b:Lio/reactivex/internal/queue/a;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->d:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->e:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->g:Lw2/o;

    .line 9
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->h:Lw2/o;

    .line 10
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->i:Lw2/c;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->g()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(ZLjava/lang/Object;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->b:Lio/reactivex/internal/queue/a;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->n:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->o:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->g()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->g()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d(ZLio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->b:Lio/reactivex/internal/queue/a;

    if-eqz p1, :cond_0

    sget-object p1, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->p:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->q:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->g()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->m:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    :cond_0
    return-void
.end method

.method public e(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->delete(Lio/reactivex/disposables/b;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->g()V

    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    return-void
.end method

.method g()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->b:Lio/reactivex/internal/queue/a;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->a:Lio/reactivex/g0;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->m:Z

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    return-void

    .line 6
    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    .line 8
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f()V

    .line 9
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->h(Lio/reactivex/g0;)V

    return-void

    .line 10
    :cond_3
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 11
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    .line 15
    invoke-interface {v1}, Lio/reactivex/g0;->onComplete()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v3, v3

    .line 16
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 17
    :cond_7
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 18
    sget-object v7, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->n:Ljava/lang/Integer;

    const-string v8, "The resultSelector returned a null value"

    if-ne v6, v7, :cond_9

    .line 19
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->k:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->k:I

    .line 20
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :try_start_0
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->g:Lw2/o;

    invoke-interface {v6, v4}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The leftEnd returned a null ObservableSource"

    invoke-static {v6, v7}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    invoke-direct {v7, p0, v2, v5}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;ZI)V

    .line 23
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v5, v7}, Lio/reactivex/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    .line 24
    invoke-interface {v6, v7}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 25
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_8

    .line 26
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    .line 27
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f()V

    .line 28
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->h(Lio/reactivex/g0;)V

    return-void

    .line 29
    :cond_8
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->e:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 30
    :try_start_1
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->i:Lw2/c;

    invoke-interface {v7, v4, v6}, Lw2/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-interface {v1, v6}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 32
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->i(Ljava/lang/Throwable;Lio/reactivex/g0;Lio/reactivex/internal/queue/a;)V

    return-void

    :catchall_1
    move-exception v2

    .line 33
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->i(Ljava/lang/Throwable;Lio/reactivex/g0;Lio/reactivex/internal/queue/a;)V

    return-void

    .line 34
    :cond_9
    sget-object v7, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->o:Ljava/lang/Integer;

    if-ne v6, v7, :cond_b

    .line 35
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->l:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->l:I

    .line 36
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :try_start_2
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->h:Lw2/o;

    invoke-interface {v7, v4}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v9, "The rightEnd returned a null ObservableSource"

    invoke-static {v7, v9}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/e0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 38
    new-instance v9, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    invoke-direct {v9, p0, v5, v6}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;ZI)V

    .line 39
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v5, v9}, Lio/reactivex/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    .line 40
    invoke-interface {v7, v9}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    .line 41
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    .line 42
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    .line 43
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f()V

    .line 44
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->h(Lio/reactivex/g0;)V

    return-void

    .line 45
    :cond_a
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 46
    :try_start_3
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->i:Lw2/c;

    invoke-interface {v7, v6, v4}, Lw2/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 47
    invoke-interface {v1, v6}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    move-exception v2

    .line 48
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->i(Ljava/lang/Throwable;Lio/reactivex/g0;Lio/reactivex/internal/queue/a;)V

    return-void

    :catchall_3
    move-exception v2

    .line 49
    invoke-virtual {p0, v2, v1, v0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->i(Ljava/lang/Throwable;Lio/reactivex/g0;Lio/reactivex/internal/queue/a;)V

    return-void

    .line 50
    :cond_b
    sget-object v5, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->p:Ljava/lang/Integer;

    if-ne v6, v5, :cond_c

    .line 51
    check-cast v4, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    .line 52
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->d:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v5, v4}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    goto/16 :goto_0

    .line 54
    :cond_c
    check-cast v4, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    .line 55
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->e:Ljava/util/Map;

    iget v6, v4, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v5, v4}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    goto/16 :goto_0
.end method

.method h(Lio/reactivex/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method i(Ljava/lang/Throwable;Lio/reactivex/g0;Lio/reactivex/internal/queue/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/g0<",
            "*>;",
            "Lio/reactivex/internal/queue/a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 3
    invoke-virtual {p3}, Lio/reactivex/internal/queue/a;->clear()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->f()V

    .line 5
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->h(Lio/reactivex/g0;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableJoin$JoinDisposable;->m:Z

    return v0
.end method
