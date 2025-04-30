.class public Lcom/join/mgps/dto/CloudInfo;
.super Ljava/lang/Object;
.source "CloudInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/join/mgps/dto/CloudInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private isSelect:Z

.field private romArchivedNum:I

.field private romArchivedSize:J

.field private romArchiveds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/join/mgps/dto/CloudInfo;)I
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/CloudInfo;

    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/CloudInfo;->compareTo(Lcom/join/mgps/dto/CloudInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/CloudInfo;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dto/CloudInfo;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/join/mgps/dto/CloudInfo;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudInfo;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getRomArchivedNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudInfo;->romArchivedNum:I

    return v0
.end method

.method public getRomArchivedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CloudInfo;->romArchivedSize:J

    return-wide v0
.end method

.method public getRomArchiveds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudInfo;->romArchiveds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudInfo;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CloudInfo;->isSelect:Z

    return v0
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudInfo;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setRomArchivedNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudInfo;->romArchivedNum:I

    return-void
.end method

.method public setRomArchivedSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CloudInfo;->romArchivedSize:J

    return-void
.end method

.method public setRomArchiveds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudInfo;->romArchiveds:Ljava/util/List;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CloudInfo;->isSelect:Z

    return-void
.end method
