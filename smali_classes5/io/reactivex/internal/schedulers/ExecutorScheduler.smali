.class public final Lio/reactivex/internal/schedulers/ExecutorScheduler;
.super Lio/reactivex/h0;
.source "ExecutorScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/ExecutorScheduler$a;,
        Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;,
        Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;
    }
.end annotation


# static fields
.field static final c:Lio/reactivex/h0;


# instance fields
.field final b:Ljava/util/concurrent/Executor;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/schedulers/b;->f()Lio/reactivex/h0;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->c:Lio/reactivex/h0;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/reactivex/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public c()Lio/reactivex/h0$c;
    .locals 2
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public e(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/AbstractDirectTask;->b(Ljava/util/concurrent/Future;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 9
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/internal/schedulers/AbstractDirectTask;->b(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 9
    sget-object p1, Lio/reactivex/internal/schedulers/ExecutorScheduler;->c:Lio/reactivex/h0;

    new-instance v1, Lio/reactivex/internal/schedulers/ExecutorScheduler$a;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$a;-><init>(Lio/reactivex/internal/schedulers/ExecutorScheduler;Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;)V

    invoke-virtual {p1, v1, p2, p3, p4}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    .line 10
    iget-object p2, v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    return-object v0
.end method

.method public g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance v7, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;

    invoke-direct {v7, p1}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;-><init>(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler;->b:Ljava/util/concurrent/Executor;

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 5
    invoke-virtual {v7, p1}, Lio/reactivex/internal/schedulers/AbstractDirectTask;->b(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 8
    :cond_0
    invoke-super/range {p0 .. p6}, Lio/reactivex/h0;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object p1

    return-object p1
.end method
