.class public Lcom/papa/sim/statistic/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private androidId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private articleId:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private gameId:J

.field private gdevid:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private pageVersion:I

.field private plugId:I

.field private sdkInt:I

.field private uid:Ljava/lang/String;

.field private umengid:Ljava/lang/String;

.field private wfuuid:Ljava/lang/String;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/papa/sim/statistic/Where;->index:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/Data;->where:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/papa/sim/statistic/Data;->plugId:I

    .line 4
    iput v0, p0, Lcom/papa/sim/statistic/Data;->pageVersion:I

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/Data;->gameId:J

    return-wide v0
.end method

.method public getGdevid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->gdevid:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public getPageVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Data;->pageVersion:I

    return v0
.end method

.method public getPlugId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Data;->plugId:I

    return v0
.end method

.method public getSdkInt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Data;->sdkInt:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUmengid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->umengid:Ljava/lang/String;

    return-object v0
.end method

.method public getWfuuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->wfuuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Data;->where:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->androidId:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->articleId:Ljava/lang/String;

    return-object p0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->brand:Ljava/lang/String;

    return-void
.end method

.method public setGameId(J)Lcom/papa/sim/statistic/Data;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/Data;->gameId:J

    return-object p0
.end method

.method public setGdevid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->gdevid:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->imei:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->location:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->mac:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->model:Ljava/lang/String;

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setPageVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Data;->pageVersion:I

    return-void
.end method

.method public setPlugId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Data;->plugId:I

    return-void
.end method

.method public setSdkInt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Data;->sdkInt:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUmengid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->umengid:Ljava/lang/String;

    return-void
.end method

.method public setWfuuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->wfuuid:Ljava/lang/String;

    return-void
.end method

.method public setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Data;->where:Ljava/lang/String;

    return-object p0
.end method
