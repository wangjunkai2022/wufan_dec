.class public Lcom/ss/android/socialbase/downloader/network/b;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/network/b$a;
    }
.end annotation


# static fields
.field public static volatile a:Z = false

.field private static final b:Ljava/lang/String; = "b"

.field private static g:J = -0x1L

.field private static volatile h:Lcom/ss/android/socialbase/downloader/network/b;


# instance fields
.field private final c:Lcom/ss/android/socialbase/downloader/network/k;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lcom/ss/android/socialbase/downloader/network/b$a;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/k;->a()Lcom/ss/android/socialbase/downloader/network/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->c:Lcom/ss/android/socialbase/downloader/network/k;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/network/b$a;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/h/e;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/network/b$a;-><init>(Lcom/ss/android/socialbase/downloader/network/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->e:Lcom/ss/android/socialbase/downloader/network/b$a;

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/network/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/network/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/network/b;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/network/b;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/b;->h:Lcom/ss/android/socialbase/downloader/network/b;

    return-object v0
.end method

.method public static d()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static e()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->b(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/network/b;->a:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSampling: mSamplingCounter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->e:Lcom/ss/android/socialbase/downloader/network/b$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/b$a;->a()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSampling: mSamplingCounter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/b;->e:Lcom/ss/android/socialbase/downloader/network/b$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/b$a;->b()V

    .line 4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/b;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->e()V

    .line 2
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/network/b;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->d()J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 5
    :goto_0
    sget-wide v2, Lcom/ss/android/socialbase/downloader/network/b;->g:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_1

    .line 6
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 8
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/network/b;->c:Lcom/ss/android/socialbase/downloader/network/k;

    iget-wide v7, p0, Lcom/ss/android/socialbase/downloader/network/b;->f:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/ss/android/socialbase/downloader/network/k;->a(JJ)V

    .line 9
    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/b;->f:J

    .line 10
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 11
    :cond_1
    :goto_1
    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/b;->g:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/b;->f()V

    const-wide/16 v0, -0x1

    .line 2
    sput-wide v0, Lcom/ss/android/socialbase/downloader/network/b;->g:J

    return-void
.end method
