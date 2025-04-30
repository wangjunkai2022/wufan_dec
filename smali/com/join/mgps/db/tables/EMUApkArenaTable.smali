.class public Lcom/join/mgps/db/tables/EMUApkArenaTable;
.super Ljava/lang/Object;
.source "EMUApkArenaTable.java"

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

.field private launch_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private logo:Ljava/lang/String;
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

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApk_name(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_url(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getLaunch_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLaunch_name(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setLogo(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setPackage_name(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getRelease_date()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRelease_date(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setSize(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTag_id(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getTeam_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setTeam_info(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_compatible(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setVer_info(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_type()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setDown_type(I)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ApkVersionbean;->getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setRemark(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApkPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getApk_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->apk_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->down_type:I

    return v0
.end method

.method public getDown_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadFinish()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->downloadFinish:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->id:I

    return v0
.end method

.method public getLaunch_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->launch_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->release_date:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTeam_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->team_info:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_compatible()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->ver_compatible:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->ver_info:Ljava/lang/String;

    return-object v0
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->apkPath:Ljava/lang/String;

    return-void
.end method

.method public setApk_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->apk_name:Ljava/lang/String;

    return-void
.end method

.method public setDown_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->down_type:I

    return-void
.end method

.method public setDown_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->down_url:Ljava/lang/String;

    return-void
.end method

.method public setDownloadFinish(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->downloadFinish:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->id:I

    return-void
.end method

.method public setLaunch_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->launch_name:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->logo:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setRelease_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->release_date:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->size:Ljava/lang/String;

    return-void
.end method

.method public setTag_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->tag_id:Ljava/lang/String;

    return-void
.end method

.method public setTeam_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->team_info:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_compatible(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->ver_compatible:Ljava/lang/String;

    return-void
.end method

.method public setVer_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/EMUApkArenaTable;->ver_info:Ljava/lang/String;

    return-void
.end method
