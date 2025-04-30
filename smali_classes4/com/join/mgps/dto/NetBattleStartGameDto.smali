.class public Lcom/join/mgps/dto/NetBattleStartGameDto;
.super Ljava/lang/Object;
.source "NetBattleStartGameDto.java"


# instance fields
.field private RoomMode:I

.field private allowPCJoin:Z

.field private allowPeripheralJoin:Z

.field private area:Ljava/lang/String;

.field private clientIp:Ljava/lang/String;

.field private gameID:Ljava/lang/String;

.field private gamePlayers:I

.field private gameype:I

.field private groupId:I

.field private netPlayers:I

.field private oldGame:I

.field private p1Name:Ljava/lang/String;

.field private p2Name:Ljava/lang/String;

.field private porder:I

.field private result_show_type:Ljava/lang/String;

.field private roomID:Ljava/lang/String;

.field private serverIP:Ljava/lang/String;

.field private serverPort:I

.field private tcptype:I

.field private udpIP:Ljava/lang/String;

.field private udpport:I

.field private userID:Ljava/lang/String;

.field private userIcon:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->allowPeripheralJoin:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->allowPCJoin:Z

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getGameID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->gameID:Ljava/lang/String;

    return-object v0
.end method

.method public getGamePlayers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->gamePlayers:I

    return v0
.end method

.method public getGameype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->gameype:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->groupId:I

    return v0
.end method

.method public getNetPlayers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->netPlayers:I

    return v0
.end method

.method public getOldGame()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->oldGame:I

    return v0
.end method

.method public getP1Name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->p1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getP2Name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->p2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getPorder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->porder:I

    return v0
.end method

.method public getResult_show_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->result_show_type:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->roomID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->RoomMode:I

    return v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->serverIP:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->serverPort:I

    return v0
.end method

.method public getTcptype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->tcptype:I

    return v0
.end method

.method public getUdpIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->udpIP:Ljava/lang/String;

    return-object v0
.end method

.method public getUdpport()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->udpport:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->userIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->allowPCJoin:Z

    return v0
.end method

.method public isAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->allowPeripheralJoin:Z

    return v0
.end method

.method public setAllowPCJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->allowPCJoin:Z

    return-void
.end method

.method public setAllowPeripheralJoin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->allowPeripheralJoin:Z

    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->area:Ljava/lang/String;

    return-void
.end method

.method public setClientIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->clientIp:Ljava/lang/String;

    return-void
.end method

.method public setGameID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->gameID:Ljava/lang/String;

    return-void
.end method

.method public setGamePlayers(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->gamePlayers:I

    return-void
.end method

.method public setGameype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->gameype:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->groupId:I

    return-void
.end method

.method public setNetPlayers(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->netPlayers:I

    return-void
.end method

.method public setOldGame(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->oldGame:I

    return-void
.end method

.method public setP1Name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->p1Name:Ljava/lang/String;

    return-void
.end method

.method public setP2Name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->p2Name:Ljava/lang/String;

    return-void
.end method

.method public setPorder(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->porder:I

    return-void
.end method

.method public setResult_show_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->result_show_type:Ljava/lang/String;

    return-void
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->roomID:Ljava/lang/String;

    return-void
.end method

.method public setRoomMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->RoomMode:I

    return-void
.end method

.method public setServerIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->serverIP:Ljava/lang/String;

    return-void
.end method

.method public setServerPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->serverPort:I

    return-void
.end method

.method public setTcptype(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->tcptype:I

    return-void
.end method

.method public setUdpIP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->udpIP:Ljava/lang/String;

    return-void
.end method

.method public setUdpport(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->udpport:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->userID:Ljava/lang/String;

    return-void
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->userIcon:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleStartGameDto;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
