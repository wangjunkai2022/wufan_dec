.class public Lcom/join/mgps/dto/RankingGameBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "RankingGameBean.java"


# instance fields
.field private index:I

.field private task:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RankingGameBean;->index:I

    return v0
.end method

.method public getTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RankingGameBean;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RankingGameBean;->index:I

    return-void
.end method

.method public setTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RankingGameBean;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method
