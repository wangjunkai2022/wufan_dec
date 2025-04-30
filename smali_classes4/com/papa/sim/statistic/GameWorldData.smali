.class public Lcom/papa/sim/statistic/GameWorldData;
.super Ljava/lang/Object;
.source "GameWorldData.java"


# instance fields
.field private gameId:I

.field private iconFile:Ljava/lang/String;

.field private recordFile:Ljava/lang/String;

.field private rid:I

.field private uid:I

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/GameWorldData;->gameId:I

    return v0
.end method

.method public getIconFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/GameWorldData;->iconFile:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/GameWorldData;->recordFile:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/GameWorldData;->rid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/GameWorldData;->uid:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/GameWorldData;->updateTime:J

    return-wide v0
.end method

.method public setGameId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/GameWorldData;->gameId:I

    return-void
.end method

.method public setIconFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/GameWorldData;->iconFile:Ljava/lang/String;

    return-void
.end method

.method public setRecordFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/GameWorldData;->recordFile:Ljava/lang/String;

    return-void
.end method

.method public setRid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/GameWorldData;->rid:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/GameWorldData;->uid:I

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/GameWorldData;->updateTime:J

    return-void
.end method
