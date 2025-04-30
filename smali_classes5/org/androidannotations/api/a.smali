.class public final Lorg/androidannotations/api/a;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/api/a$d;,
        Lorg/androidannotations/api/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BackgroundExecutor"

.field public static final b:Ljava/util/concurrent/Executor;

.field private static c:Ljava/util/concurrent/Executor;

.field public static final d:Lorg/androidannotations/api/a$d;

.field private static e:Lorg/androidannotations/api/a$d;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/androidannotations/api/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lorg/androidannotations/api/a;->b:Ljava/util/concurrent/Executor;

    .line 2
    sput-object v0, Lorg/androidannotations/api/a;->c:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lorg/androidannotations/api/a$a;

    invoke-direct {v0}, Lorg/androidannotations/api/a$a;-><init>()V

    sput-object v0, Lorg/androidannotations/api/a;->d:Lorg/androidannotations/api/a$d;

    .line 4
    sput-object v0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/androidannotations/api/a;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->g:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Lorg/androidannotations/api/a$c;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/androidannotations/api/a;->p(Ljava/lang/String;)Lorg/androidannotations/api/a$c;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized d(Ljava/lang/String;Z)V
    .locals 6

    const-class v0, Lorg/androidannotations/api/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 2
    sget-object v3, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/androidannotations/api/a$c;

    .line 3
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$000(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$300(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/Future;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$300(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$500(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$600(Lorg/androidannotations/api/a$c;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$200(Lorg/androidannotations/api/a$c;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A task with id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$000(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be cancelled (the executor set does not support it)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static varargs e([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    invoke-interface {v0, p0}, Lorg/androidannotations/api/a$d;->c([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    sget-object v0, Lorg/androidannotations/api/a;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lorg/androidannotations/api/a$d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_4
    sget-object v1, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    invoke-interface {v1, v0, p0}, Lorg/androidannotations/api/a$d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static f()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    invoke-interface {v0}, Lorg/androidannotations/api/a$d;->b()V

    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->c:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The executor set does not support scheduling"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    sget-object p1, Lorg/androidannotations/api/a;->c:Ljava/util/concurrent/Executor;

    instance-of p2, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_2

    .line 6
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 7
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static h(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lorg/androidannotations/api/a;->g(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static i(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/androidannotations/api/a;->g(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static j(Ljava/lang/Runnable;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lorg/androidannotations/api/a$b;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/androidannotations/api/a$b;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public static k(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, p2}, Lorg/androidannotations/api/a;->j(Ljava/lang/Runnable;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized l(Lorg/androidannotations/api/a$c;)V
    .locals 3

    const-class v0, Lorg/androidannotations/api/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$000(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    sget-object v1, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_1
    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/androidannotations/api/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v1}, Lorg/androidannotations/api/a$c;->access$202(Lorg/androidannotations/api/a$c;Z)Z

    .line 5
    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$400(Lorg/androidannotations/api/a$c;)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lorg/androidannotations/api/a;->g(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/androidannotations/api/a$c;->access$302(Lorg/androidannotations/api/a$c;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static m(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/a$c;

    .line 2
    invoke-static {v1}, Lorg/androidannotations/api/a$c;->access$200(Lorg/androidannotations/api/a$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/androidannotations/api/a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static o(Lorg/androidannotations/api/a$d;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    return-void
.end method

.method private static p(Ljava/lang/String;)Lorg/androidannotations/api/a$c;
    .locals 4

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    sget-object v2, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/androidannotations/api/a$c;

    invoke-static {v3}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/androidannotations/api/a$c;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
