.class public abstract Lcom/ss/android/socialbase/downloader/impls/a;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/h/h$a;


# instance fields
.field protected final a:Lcom/ss/android/socialbase/downloader/h/h;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/ss/android/socialbase/downloader/i/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/i/h<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/ss/android/socialbase/downloader/downloader/j;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/i/h;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/i/h;

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 11
    new-instance v0, Lcom/ss/android/socialbase/downloader/h/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/socialbase/downloader/h/h;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/h/h$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    .line 12
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->x()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/a;I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p0

    return-object p0
.end method

.method private a(II)V
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTask id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener hasCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsDownloadEngine"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 126
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after downloadTaskWithListenerMap removeTask taskArray.size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 132
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 133
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 4

    if-eqz p3, :cond_2

    .line 119
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {p3, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/f;)Landroid/util/SparseArray;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {p3, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/f;)Landroid/util/SparseArray;

    move-result-object v2

    .line 122
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->canShowNotification()Z

    move-result p3

    const/4 v3, 0x1

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 123
    :goto_1
    invoke-static {p1, v1, v3, v0, p2}, Lcom/ss/android/socialbase/downloader/i/c;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 124
    invoke-static {p1, v2, p3, v0, p2}, Lcom/ss/android/socialbase/downloader/i/c;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->d(IZ)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayStatus()Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    .line 80
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 81
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/g;->a:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setRetryDelayStatus(Lcom/ss/android/socialbase/downloader/constants/g;)V

    const-string p1, "AbsDownloadEngine"

    const-string v0, "cancelAlarm"

    .line 82
    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isEntityInvalid()Z

    move-result v1

    const/16 v2, 0x3eb

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object p1

    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadInfo is Invalid, url is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " savePath is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v2, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "no_net_opt"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    new-instance p2, Lcom/ss/android/socialbase/downloader/downloader/f;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    invoke-direct {p2, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 10
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x419

    const-string v1, "network_not_available"

    invoke-direct {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    if-eqz p2, :cond_4

    .line 12
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 14
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    :cond_5
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 16
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 17
    :cond_6
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 18
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    :cond_7
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 20
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    :cond_8
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p2

    const-string v5, "AbsDownloadEngine"

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReStartAsyncTask()Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "another task with same id is downloading when tryDownload"

    .line 22
    invoke-static {v5, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addListenerToDownloadingSameTask()V

    .line 24
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object p1

    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const-string v1, "downloadInfo is isDownloading and addListenerToSameTask is false"

    invoke-direct {p2, v2, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    return-void

    .line 25
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no downloading task :"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReStartAsyncTask()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 27
    sget-object p2, Lcom/ss/android/socialbase/downloader/constants/a;->c:Lcom/ss/android/socialbase/downloader/constants/a;

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAsyncHandleStatus(Lcom/ss/android/socialbase/downloader/constants/a;)V

    :cond_a
    const p2, 0x8000

    .line 28
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 29
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p2, :cond_b

    .line 30
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->copyListenerFromPendingTask(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 31
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 32
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p2, :cond_c

    .line 33
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 34
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    .line 35
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    goto :goto_0

    :cond_c
    const/4 p2, 0x0

    .line 36
    :cond_d
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can add listener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , oldTaskStatus is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_e

    .line 37
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addListenerToDownloadingSameTask()V

    goto :goto_1

    .line 38
    :cond_e
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 39
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Landroid/util/SparseArray;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    invoke-virtual {p0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->e(IZ)V

    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getHashCodeForSameTask()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->isAutoSetHashCodeForSameTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->autoCalAndGetHashCodeForSameTask()I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryCacheSameTaskWithListenerHashCode id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " listener hasCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbsDownloadEngine"

    invoke-static {v3, v2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->statusInPause()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method private c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getEnqueueType()Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/EnqueueType;->ENQUEUE_TAIL:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    if-ne v0, v1, :cond_6

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 7
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/f;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 14
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a()V

    goto :goto_0

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 16
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    .line 17
    :cond_7
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    .line 18
    invoke-direct {p0, p1, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V

    .line 19
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putFirst(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_0
    return-void
.end method

.method private declared-synchronized d(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AbsDownloadEngine"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDownloadDataInSubThread::id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deleteTargetFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 7
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ss/android/socialbase/downloader/i/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->erase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->f(I)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 11
    :try_start_3
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_1
    const/4 p2, 0x0

    const/4 v0, -0x4

    .line 12
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(III)V

    .line 13
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 16
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 17
    :cond_3
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 19
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e(IZ)V
    .locals 1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {v0, p2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 25
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V

    .line 27
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 28
    :try_start_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 29
    :goto_0
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 30
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    :cond_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 32
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 33
    :cond_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_0
    return-object v0
.end method

.method private p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 51
    monitor-exit p0

    return-object p1

    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    monitor-exit p0

    return-object v0

    .line 55
    :cond_2
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 57
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v3, :cond_3

    .line 58
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized a(III)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x7

    if-eq p3, v0, :cond_8

    const/4 v0, -0x6

    if-eq p3, v0, :cond_7

    const/4 v0, -0x4

    if-eq p3, v0, :cond_6

    const/4 v0, -0x3

    if-eq p3, v0, :cond_5

    const/4 v0, -0x1

    if-eq p3, v0, :cond_8

    const/4 v0, 0x7

    if-eq p3, v0, :cond_2

    const/16 p2, 0x8

    if-eq p3, p2, :cond_0

    goto/16 :goto_0

    .line 135
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p2, :cond_1

    .line 136
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    .line 137
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p3, :cond_4

    .line 140
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 143
    :cond_4
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    goto :goto_0

    .line 144
    :cond_5
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 145
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 147
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    goto :goto_0

    .line 148
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 149
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    goto :goto_0

    .line 150
    :cond_7
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 151
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    goto :goto_0

    .line 153
    :cond_8
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p3, :cond_a

    .line 154
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 157
    :cond_a
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_0
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->removeDownloadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;ZZ)V
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addDownloadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    .line 107
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    if-eqz p6, :cond_4

    if-eqz p2, :cond_4

    .line 108
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    if-eq p4, p1, :cond_0

    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    if-ne p4, p1, :cond_4

    :cond_0
    const/4 p1, 0x1

    .line 109
    sget-object p5, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    if-ne p4, p5, :cond_1

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_4

    .line 110
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    new-instance p4, Lcom/ss/android/socialbase/downloader/impls/a$6;

    invoke-direct {p4, p0, p3, p2}, Lcom/ss/android/socialbase/downloader/impls/a$6;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const p6, 0x8000

    .line 111
    invoke-static {p6}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p6

    if-eqz p6, :cond_4

    .line 112
    iget-object p6, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {p6, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p6

    if-eqz p6, :cond_4

    .line 113
    invoke-virtual {p6}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_4

    .line 114
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-nez v0, :cond_3

    .line 115
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {v0, p6}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 116
    iget-object p6, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p6, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_3
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->addDownloadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract a(IJ)V
.end method

.method public declared-synchronized a(ILcom/ss/android/socialbase/downloader/depend/z;)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setNotificationEventListener(Lcom/ss/android/socialbase/downloader/depend/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract a(ILcom/ss/android/socialbase/downloader/model/DownloadTask;)V
.end method

.method public a(Landroid/os/Message;)V
    .locals 5

    .line 159
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 160
    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "AbsDownloadEngine"

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMsg id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " listener hasCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Exception;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 163
    check-cast v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 164
    :goto_0
    monitor-enter p0

    if-nez v1, :cond_1

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    goto :goto_1

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 168
    monitor-exit p0

    return-void

    .line 169
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3, v2, v4}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 170
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(III)V

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract a(Lcom/ss/android/socialbase/downloader/h/c;)V
.end method

.method public declared-synchronized a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 44
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 45
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 46
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getEnqueueType()Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/EnqueueType;->ENQUEUE_NONE:Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    if-eq v0, v1, :cond_2

    .line 47
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/high16 v0, 0x100000

    .line 87
    :try_start_0
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 91
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-nez v3, :cond_1

    goto :goto_2

    .line 92
    :cond_1
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 93
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 94
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAutoResumed(Z)V

    .line 97
    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setShowNotificationForNetworkResumed(Z)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 99
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_4
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public abstract a(I)Z
.end method

.method public declared-synchronized a(IZ)Z
    .locals 7

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    const/high16 v1, 0x10000

    if-nez v0, :cond_0

    .line 62
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 64
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    const-string v4, "fix_on_cancel_call_twice"

    invoke-virtual {v3, v4, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    new-instance v3, Lcom/ss/android/socialbase/downloader/downloader/f;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    invoke-direct {v3, v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/f;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 66
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->c()V

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    .line 68
    sget-object v4, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/f;)Landroid/util/SparseArray;

    move-result-object v4

    .line 69
    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/f;)Landroid/util/SparseArray;

    move-result-object v0

    .line 70
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    new-instance v6, Lcom/ss/android/socialbase/downloader/impls/a$1;

    invoke-direct {v6, p0, v4, v3, v0}, Lcom/ss/android/socialbase/downloader/impls/a$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Landroid/util/SparseArray;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 72
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v1

    const/4 v3, -0x4

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 76
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 44
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public b()V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract b(I)V
.end method

.method public declared-synchronized b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V
    .locals 7

    monitor-enter p0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 36
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(IJ)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p2, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setThrottleNetSpeed(J)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IJ)V

    return-void
.end method

.method public b(IZ)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/a$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/a$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a$3;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->b(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 11
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 14
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-nez v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-direct {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAutoResumed(Z)V

    .line 20
    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setShowNotificationForNetworkResumed(Z)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 22
    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 23
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    const/4 v4, 0x2

    .line 24
    invoke-interface {v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected abstract c(I)Lcom/ss/android/socialbase/downloader/h/c;
.end method

.method public c(IZ)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/a$4;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a$4;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/a$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a$5;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public declared-synchronized d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "AbsDownloadEngine"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 4
    monitor-exit p0

    return v1

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(I)V

    .line 7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 8
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_3

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/f;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 10
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    monitor-exit p0

    return v2

    .line 12
    :cond_1
    :try_start_4
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 13
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_3

    .line 15
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/f;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Lcom/ss/android/socialbase/downloader/h/h;

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 16
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 17
    monitor-exit p0

    return v2

    .line 18
    :cond_2
    :try_start_5
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x2

    .line 19
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 20
    monitor-exit p0

    return v2

    .line 21
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 22
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->g(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 6
    monitor-exit p0

    return p1

    .line 7
    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(I)Lcom/ss/android/socialbase/downloader/depend/af;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(I)Lcom/ss/android/socialbase/downloader/depend/z;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getNotificationEventListener()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getFileUriProvider()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(I)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canStartRetryDelayTask()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->k:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canStartRetryDelayTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canReStartAsyncTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setForceIgnoreRecommendSize(Z)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n(I)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method
