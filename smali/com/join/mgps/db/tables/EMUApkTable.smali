.class public Lcom/join/mgps/db/tables/EMUApkTable;
.super Ljava/lang/Object;
.source "EMUApkTable.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private apkPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private apk_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private canUpdate:Z

.field private down_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private downloadFinish:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private isArena:Z

.field private launch_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private logo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private notUpdateversion:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private package_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private release_date:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private size:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tag_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private team_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver_compatible:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/ApkVersionbean;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getApk_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setApk_name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_url(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setLaunch_name(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setLogo(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setPackage_name(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setRelease_date(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setSize(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setTag_id(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setTeam_info(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_compatible(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setVer_info(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setDown_type(I)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/EMUApkTable;->setRemark(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApkPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getApk_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->apk_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->down_type:I

    return v0
.end method

.method public getDown_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadFinish()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->downloadFinish:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->id:I

    return v0
.end method

.method public getLaunch_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->launch_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getNotUpdateversion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->notUpdateversion:I

    return v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->release_date:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTeam_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->team_info:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v2, v0

    if-lez v2, :cond_0

    .line 4
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getVerName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 4
    aget-object v0, v0, v3

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getVer_compatible()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver_compatible:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver_info:Ljava/lang/String;

    return-object v0
.end method

.method public isArena()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->isArena:Z

    return v0
.end method

.method public isCanUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/EMUApkTable;->canUpdate:Z

    return v0
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->apkPath:Ljava/lang/String;

    return-void
.end method

.method public setApk_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->apk_name:Ljava/lang/String;

    return-void
.end method

.method public setArena(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->isArena:Z

    return-void
.end method

.method public setCanUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->canUpdate:Z

    return-void
.end method

.method public setDown_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->down_type:I

    return-void
.end method

.method public setDown_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->down_url:Ljava/lang/String;

    return-void
.end method

.method public setDownloadFinish(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->downloadFinish:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->id:I

    return-void
.end method

.method public setLaunch_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->launch_name:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNotUpdateversion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->notUpdateversion:I

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setRelease_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->release_date:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->size:Ljava/lang/String;

    return-void
.end method

.method public setTag_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->tag_id:Ljava/lang/String;

    return-void
.end method

.method public setTeam_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->team_info:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_compatible(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver_compatible:Ljava/lang/String;

    return-void
.end method

.method public setVer_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkTable;->ver_info:Ljava/lang/String;

    return-void
.end method
