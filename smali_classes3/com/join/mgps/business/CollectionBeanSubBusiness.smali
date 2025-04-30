.class public Lcom/join/mgps/business/CollectionBeanSubBusiness;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "CollectionBeanSubBusiness.java"


# instance fields
.field private a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/business/CollectionBeanSubBusiness;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/DownloadPointBase;->setPosition_path(Lcom/psk/eventmodule/StatFactory$VolcanoOther;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/business/CollectionBeanSubBusiness;->c:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/business/CollectionBeanSubBusiness;->c:Z

    return-void
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/business/CollectionBeanSubBusiness;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public isHasExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/business/CollectionBeanSubBusiness;->b:Z

    return v0
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/business/CollectionBeanSubBusiness;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setHasExposure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/business/CollectionBeanSubBusiness;->b:Z

    return-void
.end method
