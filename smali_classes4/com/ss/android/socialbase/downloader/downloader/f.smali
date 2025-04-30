.class public Lcom/ss/android/socialbase/downloader/downloader/f;
.super Ljava/lang/Object;
.source "DownloadStatusHandler.java"


# static fields
.field private static final a:Ljava/lang/String; = "f"


# instance fields
.field private final b:Z

.field private c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final d:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private volatile k:J

.field private final l:Ljava/util/concurrent/atomic/AtomicLong;

.field private m:Z

.field private n:I

.field private o:J

.field private p:Lcom/ss/android/socialbase/downloader/depend/n;

.field private q:Lcom/ss/android/socialbase/downloader/depend/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->j:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->k:J

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->m:Z

    .line 6
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->j()V

    .line 8
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->e:Landroid/os/Handler;

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->x()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 10
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string p2, "fix_start_with_file_exist_update_error"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->b:Z

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->b:Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-object p0
.end method

.method private a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 1

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method private a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x3

    if-ne v0, v2, :cond_0

    if-ne p1, v1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->j()V

    if-eq p1, v1, :cond_1

    .line 53
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isRealTimeUploadStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 55
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isTimeUploadStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateDownloadTime()V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAddListenerToSameTask()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-static {v1, p2, p1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x6

    if-ne p1, v1, :cond_4

    .line 60
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    goto :goto_0

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :goto_0
    if-eq v0, v2, :cond_5

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayStatus()Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->c:Lcom/ss/android/socialbase/downloader/constants/g;

    if-ne v0, v1, :cond_6

    .line 63
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/g;->d:Lcom/ss/android/socialbase/downloader/constants/g;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setRetryDelayStatus(Lcom/ss/android/socialbase/downloader/constants/g;)V

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAsyncHandleStatus()Lcom/ss/android/socialbase/downloader/constants/a;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->d:Lcom/ss/android/socialbase/downloader/constants/a;

    if-ne v0, v1, :cond_7

    .line 65
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->e:Lcom/ss/android/socialbase/downloader/constants/a;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAsyncHandleStatus(Lcom/ss/android/socialbase/downloader/constants/a;)V

    .line 66
    :cond_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->c:Lcom/ss/android/socialbase/downloader/constants/b;

    if-ne v0, v1, :cond_8

    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->d:Lcom/ss/android/socialbase/downloader/constants/b;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setByteInvalidRetryStatus(Lcom/ss/android/socialbase/downloader/constants/b;)V

    .line 68
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->h:Landroid/util/SparseArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {p1, v0, v1, v2, p2}, Lcom/ss/android/socialbase/downloader/i/c;->a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    const/4 v0, -0x4

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    if-eqz p3, :cond_c

    .line 69
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->e:Landroid/os/Handler;

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->g:Landroid/util/SparseArray;

    if-eqz p3, :cond_a

    .line 70
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-gtz p3, :cond_b

    :cond_a
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->i:Landroid/util/SparseArray;

    if-eqz p3, :cond_c

    .line 71
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-lez p3, :cond_c

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 72
    :cond_b
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getHashCodeForSameTask()I

    move-result v1

    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 73
    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 74
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getHashCodeForSameTask()I

    move-result v0

    invoke-virtual {p2, p3, v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(III)V

    :cond_d
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/f;ILcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method private a(JZ)Z
    .locals 4

    .line 43
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p2

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v2

    .line 46
    :cond_0
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->j:Z

    const/4 p2, 0x4

    if-eqz p1, :cond_1

    .line 47
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->j:Z

    .line 48
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_1
    const/4 p1, 0x0

    .line 49
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedPostProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, p2, p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return p3
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/downloader/downloader/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    return-object p0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleError::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->f(I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 13
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->f(I)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 15
    :goto_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFailedException(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 17
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/exception/e;

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 18
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 19
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "retry_schedule"

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    .line 21
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_2
    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    .line 29
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method private b(J)Z
    .locals 8

    .line 22
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 23
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->m:Z

    return v1

    .line 24
    :cond_0
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->k:J

    sub-long v2, p1, v2

    .line 25
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->o:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->n:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 26
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->k:J

    .line 27
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_3
    return v1
.end method

.method private c(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Lcom/ss/android/socialbase/downloader/exception/BaseException;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "download_failed_check_net"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->i(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 8
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3f5

    goto :goto_0

    :cond_0
    const/16 v1, 0x419

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/downloader/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->l()V

    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/f;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->g:Landroid/util/SparseArray;

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/f;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->i:Landroid/util/SparseArray;

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/f;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->h:Landroid/util/SparseArray;

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDepend()Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->p:Lcom/ss/android/socialbase/downloader/depend/n;

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->q:Lcom/ss/android/socialbase/downloader/depend/x;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/f$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/f$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    const-string v1, "saveFileAsTargetName onSuccess"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->m()V
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSuccess(Z)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    const/4 v0, -0x3

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->m(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x3f0

    const-string v3, "onCompleted"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/i/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 5
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/m;

    .line 7
    :try_start_0
    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/depend/m;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/depend/m;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 9
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x42f

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    .line 11
    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canSkipStatusHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->k()V

    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->seteTag(Ljava/lang/String;)V

    .line 8
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setName(Ljava/lang/String;)V

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 11
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p3, 0x3

    const/4 p4, 0x0

    .line 12
    invoke-direct {p0, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 13
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMinByteIntervalForPostToMainThread(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->o:J

    .line 14
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMinProgressTimeMsInterval()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->n:I

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->j:Z

    .line 16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/impls/r;->e()V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 30
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 2

    .line 25
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 26
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 27
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p3, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    :goto_0
    const/4 p3, 0x1

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleteForFileExist existTargetFileName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but curName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->b:Z

    const/4 v1, 0x0

    const/4 v2, -0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->m()V

    .line 35
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 36
    invoke-direct {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 37
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 39
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 41
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->m()V

    .line 42
    invoke-direct {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :goto_0
    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseCurBytes(J)V

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(J)Z

    move-result v0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(JZ)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canSkipStatusHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->changeSkipStatus()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    :cond_1
    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, -0x4

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/j;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v1, 0x403

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current bytes is not equals to total bytes, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 6
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v1, 0x402

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curBytes is 0, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 9
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v1, 0x414

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalBytes is 0, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void

    .line 11
    :cond_2
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onCompleted start save file as target name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->q:Lcom/ss/android/socialbase/downloader/depend/x;

    .line 13
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v0

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/f$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/downloader/f$2;-><init>(Lcom/ss/android/socialbase/downloader/downloader/f;)V

    invoke-static {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/depend/ai;)V

    return-void
.end method

.method public g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->b:Z

    const/4 v1, 0x0

    const/4 v2, -0x3

    const/4 v3, 0x1

    const-string v4, "onCompleteForFileExist"

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->m()V

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 5
    invoke-direct {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->m(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->m()V

    .line 11
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/f;->a:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSuccessByCache(Z)V

    .line 13
    invoke-direct {p0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->m(I)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/a;->b:Lcom/ss/android/socialbase/downloader/constants/a;

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAsyncHandleStatus(Lcom/ss/android/socialbase/downloader/constants/a;)V

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/f;->f:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getHashCodeForSameTask()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(III)V

    :cond_0
    return-void
.end method
