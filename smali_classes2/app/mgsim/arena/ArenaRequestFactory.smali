.class public Lapp/mgsim/arena/ArenaRequestFactory;
.super Ljava/lang/Object;
.source "ArenaRequestFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelSubscribeGameRoom()Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_cancel_subscribe_game_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "register_type_none"

    .line 2
    iput-object v1, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static changeBattleArea(Ljava/lang/String;Lcom/papa91/battle/protocol/BattleArea;)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_join_battle_area"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, v0, Lapp/mgsim/arena/ArenaRequest;->battleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 3
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static closeSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    invoke-static {p2}, Lapp/mgsim/arena/ArenaRequestFactory;->getCmd(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    .line 5
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static createRoom(Ljava/lang/String;Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 3

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_create_game_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 3
    iput p3, v0, Lapp/mgsim/arena/ArenaRequest;->uid:I

    .line 4
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->coins:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 6
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 7
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static createRoom(Ljava/lang/String;Ljava/lang/String;IIZ)Lapp/mgsim/arena/ArenaRequest;
    .locals 3

    .line 8
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_create_game_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 9
    iput-boolean p4, v0, Lapp/mgsim/arena/ArenaRequest;->isFromLive:Z

    .line 10
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 11
    iput p3, v0, Lapp/mgsim/arena/ArenaRequest;->uid:I

    .line 12
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->coins:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 14
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 15
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static fastJoinRoom(Ljava/lang/String;JI)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_quick_join_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p3, v0, Lapp/mgsim/arena/ArenaRequest;->collectionId:I

    .line 3
    iput-wide p1, v0, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 4
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method private static getCmd(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "cmd_set_room_close_p4_position"

    goto :goto_0

    :cond_1
    const-string p0, "cmd_set_room_close_p3_position"

    goto :goto_0

    :cond_2
    const-string p0, "cmd_set_room_close_p2_position"

    goto :goto_0

    :cond_3
    const-string p0, "cmd_set_room_close_p1_position"

    :goto_0
    return-object p0
.end method

.method public static getFrameForwardServer(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_get_frameforward_server"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static getKickOutRoomPositionInfo(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_get_kick_out_room_position_info"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 4
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_join_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    :goto_0
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iput-object p2, v0, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    .line 6
    :cond_1
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static kickOutRoomPosition(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_kick_out_room_position"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 4
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static leaveRoom(I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_leave_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p0, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    const-string p0, "register_type_none"

    .line 3
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_login"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static openSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    invoke-static {p2}, Lapp/mgsim/arena/ArenaRequestFactory;->getCmd(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, v0, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    .line 5
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static ping()Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_ping"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "register_type_none"

    .line 2
    iput-object v1, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static playerReadyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_player_ready_game"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static searchRoomById(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_search_room_by_id"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static setChallengeGolden(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_set_room_challenge_coins_altr"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->coins:I

    .line 4
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_set_room_password_altr"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 3
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 4
    iput-object p2, v0, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public static setRoomPcJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_set_room_pc_join_altr"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowPCJoin:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowPCJoin:Z

    .line 4
    :goto_0
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 5
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static setRoomPeripheralJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_set_room_peripheral_join_altr"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 4
    :goto_0
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 5
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static setRoomServerPlayMode(II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_set_room_server_play_mode"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p0, v0, Lapp/mgsim/arena/ArenaRequest;->playMode:I

    .line 3
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    return-object v0
.end method

.method public static setRoomSpectatorJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_set_room_spectator_join_altr"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, v0, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 4
    :goto_0
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 5
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static shareJoinRoom(Ljava/lang/String;JIJLjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_share_join_room"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 3
    iput-wide p1, v0, Lapp/mgsim/arena/ArenaRequest;->fightId:J

    .line 4
    iput p3, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 5
    iput-wide p4, v0, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 6
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7
    iput-object p6, v0, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static spectatorSit(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_spectator_sit"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 4
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static startLobbyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_lobby_start_game"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 3
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method

.method public static subscribeRoomList(Ljava/lang/String;II)Lapp/mgsim/arena/ArenaRequest;
    .locals 2

    .line 1
    new-instance v0, Lapp/mgsim/arena/ArenaRequest;

    const-string v1, "cmd_subscribe_game_roomlist"

    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaRequest;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, v0, Lapp/mgsim/arena/ArenaRequest;->collectionId:I

    .line 3
    iput p2, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 4
    iput-object p0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    return-object v0
.end method
