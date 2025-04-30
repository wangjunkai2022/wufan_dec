.class public Lcom/join/mgps/dto/ShareGameTodayData;
.super Ljava/lang/Object;
.source "ShareGameTodayData.java"


# instance fields
.field gameid1:Ljava/lang/String;

.field gameid2:Ljava/lang/String;

.field gameid3:Ljava/lang/String;

.field hasShare:Z

.field lastTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/ShareGameTodayData;->hasShare:Z

    return-void
.end method


# virtual methods
.method public getGameid1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareGameTodayData;->gameid1:Ljava/lang/String;

    return-object v0
.end method

.method public getGameid2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareGameTodayData;->gameid2:Ljava/lang/String;

    return-object v0
.end method

.method public getGameid3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareGameTodayData;->gameid3:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ShareGameTodayData;->lastTime:J

    return-wide v0
.end method

.method public isHasShare()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ShareGameTodayData;->hasShare:Z

    return v0
.end method

.method public setGameid1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareGameTodayData;->gameid1:Ljava/lang/String;

    return-void
.end method

.method public setGameid2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareGameTodayData;->gameid2:Ljava/lang/String;

    return-void
.end method

.method public setGameid3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareGameTodayData;->gameid3:Ljava/lang/String;

    return-void
.end method

.method public setHasShare(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ShareGameTodayData;->hasShare:Z

    return-void
.end method

.method public setLastTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ShareGameTodayData;->lastTime:J

    return-void
.end method
