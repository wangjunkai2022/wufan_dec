.class Lcom/ss/android/socialbase/downloader/downloader/b;
.super Ljava/lang/Object;
.source "BaseDownloader.java"


# instance fields
.field private globalDefaultSavePath:Ljava/lang/String;

.field private globalDefaultSaveTempPath:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getGlobalSaveDir(Ljava/lang/String;Z)Ljava/io/File;
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    move-object v1, v0

    :catchall_1
    move-object v0, v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    .line 2
    new-instance p0, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public addNotificationListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public addSubThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public canResume(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->e(I)Z

    move-result p1

    return p1
.end method

.method public cancel(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->cancel(IZ)V

    return-void
.end method

.method public cancel(IZ)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->c(IZ)V

    return-void
.end method

.method public clearDownloadData(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/d;->d(IZ)V

    return-void
.end method

.method public clearDownloadData(IZ)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->d(IZ)V

    return-void
.end method

.method public destoryDownloader()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()V

    return-void
.end method

.method public forceDownloadIngoreRecommendSize(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->n(I)V

    return-void
.end method

.method public getAllDownloadInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurBytes(I)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->h(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadFileUriProvider(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->r(I)Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->k(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadNotificationEventListener(I)Lcom/ss/android/socialbase/downloader/depend/z;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->l(I)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadingDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFailedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGlobalSaveDir()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/b;->globalDefaultSavePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->getGlobalSaveDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSaveTempDir()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/b;->globalDefaultSaveTempPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->getGlobalSaveDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/r;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->Q()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    return-object v0
.end method

.method public getStatus(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->i(I)I

    move-result p1

    return p1
.end method

.method public getSuccessedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUnCompletedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isDownloadCacheSyncSuccess()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()Z

    move-result v0

    return v0
.end method

.method public isDownloadServiceForeground(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->c(I)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->b()Z

    move-result p1

    return p1
.end method

.method public isDownloadSuccessAndFileNotExist(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public isDownloading(I)Z
    .locals 1

    const/high16 v0, 0x400000

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->j(I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->j(I)Z

    move-result p1

    return p1
.end method

.method public isHttpServiceInit()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->d()Z

    move-result v0

    return v0
.end method

.method public pause(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->d(I)V

    return-void
.end method

.method public pauseAll()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    return-void
.end method

.method public registerDownloadCacheSyncListener(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/depend/k;)V

    return-void
.end method

.method public registerDownloaderProcessConnectedListener(Lcom/ss/android/socialbase/downloader/depend/ac;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/depend/ac;)V

    return-void
.end method

.method public removeMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public removeNotificationListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public removeSubThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public removeTaskMainListener(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public removeTaskNotificationListener(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public removeTaskSubListener(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public restart(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->g(I)V

    return-void
.end method

.method public restartAllFailedDownloadTasks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public restartAllPauseReserveOnWifiDownloadTasks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(Ljava/util/List;)V

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->f(I)V

    return-void
.end method

.method public setDefaultSavePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/b;->globalDefaultSavePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDefaultSaveTempPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/b;->globalDefaultSaveTempPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDownloadInMultiProcess()V
    .locals 1

    const/high16 v0, 0x400000

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->b()V

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->b()V

    :goto_0
    return-void
.end method

.method public setDownloadNotificationEventListener(ILcom/ss/android/socialbase/downloader/depend/z;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(ILcom/ss/android/socialbase/downloader/depend/z;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->p(I)V

    return-void
.end method

.method public setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public setMainThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Z)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;ZZ)V

    return-void
.end method

.method public setNotificationListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public setReserveWifiStatusListener(Lcom/ss/android/socialbase/downloader/downloader/r;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)V

    return-void
.end method

.method public setSubThreadListener(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(ILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/f;Z)V

    return-void
.end method

.method public setThrottleNetSpeed(IJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(IJ)V

    return-void
.end method

.method public unRegisterDownloadCacheSyncListener(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(Lcom/ss/android/socialbase/downloader/depend/k;)V

    return-void
.end method

.method public unRegisterDownloaderProcessConnectedListener(Lcom/ss/android/socialbase/downloader/depend/ac;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->b(Lcom/ss/android/socialbase/downloader/depend/ac;)V

    return-void
.end method
