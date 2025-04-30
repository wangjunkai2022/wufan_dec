.class public final Lio/reactivex/internal/operators/observable/ObservableReplay;
.super Lio/reactivex/observables/a;
.source "ObservableReplay.java"

# interfaces
.implements Lx2/g;
.implements Lio/reactivex/internal/disposables/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableReplay$d;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$c;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$g;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$h;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$f;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$b;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$i;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$Node;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$e;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;,
        Lio/reactivex/internal/operators/observable/ObservableReplay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observables/a<",
        "TT;>;",
        "Lx2/g<",
        "TT;>;",
        "Lio/reactivex/internal/disposables/c;"
    }
.end annotation


# static fields
.field static final e:Lio/reactivex/internal/operators/observable/ObservableReplay$a;


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/observable/ObservableReplay$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableReplay$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$i;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$i;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableReplay;->e:Lio/reactivex/internal/operators/observable/ObservableReplay$a;

    return-void
.end method

.method private constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/observable/ObservableReplay$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver<",
            "TT;>;>;",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/observables/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->d:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->a:Lio/reactivex/e0;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->c:Lio/reactivex/internal/operators/observable/ObservableReplay$a;

    return-void
.end method

.method public static q8(Lio/reactivex/e0;I)Lio/reactivex/observables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "TT;>;I)",
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay;->u8(Lio/reactivex/e0;)Lio/reactivex/observables/a;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$f;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$f;-><init>(I)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay;->t8(Lio/reactivex/e0;Lio/reactivex/internal/operators/observable/ObservableReplay$a;)Lio/reactivex/observables/a;

    move-result-object p0

    return-object p0
.end method

.method public static r8(Lio/reactivex/e0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/observables/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableReplay;->s8(Lio/reactivex/e0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/observables/a;

    move-result-object p0

    return-object p0
.end method

.method public static s8(Lio/reactivex/e0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)Lio/reactivex/observables/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I)",
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableReplay$h;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableReplay$h;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableReplay;->t8(Lio/reactivex/e0;Lio/reactivex/internal/operators/observable/ObservableReplay$a;)Lio/reactivex/observables/a;

    move-result-object p0

    return-object p0
.end method

.method static t8(Lio/reactivex/e0;Lio/reactivex/internal/operators/observable/ObservableReplay$a;)Lio/reactivex/observables/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$a<",
            "TT;>;)",
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReplay$g;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$g;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/observable/ObservableReplay$a;)V

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableReplay;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay;-><init>(Lio/reactivex/e0;Lio/reactivex/e0;Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/observable/ObservableReplay$a;)V

    invoke-static {v2}, Lio/reactivex/plugins/a;->U(Lio/reactivex/observables/a;)Lio/reactivex/observables/a;

    move-result-object p0

    return-object p0
.end method

.method public static u8(Lio/reactivex/e0;)Lio/reactivex/observables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "+TT;>;)",
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableReplay;->e:Lio/reactivex/internal/operators/observable/ObservableReplay$a;

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay;->t8(Lio/reactivex/e0;Lio/reactivex/internal/operators/observable/ObservableReplay$a;)Lio/reactivex/observables/a;

    move-result-object p0

    return-object p0
.end method

.method public static v8(Ljava/util/concurrent/Callable;Lw2/o;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/observables/a<",
            "TU;>;>;",
            "Lw2/o<",
            "-",
            "Lio/reactivex/z<",
            "TU;>;+",
            "Lio/reactivex/e0<",
            "TR;>;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$c;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$c;-><init>(Ljava/util/concurrent/Callable;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static w8(Lio/reactivex/observables/a;Lio/reactivex/h0;)Lio/reactivex/observables/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/observables/a<",
            "TT;>;",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/observables/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/z;->Y3(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$d;-><init>(Lio/reactivex/observables/a;Lio/reactivex/z;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->U(Lio/reactivex/observables/a;)Lio/reactivex/observables/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected F5(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->d:Lio/reactivex/e0;

    invoke-interface {v0, p1}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    return-void
.end method

.method public b(Lio/reactivex/disposables/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->b:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public j8(Lw2/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->c:Lio/reactivex/internal/operators/observable/ObservableReplay$a;

    invoke-interface {v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$a;->call()Lio/reactivex/internal/operators/observable/ObservableReplay$e;

    move-result-object v1

    .line 4
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableReplay$e;)V

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Lw2/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->a(Lio/reactivex/g0;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    .line 9
    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    :cond_5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public source()Lio/reactivex/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/e0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay;->a:Lio/reactivex/e0;

    return-object v0
.end method
