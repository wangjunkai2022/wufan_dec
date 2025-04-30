.class public Lcom/papa/sim/statistic/Ext;
.super Ljava/lang/Object;
.source "Ext.java"


# instance fields
.field private aaid:Ljava/lang/String;

.field private apkCount:I

.field private articleId:Ljava/lang/String;

.field private btn:Ljava/lang/String;

.field private channel_id:I

.field private delayAvg:I

.field private delayMax:I

.field private duration:J

.field private emuCount:I

.field private fightId:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private fromTabId:Ljava/lang/String;

.field private gameFlag:I

.field private gameId:Ljava/lang/String;

.field private gameList:Ljava/lang/String;

.field private interrupt:I

.field private ip:Ljava/lang/String;

.field private isAutoRefresh:I

.field private isdirect:I

.field private keyWord:Ljava/lang/String;

.field private liveTime:J

.field private location:Ljava/lang/String;

.field private logFile:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private netType:I

.field private nodeId:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private picName:Ljava/lang/String;

.field private plugId:Ljava/lang/String;

.field private plugVersion:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private reMarks:Ljava/lang/String;

.field private reMarks1:Ljava/lang/String;

.field private recPosition:Ljava/lang/String;

.field private recScene:Ljava/lang/String;

.field private recTid:Ljava/lang/String;

.field private recVersion:Ljava/lang/String;

.field private roomID:Ljava/lang/String;

.field private shareMfr:I

.field private shareResult:I

.field private shareType:I

.field private type:Lcom/papa/sim/statistic/ExtType;

.field private uid:I

.field private uid2:Ljava/lang/String;

.field private vaid:Ljava/lang/String;

.field private zipCost:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/papa/sim/statistic/ExtFrom;->platform:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/sim/statistic/Ext;->from:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->aaid:Ljava/lang/String;

    return-object v0
.end method

.method public getApkCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->apkCount:I

    return v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBtn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->btn:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->channel_id:I

    return v0
.end method

.method public getDelayAvg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->delayAvg:I

    return v0
.end method

.method public getDelayMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->delayMax:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/Ext;->duration:J

    return-wide v0
.end method

.method public getEmuCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->emuCount:I

    return v0
.end method

.method public getFightId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->fightId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getFromTabId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->fromTabId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->gameFlag:I

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->gameList:Ljava/lang/String;

    return-object v0
.end method

.method public getInterrupt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->interrupt:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAutoRefresh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->isAutoRefresh:I

    return v0
.end method

.method public getIsdirect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->isdirect:I

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/Ext;->liveTime:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLogFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->logFile:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->netType:I

    return v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getPicName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->picName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->plugId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->plugVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getReMarks()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->reMarks:Ljava/lang/String;

    return-object v0
.end method

.method public getReMarks1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->reMarks1:Ljava/lang/String;

    return-object v0
.end method

.method public getRecPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->recPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getRecScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->recScene:Ljava/lang/String;

    return-object v0
.end method

.method public getRecTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->recTid:Ljava/lang/String;

    return-object v0
.end method

.method public getRecVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->recVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->roomID:Ljava/lang/String;

    return-object v0
.end method

.method public getShareMfr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->shareMfr:I

    return v0
.end method

.method public getShareResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->shareResult:I

    return v0
.end method

.method public getShareType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->shareType:I

    return v0
.end method

.method public getType()Lcom/papa/sim/statistic/ExtType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->type:Lcom/papa/sim/statistic/ExtType;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/Ext;->uid:I

    return v0
.end method

.method public getUid2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->uid2:Ljava/lang/String;

    return-object v0
.end method

.method public getVaid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/Ext;->vaid:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCost()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/Ext;->zipCost:J

    return-wide v0
.end method

.method public setAaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->aaid:Ljava/lang/String;

    return-void
.end method

.method public setApkCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->apkCount:I

    return-void
.end method

.method public setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->articleId:Ljava/lang/String;

    return-object p0
.end method

.method public setBtn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->btn:Ljava/lang/String;

    return-void
.end method

.method public setChannel_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->channel_id:I

    return-void
.end method

.method public setDelayAvg(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->delayAvg:I

    return-void
.end method

.method public setDelayMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->delayMax:I

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/Ext;->duration:J

    return-void
.end method

.method public setEmuCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->emuCount:I

    return-void
.end method

.method public setFightId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->fightId:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->from:Ljava/lang/String;

    return-object p0
.end method

.method public setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->fromTabId:Ljava/lang/String;

    return-object p0
.end method

.method public setGameFlag(I)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->gameFlag:I

    return-object p0
.end method

.method public setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->gameId:Ljava/lang/String;

    return-object p0
.end method

.method public setGameList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->gameList:Ljava/lang/String;

    return-void
.end method

.method public setInterrupt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->interrupt:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->ip:Ljava/lang/String;

    return-void
.end method

.method public setIsAutoRefresh(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->isAutoRefresh:I

    return-void
.end method

.method public setIsdirect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->isdirect:I

    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->keyWord:Ljava/lang/String;

    return-void
.end method

.method public setLiveTime(J)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/Ext;->liveTime:J

    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->location:Ljava/lang/String;

    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->logFile:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->mode:Ljava/lang/String;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->module:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->name:Ljava/lang/String;

    return-void
.end method

.method public setNetType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->netType:I

    return-void
.end method

.method public setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->nodeId:Ljava/lang/String;

    return-object p0
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->page:Ljava/lang/String;

    return-void
.end method

.method public setPicName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->picName:Ljava/lang/String;

    return-void
.end method

.method public setPlugId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->plugId:Ljava/lang/String;

    return-void
.end method

.method public setPlugVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->plugVersion:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->position:Ljava/lang/String;

    return-object p0
.end method

.method public setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->reMarks:Ljava/lang/String;

    return-object p0
.end method

.method public setReMarks1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->reMarks1:Ljava/lang/String;

    return-void
.end method

.method public setRecPosition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->recPosition:Ljava/lang/String;

    return-void
.end method

.method public setRecScene(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->recScene:Ljava/lang/String;

    return-void
.end method

.method public setRecTid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->recTid:Ljava/lang/String;

    return-void
.end method

.method public setRecVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->recVersion:Ljava/lang/String;

    return-void
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->roomID:Ljava/lang/String;

    return-void
.end method

.method public setShareMfr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->shareMfr:I

    return-void
.end method

.method public setShareResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->shareResult:I

    return-void
.end method

.method public setShareType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->shareType:I

    return-void
.end method

.method public setType(Lcom/papa/sim/statistic/ExtType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->type:Lcom/papa/sim/statistic/ExtType;

    return-void
.end method

.method public setUid(I)Lcom/papa/sim/statistic/Ext;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/Ext;->uid:I

    return-object p0
.end method

.method public setUid2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->uid2:Ljava/lang/String;

    return-void
.end method

.method public setVaid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/Ext;->vaid:Ljava/lang/String;

    return-void
.end method

.method public setZipCost(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/Ext;->zipCost:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ext{uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/sim/statistic/Ext;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/Ext;->type:Lcom/papa/sim/statistic/ExtType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa/sim/statistic/Ext;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
