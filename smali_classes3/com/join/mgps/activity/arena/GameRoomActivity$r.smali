.class Lcom/join/mgps/activity/arena/GameRoomActivity$r;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile a:Z

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->a:Z

    return-void
.end method


# virtual methods
.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 2

    .line 1
    iget v0, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->K1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->n2(Lapp/mgsim/arena/ArenaResponse;)V

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "push_room_ready_timeout_kickout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->F2()V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "push_room_start_timeout_kickout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p1

    if-ne v0, p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->I2()V

    :cond_4
    return-void

    .line 12
    :cond_5
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_password_altr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 14
    :cond_6
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_challenge_coins_altr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u6311\u6218\u91d1\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 17
    :cond_7
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_spectator_join_altr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u65c1\u89c2\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 20
    :cond_8
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_peripheral_join_altr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 23
    :cond_9
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_pc_join_altr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 25
    :cond_a
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_server_play_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u6d41\u7545\u6a21\u5f0f\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 28
    :cond_b
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_get_kick_out_room_position_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/KickInfo;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->o2(Lcom/papa91/battle/protocol/KickInfo;)V

    return-void

    .line 30
    :cond_c
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_close_p1_position"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_close_p2_position"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_close_p3_position"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_set_room_close_p4_position"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_kick_out_room_position"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "push_update_room"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_player_ready_game"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_spectator_sit"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_4

    .line 38
    :cond_d
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "push_dissolve_room"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return-void

    .line 42
    :cond_e
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "push_kick_room"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u4f60\u5df2\u88ab\u8e22\u51fa\u623f\u95f4"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->D2(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_f
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "push_start_game_room_broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_lobby_start_game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    :goto_0
    return-void

    .line 46
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Z1()V

    .line 47
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->a:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->a:Z

    .line 49
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object v1

    sget-object v2, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne v1, v2, :cond_12

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->z0:I

    goto :goto_2

    .line 52
    :cond_12
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget v2, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->z0:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 53
    iput v0, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->z0:I

    .line 54
    :cond_13
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->PlayLobbyroom:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget v5, v5, Lcom/join/mgps/activity/arena/GameRoomActivity;->z0:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->R1(Lcom/join/mgps/activity/arena/GameRoomActivity;Lcom/papa91/battle/protocol/BattleServerAddr;)V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->p2()V

    goto :goto_3

    :cond_14
    const-string p1, "GameRoomActivity"

    const-string v0, "the game have been started ,do not start again!"

    .line 57
    invoke-static {p1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    .line 58
    :cond_15
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U2(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method
