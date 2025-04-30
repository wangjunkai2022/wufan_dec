.class public Lcom/mob/tools/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/a/d;

.field private static volatile e:Z


# instance fields
.field private b:Landroid/content/Context;

.field private volatile c:Ljava/lang/String;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:[B

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile h:Ljava/io/File;

.field private i:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lcom/mob/tools/a/d;->f:[B

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mob/tools/a/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/a/d;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mob/tools/a/d;->j:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/mob/tools/a/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mob/tools/a/d;
    .locals 2

    .line 6
    sget-object v0, Lcom/mob/tools/a/d;->a:Lcom/mob/tools/a/d;

    if-nez v0, :cond_1

    .line 7
    const-class v0, Lcom/mob/tools/a/d;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mob/tools/a/d;->a:Lcom/mob/tools/a/d;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/mob/tools/a/d;

    invoke-direct {v1, p0}, Lcom/mob/tools/a/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/a/d;->a:Lcom/mob/tools/a/d;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lcom/mob/tools/a/d;->a:Lcom/mob/tools/a/d;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/d;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 39
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/a/d;Ljava/io/File;)Ljava/util/HashMap;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/tools/a/d;->a(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/File;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "dhs l %d"

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    iget-object v3, p0, Lcom/mob/tools/a/d;->d:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 21
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mob/tools/a/d;->d:Ljava/util/HashMap;

    .line 22
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v5, "cacheMap"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v3, p0, Lcom/mob/tools/a/d;->d:Ljava/util/HashMap;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v5, "invokeTimesMap"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v3, p0, Lcom/mob/tools/a/d;->d:Ljava/util/HashMap;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v5, "expireTimeMap"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x0

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v9, p0, Lcom/mob/tools/a/d;->d:Ljava/util/HashMap;

    invoke-static {v8, p1, v1, v2, v9}, Lcom/mob/commons/cc/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v6, [Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v7

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 29
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dhs l e: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-static {}, Lcom/mob/commons/f;->a()Lcom/mob/commons/f;

    move-result-object v1

    const/4 v8, 0x6

    invoke-virtual {v1, v8, p1}, Lcom/mob/commons/f;->b(ILjava/lang/Throwable;)V

    .line 32
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    nop

    .line 33
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v6, [Ljava/lang/Object;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v7

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 35
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-object v2
.end method

.method static synthetic a(Lcom/mob/tools/a/d;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 9

    const-string v0, "dhs d %d"

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 42
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 44
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const-string v7, "dhs d..."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v7, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 46
    new-instance p2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {p2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-virtual {p2, p1, v6, v1}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v5, [Ljava/lang/Object;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v6, p1, v2

    .line 50
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return v5

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v6, v1

    .line 51
    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dhs d e: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v5, [Ljava/lang/Object;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v6, p1, v2

    .line 56
    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-array p2, v5, [Ljava/lang/Object;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :cond_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-array p2, v5, [Ljava/io/Closeable;

    aput-object v6, p2, v2

    .line 60
    invoke-static {p2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 61
    throw p1

    :cond_4
    :goto_1
    return v2
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 4
    sput-boolean p0, Lcom/mob/tools/a/d;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/mob/tools/a/d;)[B
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mob/tools/a/d;->f:[B

    return-object p0
.end method

.method static synthetic b(Lcom/mob/tools/a/d;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/d;->h:Ljava/io/File;

    return-object p1
.end method

.method static synthetic b(Lcom/mob/tools/a/d;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mob/tools/a/d;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 8
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static b()Z
    .locals 1

    .line 4
    sget-boolean v0, Lcom/mob/tools/a/d;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/mob/tools/a/d;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mob/tools/a/d;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mob/tools/a/d;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic c(Lcom/mob/tools/a/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/a/d;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/mob/tools/a/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mob/tools/a/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic d()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/mob/tools/a/d;->e:Z

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/mob/tools/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "002Oghgh"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/commons/b;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "009\'ghgdeifigeefCeTehBd"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/commons/b;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method static synthetic e(Lcom/mob/tools/a/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a/d;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/mob/tools/a/d;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a/d;->h:Ljava/io/File;

    return-object p0
.end method

.method static synthetic f(Lcom/mob/tools/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mob/tools/a/d;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/mob/tools/a/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a/d;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/mob/tools/a/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/a/d;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/CountDownLatch;
    .locals 4

    .line 12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 13
    :try_start_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dhs ofr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 14
    iget-object v1, p0, Lcom/mob/tools/a/d;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 16
    :goto_0
    sget-object v1, Lcom/mob/commons/u;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mob/tools/a/d$1;

    invoke-direct {v2, p0, v0}, Lcom/mob/tools/a/d$1;-><init>(Lcom/mob/tools/a/d;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public c()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mob/tools/a/d;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/a/d;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
