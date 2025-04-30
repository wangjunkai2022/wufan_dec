.class public Lcom/ss/android/socialbase/downloader/h/d;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private volatile b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v0, "Download_OP_Thread"

    invoke-direct {v7, v0}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/ss/android/socialbase/downloader/h/d;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/android/socialbase/downloader/h/d;->c:I

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/h/d;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/h/c;

    .line 5
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/h/c;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v1, v2, :cond_3

    .line 8
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/h/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->c()Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExecutorGroup()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->o()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 14
    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_4

    .line 15
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_with_interrupt"

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->g()Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 19
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/d;->b()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 39
    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 40
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/h/c;

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public a(IJ)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/h/c;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/h/c;->c(J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/h/c;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->f()V

    .line 3
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->c:I

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/d;->b()V

    .line 6
    iput v4, p0, Lcom/ss/android/socialbase/downloader/h/d;->c:I

    goto :goto_0

    :cond_0
    add-int/2addr v1, v3

    .line 7
    iput v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->c:I

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->c()Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 11
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "mime_type_plg"

    .line 13
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_1

    .line 14
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v5

    const-string v7, "divide_plugin"

    invoke-virtual {v5, v7, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    const-string v5, "executor_group"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExecutorGroup()I

    move-result v3

    if-eq v3, v6, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->o()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    const-string v5, "pause_with_interrupt"

    .line 20
    invoke-virtual {v3, v5, v4}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/h/c;->a(Ljava/util/concurrent/Future;)V

    goto/16 :goto_3

    .line 23
    :cond_5
    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 24
    :cond_6
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v5, "execute failed cpu thread executor service is null"

    invoke-direct {v3, v1, v5}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v5

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    invoke-static {p1, v2, v3, v5}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    new-instance v5, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v6, "execute OOM"

    invoke-direct {v5, v1, v6}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    :cond_8
    invoke-static {v2, v3, v5, v4}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 26
    :cond_9
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p1

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    new-instance v5, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v6, "DownloadThreadPoolExecute"

    invoke-static {p1, v6}, Lcom/ss/android/socialbase/downloader/i/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v4

    :cond_a
    invoke-static {v2, v3, v5, v4}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 28
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 29
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(I)Z
    .locals 3

    .line 30
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/h/c;

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 34
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/h/c;
    .locals 3

    .line 20
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 21
    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/d;->b()V

    .line 22
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/h/c;

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/h/c;->b()V

    .line 24
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/h/d;->c(Lcom/ss/android/socialbase/downloader/h/c;)V

    .line 25
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 26
    monitor-exit v0

    return-object v1

    .line 27
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/h/c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    const/high16 v1, 0x80000

    .line 14
    :try_start_0
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/c;->e()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public c(I)V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/h/d;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/h/d;->b()V

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/h/c;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/h/c;->a()V

    .line 5
    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/downloader/h/d;->c(Lcom/ss/android/socialbase/downloader/h/c;)V

    .line 6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
