.class public Lcom/papa/sim/statistic/StatJsonRawData;
.super Ljava/lang/Object;
.source "StatJsonRawData.java"


# instance fields
.field private articleId:Ljava/lang/String;

.field private delay_avg:I

.field private delay_max:I

.field private duration:J

.field private from:Ljava/lang/String;

.field private gameFlag:I

.field private gameId:J

.field private interrupt:I

.field private ip:Ljava/lang/String;

.field private logfile:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private roomid:Ljava/lang/String;

.field private uid:I

.field private where:Ljava/lang/String;

.field private zipCost:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDelay_avg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->delay_avg:I

    return v0
.end method

.method public getDelay_max()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->delay_max:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->duration:J

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getGameFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->gameFlag:I

    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->gameId:J

    return-wide v0
.end method

.method public getInterrupt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->interrupt:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLogfile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->logfile:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->roomid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->uid:I

    return v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->where:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCost()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/StatJsonRawData;->zipCost:J

    return-wide v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->articleId:Ljava/lang/String;

    return-void
.end method

.method public setDelay_avg(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->delay_avg:I

    return-void
.end method

.method public setDelay_max(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->delay_max:I

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->duration:J

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->from:Ljava/lang/String;

    return-void
.end method

.method public setGameFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->gameFlag:I

    return-void
.end method

.method public setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->gameId:J

    return-void
.end method

.method public setInterrupt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->interrupt:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->ip:Ljava/lang/String;

    return-void
.end method

.method public setLogfile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->logfile:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->position:Ljava/lang/String;

    return-void
.end method

.method public setRoomid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->roomid:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->uid:I

    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->where:Ljava/lang/String;

    return-void
.end method

.method public setZipCost(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/StatJsonRawData;->zipCost:J

    return-void
.end method
