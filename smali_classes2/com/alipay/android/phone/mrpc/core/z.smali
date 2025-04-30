.class public final Lcom/alipay/android/phone/mrpc/core/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/m;


# static fields
.field private static h:Lcom/alipay/android/phone/mrpc/core/z;

.field private static final i:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Lcom/alipay/android/phone/mrpc/core/p;

.field private d:J

.field private e:J

.field private f:J

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/b0;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/b0;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/z;->i:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/z;->a:Landroid/content/Context;

    const-string p1, "android"

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/p;->b(Ljava/lang/String;)Lcom/alipay/android/phone/mrpc/core/p;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/z;->c:Lcom/alipay/android/phone/mrpc/core/p;

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x14

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v7, Lcom/alipay/android/phone/mrpc/core/z;->i:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/16 v1, 0xa

    const/16 v2, 0xb

    const-wide/16 v3, 0x3

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/z;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/alipay/android/phone/mrpc/core/z;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void
.end method

.method public static final c(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/z;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/mrpc/core/z;->h:Lcom/alipay/android/phone/mrpc/core/z;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/android/phone/mrpc/core/z;->e(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/z;

    move-result-object p0

    return-object p0
.end method

.method private static final declared-synchronized e(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/z;
    .locals 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mrpc/core/z;->h:Lcom/alipay/android/phone/mrpc/core/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/z;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mrpc/core/z;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mrpc/core/z;->h:Lcom/alipay/android/phone/mrpc/core/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/mrpc/core/d;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/d;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/android/phone/mrpc/core/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/g0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->f:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    move-wide v3, v5

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Lcom/alipay/android/phone/mrpc/core/z;->d:J

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    div-long/2addr v7, v3

    const/16 v3, 0xa

    shr-long v3, v7, v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->g:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Lcom/alipay/android/phone/mrpc/core/z;->e:J

    int-to-long v6, v3

    div-long v5, v4, v6

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/alipay/android/phone/mrpc/core/z;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    check-cast p1, Lcom/alipay/android/phone/mrpc/core/c0;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/e0;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/mrpc/core/e0;-><init>(Lcom/alipay/android/phone/mrpc/core/z;Lcom/alipay/android/phone/mrpc/core/c0;)V

    new-instance p1, Lcom/alipay/android/phone/mrpc/core/a0;

    invoke-direct {p1, p0, v0, v0}, Lcom/alipay/android/phone/mrpc/core/a0;-><init>(Lcom/alipay/android/phone/mrpc/core/z;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/e0;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public final b()Lcom/alipay/android/phone/mrpc/core/p;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->c:Lcom/alipay/android/phone/mrpc/core/p;

    return-object v0
.end method

.method public final d(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->d:J

    return-void
.end method

.method public final f(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->e:J

    iget p1, p0, Lcom/alipay/android/phone/mrpc/core/z;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alipay/android/phone/mrpc/core/z;->g:I

    return-void
.end method

.method public final g(J)V
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/z;->f:J

    return-void
.end method
