.class public abstract Lio/reactivex/a;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lio/reactivex/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "completableSupplier"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/b;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method private K(Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)Lio/reactivex/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lw2/a;",
            "Lw2/a;",
            "Lw2/a;",
            "Lw2/a;",
            ")",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 5
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 6
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lio/reactivex/internal/operators/completable/v;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/completable/v;-><init>(Lio/reactivex/g;Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public static N(Ljava/lang/Throwable;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "error is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/g;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/g;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static O(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/h;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/h;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static P(Lw2/a;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/i;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/i;-><init>(Lw2/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method private P0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 8
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/w;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/w;-><init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public static Q(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/j;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/j;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static Q0(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/a;->R0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/util/concurrent/Future;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/internal/functions/Functions;->j(Ljava/util/concurrent/Future;)Lw2/a;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/a;->P(Lw2/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static R0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableTimer;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/completable/CompletableTimer;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lio/reactivex/w;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "maybe is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/v;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/v;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static T(Lio/reactivex/e0;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "observable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/k;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/k;-><init>(Lio/reactivex/e0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ll3/b;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/l;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/l;-><init>(Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/lang/Runnable;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/m;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/m;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method private static V0(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static W(Lio/reactivex/o0;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o0<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "single is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/n;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/n;-><init>(Lio/reactivex/o0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static Z0(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/o;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/o;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use of unsafeCreate(Completable)!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a0(Ll3/b;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lio/reactivex/a;->c0(Ll3/b;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Ll3/b;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lio/reactivex/a;->c0(Ll3/b;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static b1(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lw2/o<",
            "-TR;+",
            "Lio/reactivex/g;",
            ">;",
            "Lw2/g<",
            "-TR;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lio/reactivex/a;->c1(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;Z)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method private static c0(Ll3/b;IZ)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;IZ)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableMerge;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/completable/CompletableMerge;-><init>(Ll3/b;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static c1(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;Z)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lw2/o<",
            "-TR;+",
            "Lio/reactivex/g;",
            ">;",
            "Lw2/g<",
            "-TR;>;Z)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "completableFunction is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/completable/CompletableUsing;-><init>(Ljava/util/concurrent/Callable;Lw2/o;Lw2/g;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d0([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/a;->s()Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/a;->d1(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableMergeArray;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static d1(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lio/reactivex/a;

    invoke-static {p0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/completable/o;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/o;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/completable/a;-><init>([Lio/reactivex/g;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e0([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/r;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/r;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/a;->s()Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/a;->d1(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/completable/a;-><init>([Lio/reactivex/g;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/s;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/s;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ll3/b;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lio/reactivex/a;->c0(Ll3/b;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Ll3/b;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lio/reactivex/a;->c0(Ll3/b;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static j0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/completable/t;->a:Lio/reactivex/a;

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public static s()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/completable/f;->a:Lio/reactivex/a;

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public static u(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableConcatIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableConcatIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ll3/b;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/a;->w(Ll3/b;I)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ll3/b;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableConcat;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableConcat;-><init>(Ll3/b;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs x([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/a;->s()Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/a;->d1(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableConcatArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableConcatArray;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lio/reactivex/e;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableCreate;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableCreate;-><init>(Lio/reactivex/e;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->Z5(Ll3/b;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final B(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 6
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/a;->D(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final B0(Lio/reactivex/z;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->l1(Lio/reactivex/e0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final C(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 6
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/a;->D(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final C0()Lio/reactivex/disposables/b;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/EmptyCompletableObserver;

    invoke-direct {v0}, Lio/reactivex/internal/observers/EmptyCompletableObserver;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final D(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/a;
    .locals 8
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableDelay;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/CompletableDelay;-><init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final D0(Lw2/a;)Lio/reactivex/disposables/b;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onComplete is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lw2/a;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final E(Lw2/a;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->K(Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final E0(Lw2/a;Lw2/g;)Lio/reactivex/disposables/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/a;",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/b;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p2, p1}, Lio/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lw2/g;Lw2/a;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final F(Lw2/a;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableDoFinally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableDoFinally;-><init>(Lio/reactivex/g;Lw2/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract F0(Lio/reactivex/d;)V
.end method

.method public final G(Lw2/a;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->K(Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final G0(Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;-><init>(Lio/reactivex/g;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final H(Lw2/a;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v2

    sget-object v5, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    move-object v0, p0

    move-object v3, v5

    move-object v4, v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->K(Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final H0(Lio/reactivex/d;)Lio/reactivex/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/d;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    return-object p1
.end method

.method public final I(Lw2/g;)Lio/reactivex/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    sget-object v6, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->K(Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final I0(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable;-><init>(Lio/reactivex/a;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lw2/g;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onEvent is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/e;-><init>(Lio/reactivex/g;Lw2/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final J0()Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/TestObserver<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/TestObserver;

    invoke-direct {v0}, Lio/reactivex/observers/TestObserver;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final K0(Z)Lio/reactivex/observers/TestObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/TestObserver<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/TestObserver;

    invoke-direct {v0}, Lio/reactivex/observers/TestObserver;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/observers/TestObserver;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final L(Lw2/g;)Lio/reactivex/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/g<",
            "-",
            "Lio/reactivex/disposables/b;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->K(Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final L0(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 6
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/a;->P0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final M(Lw2/a;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->h()Lw2/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/Functions;->c:Lw2/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->K(Lw2/g;Lw2/g;Lw2/a;Lw2/a;Lw2/a;Lw2/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final M0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "io.reactivex:computation"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/a;->P0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final N0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 6
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lio/reactivex/a;->P0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final O0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct/range {p0 .. p5}, Lio/reactivex/a;->P0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final S0(Lw2/o;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/a;",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/o;

    invoke-interface {p1, p0}, Lw2/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final T0()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lx2/b;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lx2/b;

    invoke-interface {v0}, Lx2/b;->d()Lio/reactivex/j;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/completable/x;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/x;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final U0()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lx2/c;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lx2/c;

    invoke-interface {v0}, Lx2/c;->c()Lio/reactivex/q;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/p;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/p;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final W0()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lx2/d;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lx2/d;

    invoke-interface {v0}, Lx2/d;->b()Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/completable/y;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/y;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final X()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/p;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/p;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final X0(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "completionValueSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/completable/z;-><init>(Lio/reactivex/g;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Lio/reactivex/f;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "onLift is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/q;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/q;-><init>(Lio/reactivex/g;Lio/reactivex/f;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(Ljava/lang/Object;)Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "completionValue is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/completable/z;-><init>(Lio/reactivex/g;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/reactivex/d;)V
    .locals 1
    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/plugins/a;->d0(Lio/reactivex/a;Lio/reactivex/d;)Lio/reactivex/d;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/a;->F0(Lio/reactivex/d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p1}, Lio/reactivex/a;->V0(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public final a1(Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/d;-><init>(Lio/reactivex/g;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/a;->f([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 0
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/a;->y(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ll3/b;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/b<",
            "TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/BackpressureSupport;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher;-><init>(Lio/reactivex/g;Ll3/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/a;->d0([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable;-><init>(Lio/reactivex/w;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lio/reactivex/e0;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/CompletableAndThenObservable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/CompletableAndThenObservable;-><init>(Lio/reactivex/g;Lio/reactivex/e0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final k0(Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableObserveOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableObserveOn;-><init>(Lio/reactivex/g;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lio/reactivex/o0;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o0<",
            "TT;>;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/SingleDelayWithCompletable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/single/SingleDelayWithCompletable;-><init>(Lio/reactivex/o0;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final l0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->c()Lw2/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/a;->m0(Lw2/r;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lio/reactivex/b;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/b;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/b<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b;

    invoke-interface {p1, p0}, Lio/reactivex/b;->a(Lio/reactivex/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m0(Lw2/r;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/u;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/u;-><init>(Lio/reactivex/g;Lw2/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final n()V
    .locals 1
    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/observers/f;->b()Ljava/lang/Object;

    return-void
.end method

.method public final n0(Lw2/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "errorMapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableResumeNext;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableResumeNext;-><init>(Lio/reactivex/g;Lw2/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final o(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/internal/observers/f;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final o0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/c;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/observers/f;->d()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final p0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/j;->Q4()Lio/reactivex/j;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final q(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/a;->a(Lio/reactivex/d;)V

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/internal/observers/f;->e(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public final q0(J)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/j;->R4(J)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final r()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableCache;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableCache;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final r0(Lw2/e;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->S4(Lw2/e;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final s0(Lw2/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Object;",
            ">;+",
            "Ll3/b<",
            "*>;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->T4(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lio/reactivex/h;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "transformer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/h;

    invoke-interface {p1, p0}, Lio/reactivex/h;->a(Lio/reactivex/a;)Lio/reactivex/g;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->d1(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final t0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/j;->k5()Lio/reactivex/j;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final u0(J)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/j;->l5(J)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final v0(JLw2/r;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lw2/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/j;->m5(JLw2/r;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final w0(Lw2/d;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->n5(Lw2/d;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final x0(Lw2/r;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->o5(Lw2/r;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/a;->x([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final y0(Lw2/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/o<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Ll3/b<",
            "*>;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/a;->T0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->q5(Lw2/o;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->U(Ll3/b;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final z0(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .annotation runtime Lio/reactivex/annotations/SchedulerSupport;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2
    invoke-static {v0}, Lio/reactivex/a;->x([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method
