.class public abstract Lcom/ss/android/socialbase/downloader/depend/d;
.super Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;
.source "AbsNotificationListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;-><init>()V

    return-void
.end method

.method private a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/d;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 4
    :cond_2
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    const/4 v1, -0x3

    if-ne p1, v1, :cond_3

    .line 5
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 7
    :goto_0
    invoke-virtual {v0, p1, p3, p4}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/d;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canShowNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/depend/d;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/a;->a(JJ)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/ss/android/socialbase/downloader/notification/a;
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 9
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/depend/d;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;->onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ss/android/socialbase/downloader/depend/d;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;->onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/depend/d;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;->onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/d;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, v1, v0}, Lcom/ss/android/socialbase/downloader/depend/d;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;->onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method public onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;->onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/depend/d;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method

.method public onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;->onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/depend/d;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V

    return-void
.end method
