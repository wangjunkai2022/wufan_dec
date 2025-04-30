.class Lcom/join/mgps/activity/ShareWebActivity$n;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ShareWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/ShareWebActivity$n;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity$n;->b(Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method private synthetic b(Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/join/mgps/socket/fight/arena/c;->i(Lcom/papa91/battle/protocol/BattleArea;Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->Z2(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->W1(Lapp/mgsim/arena/SocketError;)V

    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    const-string v1, "register_type_NewArenaMainFragment"

    if-eq v0, v1, :cond_0

    const-string v1, "register_type_public"

    if-ne v0, v1, :cond_7

    .line 2
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->Q0(Lcom/join/mgps/activity/ShareWebActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->Q0(Lcom/join/mgps/activity/ShareWebActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity;->z1(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_search_room_by_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ShareWebActivity;->M1(Lcom/papa91/battle/protocol/GameRoom;)V

    goto/16 :goto_1

    .line 10
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_join_room"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ShareWebActivity;->t1()V

    .line 12
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->S0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 14
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/ShareWebActivity;->dismissLoadingDialog()V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->U0(Lcom/join/mgps/activity/ShareWebActivity;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->V0(Lcom/join/mgps/activity/ShareWebActivity;)I

    move-result v1

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/ShareWebActivity;->W0(Lcom/join/mgps/activity/ShareWebActivity;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/ShareWebActivity;->X0(Lcom/join/mgps/activity/ShareWebActivity;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/ShareWebActivity;->Y0(Lcom/join/mgps/activity/ShareWebActivity;)I

    move-result v3

    add-int/2addr v1, v3

    .line 18
    new-instance v3, Lcom/join/mgps/dto/NetBattleStartGameDto;

    invoke-direct {v3}, Lcom/join/mgps/dto/NetBattleStartGameDto;-><init>()V

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameID(Ljava/lang/String;)V

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/papa91/battle/protocol/BattleServerAddr;->getBattleRoomId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomID(Ljava/lang/String;)V

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserID(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/BattleServerAddr;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerIP(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/BattleServerAddr;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerPort(I)V

    .line 24
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v4

    sget-object v5, Lcom/papa91/battle/protocol/RoomCategory;->LIVE:Lcom/papa91/battle/protocol/RoomCategory;

    if-ne v4, v5, :cond_4

    const/4 p1, 0x3

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object p1

    sget-object v4, Lcom/papa91/battle/protocol/RoomCategory;->TOURNAMENT:Lcom/papa91/battle/protocol/RoomCategory;

    if-ne p1, v4, :cond_5

    const/4 p1, 0x2

    goto :goto_0

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result p1

    .line 27
    :goto_0
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomMode(I)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setAllowPeripheralJoin(Z)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setAllowPCJoin(Z)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameype(I)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGroupId(I)V

    .line 32
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setP1Name(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setP2Name(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setOldGame(I)V

    .line 35
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserName(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserIcon(Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGamePlayers(I)V

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setTcptype(I)V

    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->a1(Lcom/join/mgps/activity/ShareWebActivity;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setPorder(I)V

    .line 40
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setNetPlayers(I)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>>>>>>>>>tbl>>>>>>>>>>>>>>>>>>>>>>join game!!!!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->S0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    const-string v4, "register_type_GameRoomActivity"

    invoke-static {v4, v2}, Lapp/mgsim/arena/ArenaRequestFactory;->startLobbyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 44
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->Z0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, p1, v4, v5}, Lcom/wufan/friend/chat/c;->i(IJ)V

    .line 45
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n;->a:Lcom/join/mgps/activity/ShareWebActivity;

    new-instance v1, Lcom/join/mgps/activity/s2;

    invoke-direct {v1, p0, v3, v0}, Lcom/join/mgps/activity/s2;-><init>(Lcom/join/mgps/activity/ShareWebActivity$n;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    return-void
.end method
