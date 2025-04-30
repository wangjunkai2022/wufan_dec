.class public Lcom/join/mgps/Util/StartGameMeta;
.super Ljava/lang/Object;
.source "StartGameMeta.java"


# instance fields
.field private RoomMode:I

.field private activityName:Ljava/lang/String;

.field private adDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;"
        }
    .end annotation
.end field

.field private allowPcJoin:Z

.field private allowPeripheralJoin:Z

.field private apkOrSo:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private archiveSaveCount:I

.field private archiveSaveTime:I

.field private area:Ljava/lang/String;

.field private assetspath:Ljava/lang/String;

.field private bios:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private cheat:I

.field private cheatEnable:I

.field private classname:Ljava/lang/String;

.field private clientIp:Ljava/lang/String;

.field private core:Ljava/lang/String;

.field public device_id:Ljava/lang/String;

.field private dnsJson:Ljava/lang/String;

.field private emuType:Ljava/lang/String;

.field private fastIP:Ljava/lang/String;

.field private fromCls:Ljava/lang/String;

.field private gameID:Ljava/lang/String;

.field private gamePlayers:I

.field private gametype:I

.field private groupId:I

.field private intentFrom:I

.field private netMode:I

.field private netPlayers:I

.field private netState:Ljava/lang/String;

.field private oldGame:I

.field private p1Name:Ljava/lang/String;

.field private p2Name:Ljava/lang/String;

.field private pa_package_name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private plugin_area_val:J

.field private porder:I

.field private pspAdShowTime:I

.field private pspAdShowTimeSwitch:I

.field private ramCheck:Ljava/lang/String;

.field private rankAutoUpload:I

.field private rankMiniTime:I

.field private rankingID:Ljava/lang/String;

.field private result_show_type:Ljava/lang/String;

.field private rolesJson:Ljava/lang/String;

.field private romPath:Ljava/lang/String;

.field private roomID:Ljava/lang/String;

.field private roomSilent:I

.field private sVipLevel:I

.field private serverIP:Ljava/lang/String;

.field private serverPort:Ljava/lang/String;

.field private sopath:Ljava/lang/String;

.field private sp:I

.field private startMode:I

.field private tagId:I

.field private tcptype:I

.field private token:Ljava/lang/String;

.field private tourist:Z

.field private type:I

.field private udpIP:Ljava/lang/String;

.field private udpport:I

.field private userID:Ljava/lang/String;

.field private userIcon:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private version:I

.field private vipLevel:I

.field private vip_expire_time:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPeripheralJoin:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPcJoin:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/join/mgps/Util/StartGameMeta;->intentFrom:I

    const/16 v2, 0xf

    .line 5
    iput v2, p0, Lcom/join/mgps/Util/StartGameMeta;->version:I

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/join/mgps/Util/StartGameMeta;->vip_expire_time:J

    const-string v2, ""

    .line 7
    iput-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->result_show_type:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->pa_package_name:Ljava/lang/String;

    .line 9
    iput v1, p0, Lcom/join/mgps/Util/StartGameMeta;->roomSilent:I

    .line 10
    iput-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->fastIP:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/join/mgps/Util/StartGameMeta;->gametype:I

    .line 12
    iput v0, p0, Lcom/join/mgps/Util/StartGameMeta;->cheatEnable:I

    .line 13
    iput v1, p0, Lcom/join/mgps/Util/StartGameMeta;->rankMiniTime:I

    .line 14
    iput v0, p0, Lcom/join/mgps/Util/StartGameMeta;->apkOrSo:I

    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->adDatas:Ljava/util/List;

    return-object v0
.end method

.method public getApkOrSo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->apkOrSo:I

    return v0
.end method

.method public getArchiveSaveCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->archiveSaveCount:I

    return v0
.end method

.method public getArchiveSaveTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->archiveSaveTime:I

    return v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetspath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->assetspath:Ljava/lang/String;

    return-object v0
.end method

.method public getBios()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->bios:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->cheat:I

    return v0
.end method

.method public getCheatEnable()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->cheatEnable:I

    return v0
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getCore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->core:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->dnsJson:Ljava/lang/String;

    return-object v0
.end method

.method public getEmuType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->emuType:Ljava/lang/String;

    return-object v0
.end method

.method public getFastIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->fastIP:Ljava/lang/String;

    return-object v0
.end method

.method public getFromCls()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->fromCls:Ljava/lang/String;

    return-object v0
.end method

.method public getGameID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->gameID:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePlayers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->gamePlayers:I

    return v0
.end method

.method public getGametype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->gametype:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->groupId:I

    return v0
.end method

.method public getIntentFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->intentFrom:I

    return v0
.end method

.method public getNetMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->netMode:I

    return v0
.end method

.method public getNetPlayers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->netPlayers:I

    return v0
.end method

.method public getNetState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->netState:Ljava/lang/String;

    return-object v0
.end method

.method public getOldGame()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->oldGame:I

    return v0
.end method

.method public getP1Name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->p1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getP2Name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->p2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPa_package_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->pa_package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_area_val()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/Util/StartGameMeta;->plugin_area_val:J

    return-wide v0
.end method

.method public getPorder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->porder:I

    return v0
.end method

.method public getPspAdShowTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->pspAdShowTime:I

    return v0
.end method

.method public getPspAdShowTimeSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->pspAdShowTimeSwitch:I

    return v0
.end method

.method public getRamCheck()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->ramCheck:Ljava/lang/String;

    return-object v0
.end method

.method public getRankAutoUpload()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->rankAutoUpload:I

    return v0
.end method

.method public getRankMiniTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->rankMiniTime:I

    return v0
.end method

.method public getRankingID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->rankingID:Ljava/lang/String;

    return-object v0
.end method

.method public getResult_show_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->result_show_type:Ljava/lang/String;

    return-object v0
.end method

.method public getRolesJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->rolesJson:Ljava/lang/String;

    return-object v0
.end method

.method public getRomPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->romPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->roomID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->RoomMode:I

    return v0
.end method

.method public getRoomSilent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->roomSilent:I

    return v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->serverIP:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->serverPort:Ljava/lang/String;

    return-object v0
.end method

.method public getSopath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->sopath:Ljava/lang/String;

    return-object v0
.end method

.method public getSp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->sp:I

    return v0
.end method

.method public getStartMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->startMode:I

    return v0
.end method

.method public getTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->tagId:I

    return v0
.end method

.method public getTcptype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->tcptype:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->type:I

    return v0
.end method

.method public getUdpIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->udpIP:Ljava/lang/String;

    return-object v0
.end method

.method public getUdpport()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->udpport:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->userIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/StartGameMeta;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->version:I

    return v0
.end method

.method public getVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->vipLevel:I

    return v0
.end method

.method public getVip_expire_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/Util/StartGameMeta;->vip_expire_time:J

    return-wide v0
.end method

.method public getsVipLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/StartGameMeta;->sVipLevel:I

    return v0
.end method

.method public isAllowPcJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPcJoin:Z

    return v0
.end method

.method public isAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPeripheralJoin:Z

    return v0
.end method

.method public isTourist()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/Util/StartGameMeta;->tourist:Z

    return v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setAdDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->adDatas:Ljava/util/List;

    return-void
.end method

.method public setAllowPcJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPcJoin:Z

    return-void
.end method

.method public setAllowPeripheralJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPeripheralJoin:Z

    return-void
.end method

.method public setApkOrSo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->apkOrSo:I

    return-void
.end method

.method public setArchiveSaveCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->archiveSaveCount:I

    return-void
.end method

.method public setArchiveSaveTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->archiveSaveTime:I

    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->area:Ljava/lang/String;

    return-void
.end method

.method public setAssetspath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->assetspath:Ljava/lang/String;

    return-void
.end method

.method public setBios(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->bios:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setCheat(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->cheat:I

    return-void
.end method

.method public setCheatEnable(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->cheatEnable:I

    return-void
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->classname:Ljava/lang/String;

    return-void
.end method

.method public setClientIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->clientIp:Ljava/lang/String;

    return-void
.end method

.method public setCore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->core:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setDnsJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->dnsJson:Ljava/lang/String;

    return-void
.end method

.method public setEmuType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->emuType:Ljava/lang/String;

    return-void
.end method

.method public setFastIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->fastIP:Ljava/lang/String;

    return-void
.end method

.method public setFromCls(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->fromCls:Ljava/lang/String;

    return-void
.end method

.method public setGameID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->gameID:Ljava/lang/String;

    return-void
.end method

.method public setGamePlayers(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->gamePlayers:I

    return-void
.end method

.method public setGametype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->gametype:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->groupId:I

    return-void
.end method

.method public setIntentFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->intentFrom:I

    return-void
.end method

.method public setNetMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->netMode:I

    return-void
.end method

.method public setNetPlayers(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->netPlayers:I

    return-void
.end method

.method public setNetState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->netState:Ljava/lang/String;

    return-void
.end method

.method public setOldGame(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->oldGame:I

    return-void
.end method

.method public setP1Name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->p1Name:Ljava/lang/String;

    return-void
.end method

.method public setP2Name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->p2Name:Ljava/lang/String;

    return-void
.end method

.method public setPa_package_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->pa_package_name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_area_val(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/Util/StartGameMeta;->plugin_area_val:J

    return-void
.end method

.method public setPorder(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->porder:I

    return-void
.end method

.method public setPspAdShowTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->pspAdShowTime:I

    return-void
.end method

.method public setPspAdShowTimeSwitch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->pspAdShowTimeSwitch:I

    return-void
.end method

.method public setRamCheck(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->ramCheck:Ljava/lang/String;

    return-void
.end method

.method public setRankAutoUpload(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->rankAutoUpload:I

    return-void
.end method

.method public setRankMiniTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->rankMiniTime:I

    return-void
.end method

.method public setRankingID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->rankingID:Ljava/lang/String;

    return-void
.end method

.method public setResult_show_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->result_show_type:Ljava/lang/String;

    return-void
.end method

.method public setRolesJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->rolesJson:Ljava/lang/String;

    return-void
.end method

.method public setRomPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->romPath:Ljava/lang/String;

    return-void
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->roomID:Ljava/lang/String;

    return-void
.end method

.method public setRoomMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->RoomMode:I

    return-void
.end method

.method public setRoomSilent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->roomSilent:I

    return-void
.end method

.method public setServerIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->serverIP:Ljava/lang/String;

    return-void
.end method

.method public setServerPort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->serverPort:Ljava/lang/String;

    return-void
.end method

.method public setSopath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->sopath:Ljava/lang/String;

    return-void
.end method

.method public setSp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->sp:I

    return-void
.end method

.method public setStartMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->startMode:I

    return-void
.end method

.method public setTagId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->tagId:I

    return-void
.end method

.method public setTcptype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->tcptype:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->token:Ljava/lang/String;

    return-void
.end method

.method public setTourist(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/Util/StartGameMeta;->tourist:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->type:I

    return-void
.end method

.method public setUdpIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->udpIP:Ljava/lang/String;

    return-void
.end method

.method public setUdpport(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->udpport:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->userID:Ljava/lang/String;

    return-void
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->userIcon:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/StartGameMeta;->userName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->version:I

    return-void
.end method

.method public setVipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->vipLevel:I

    return-void
.end method

.method public setVip_expire_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/Util/StartGameMeta;->vip_expire_time:J

    return-void
.end method

.method public setsVipLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/Util/StartGameMeta;->sVipLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartGameMeta{allowPeripheralJoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPeripheralJoin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowPcJoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/Util/StartGameMeta;->allowPcJoin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", udpIP=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/Util/StartGameMeta;->udpIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", RoomMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->RoomMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", romPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->startMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->userID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gameID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->gameID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", roomID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->roomID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serverIP=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->serverIP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serverPort=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->serverPort:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", porder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->porder:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", plugin_area_val="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/Util/StartGameMeta;->plugin_area_val:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", tourist="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/join/mgps/Util/StartGameMeta;->tourist:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", p1Name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->p1Name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", p2Name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->p2Name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", emuType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->emuType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oldGame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->oldGame:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clientIp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->clientIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", udpport="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->udpport:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tcptype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->tcptype:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ramCheck=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->ramCheck:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", netState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->netState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cheat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->cheat:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->userIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", netMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->netMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", netPlayers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->netPlayers:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gamePlayers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->gamePlayers:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", groupId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->groupId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", area=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->area:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adDatas="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->adDatas:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", vipLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->vipLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sVipLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->sVipLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vip_expire_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/Util/StartGameMeta;->vip_expire_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", result_show_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->result_show_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pa_package_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->pa_package_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", roomSilent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->roomSilent:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fastIP=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->fastIP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gametype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->gametype:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cheatEnable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/StartGameMeta;->cheatEnable:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rankingID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->rankingID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", assetspath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->assetspath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sopath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->sopath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", classname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/StartGameMeta;->classname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", apkOrSo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/Util/StartGameMeta;->apkOrSo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/Util/StartGameMeta;->sp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
