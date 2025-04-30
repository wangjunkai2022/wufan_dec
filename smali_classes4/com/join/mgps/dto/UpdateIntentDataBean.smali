.class public Lcom/join/mgps/dto/UpdateIntentDataBean;
.super Ljava/lang/Object;
.source "UpdateIntentDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private emuApkTable:Lcom/join/mgps/db/tables/EMUApkTable;

.field private isFight:Z

.field private peizhiMustUpdate:Z

.field private peizhiNewUpdate:Z

.field private romeMustUpdate:Z

.field private romeNewUpdate:Z

.field private sourceMustUpdate:Z

.field private sourceNewUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZZZZLcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->romeMustUpdate:Z

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->romeNewUpdate:Z

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->peizhiMustUpdate:Z

    .line 6
    iput-boolean p4, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->peizhiNewUpdate:Z

    .line 7
    iput-boolean p5, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->sourceMustUpdate:Z

    .line 8
    iput-boolean p6, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->sourceNewUpdate:Z

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->emuApkTable:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 11
    iput-boolean p9, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->isFight:Z

    return-void
.end method


# virtual methods
.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object v0
.end method

.method public getEmuApkTable()Lcom/join/mgps/db/tables/EMUApkTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->emuApkTable:Lcom/join/mgps/db/tables/EMUApkTable;

    return-object v0
.end method

.method public isFight()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->isFight:Z

    return v0
.end method

.method public isPeizhiMustUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->peizhiMustUpdate:Z

    return v0
.end method

.method public isPeizhiNewUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->peizhiNewUpdate:Z

    return v0
.end method

.method public isRomeMustUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->romeMustUpdate:Z

    return v0
.end method

.method public isRomeNewUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->romeNewUpdate:Z

    return v0
.end method

.method public isSourceMustUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->sourceMustUpdate:Z

    return v0
.end method

.method public isSourceNewUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->sourceNewUpdate:Z

    return v0
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method public setEmuApkTable(Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->emuApkTable:Lcom/join/mgps/db/tables/EMUApkTable;

    return-void
.end method

.method public setFight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->isFight:Z

    return-void
.end method

.method public setPeizhiMustUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->peizhiMustUpdate:Z

    return-void
.end method

.method public setPeizhiNewUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->peizhiNewUpdate:Z

    return-void
.end method

.method public setRomeMustUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->romeMustUpdate:Z

    return-void
.end method

.method public setRomeNewUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->romeNewUpdate:Z

    return-void
.end method

.method public setSourceMustUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->sourceMustUpdate:Z

    return-void
.end method

.method public setSourceNewUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/UpdateIntentDataBean;->sourceNewUpdate:Z

    return-void
.end method
