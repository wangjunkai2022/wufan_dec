.class public Lcom/papa/sim/statistic/StatRequest;
.super Ljava/lang/Object;
.source "StatRequest.java"


# instance fields
.field private ad:I

.field private countType:I

.field private data:Lcom/papa/sim/statistic/Data;

.field private debug:Z

.field private deviceId:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private ext:Lcom/papa/sim/statistic/Ext;

.field private id:I

.field private isNew:Z

.field private isRequest:Z

.field private mac:Ljava/lang/String;

.field private time:J

.field private uid:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa/sim/statistic/StatRequest;->uid:I

    .line 3
    iput-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->isNew:Z

    .line 4
    iput-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->isRequest:Z

    .line 5
    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iput-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->data:Lcom/papa/sim/statistic/Data;

    .line 6
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iput-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->ext:Lcom/papa/sim/statistic/Ext;

    return-void
.end method


# virtual methods
.method public getAd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatRequest;->ad:I

    return v0
.end method

.method public getCountType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatRequest;->countType:I

    return v0
.end method

.method public getData()Lcom/papa/sim/statistic/Data;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->data:Lcom/papa/sim/statistic/Data;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Lcom/papa/sim/statistic/Ext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->ext:Lcom/papa/sim/statistic/Ext;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatRequest;->id:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/StatRequest;->time:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatRequest;->uid:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->debug:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->isNew:Z

    return v0
.end method

.method public isRequest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->isRequest:Z

    return v0
.end method

.method public setAd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatRequest;->ad:I

    return-void
.end method

.method public setCountType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatRequest;->countType:I

    return-void
.end method

.method public setData(Lcom/papa/sim/statistic/Data;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->data:Lcom/papa/sim/statistic/Data;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/StatRequest;->debug:Z

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->event:Ljava/lang/String;

    return-void
.end method

.method public setExt(Lcom/papa/sim/statistic/Ext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->ext:Lcom/papa/sim/statistic/Ext;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatRequest;->id:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->mac:Ljava/lang/String;

    return-void
.end method

.method public setNew(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/StatRequest;->isNew:Z

    return-void
.end method

.method public setRequest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/StatRequest;->isRequest:Z

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/StatRequest;->time:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatRequest;->uid:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->version:Ljava/lang/String;

    return-void
.end method
