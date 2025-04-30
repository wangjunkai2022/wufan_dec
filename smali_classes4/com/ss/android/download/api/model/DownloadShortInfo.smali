.class public Lcom/ss/android/download/api/model/DownloadShortInfo;
.super Ljava/lang/Object;
.source "DownloadShortInfo.java"


# instance fields
.field public currentBytes:J

.field public failStatus:I

.field public fileName:Ljava/lang/String;

.field public id:J

.field public onlyWifi:Z

.field public status:I

.field public totalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->id:J

    const/4 v2, -0x1

    .line 3
    iput v2, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->status:I

    .line 4
    iput-wide v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    .line 5
    iput-wide v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->failStatus:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 2
    check-cast p1, Lcom/ss/android/download/api/model/DownloadShortInfo;

    .line 3
    iget-wide v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->id:J

    iget-wide v2, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->id:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->status:I

    iget v2, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->status:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-wide v2, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    iget-wide v6, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    cmp-long v8, v2, v6

    if-nez v8, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_2
    iget-object v3, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    return v4

    .line 10
    :cond_7
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public updateFromNewDownloadInfo(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->id:J

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->status:I

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->currentBytes:J

    .line 4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->totalBytes:J

    .line 5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->fileName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedException()Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->failStatus:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->failStatus:I

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/download/api/model/DownloadShortInfo;->onlyWifi:Z

    return-void
.end method
