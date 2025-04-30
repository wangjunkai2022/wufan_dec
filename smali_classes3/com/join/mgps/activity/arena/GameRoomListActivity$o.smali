.class Lcom/join/mgps/activity/arena/GameRoomListActivity$o;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->k3(I)V

    .line 3
    iget v0, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->E1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    return-void

    :cond_2
    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D3()V

    :cond_4
    return-void

    .line 7
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C2()V

    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w3(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget-boolean v1, p1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    iget-boolean p1, p1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->y2(ZZ)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "push_update_area_online_people_broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->K3(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    return-void

    .line 10
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_join_battle_area"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->b2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->D(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->k3(I)V

    goto/16 :goto_3

    .line 13
    :cond_4
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v2, "cmd_quick_join_room"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->g2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom;

    return-void

    .line 17
    :cond_5
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v3, "push_global_broadcast_all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/Notification;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->O2(Lcom/papa91/battle/protocol/Notification;)V

    return-void

    .line 19
    :cond_6
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v3, "push_refresh_room_list_update"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 21
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->R2(Ljava/util/List;)V

    return-void

    .line 23
    :cond_7
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v3, "push_refresh_room_list_dissolve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 25
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Q2(Ljava/util/List;)V

    return-void

    .line 27
    :cond_8
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v3, "push_room_list_ing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, p1, v4}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P2(Lapp/mgsim/arena/ArenaResponse;Z)V

    return-void

    .line 30
    :cond_9
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v3, "push_room_list_finish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 32
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    iget v0, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    if-ne v0, v1, :cond_a

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Z)Z

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, p1, v4}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N3(Lapp/mgsim/arena/ArenaResponse;Z)V

    goto :goto_0

    .line 35
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N3(Lapp/mgsim/arena/ArenaResponse;Z)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->i2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Z)Z

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->P2(Lapp/mgsim/arena/ArenaResponse;Z)V

    return-void

    .line 38
    :cond_b
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v3, "cmd_create_game_room"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v5, "cmd_join_room"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T2()V

    .line 40
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 41
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 42
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v2

    sget-object v5, Lcom/papa91/battle/protocol/RoomCategory;->LIVE:Lcom/papa91/battle/protocol/RoomCategory;

    const/4 v6, 0x2

    if-ne v2, v5, :cond_d

    const/4 v2, 0x2

    goto :goto_1

    .line 43
    :cond_d
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v2

    sget-object v5, Lcom/papa91/battle/protocol/RoomCategory;->TOURNAMENT:Lcom/papa91/battle/protocol/RoomCategory;

    if-ne v2, v5, :cond_e

    const/4 v2, 0x1

    goto :goto_1

    :cond_e
    const/4 v2, 0x0

    .line 44
    :goto_1
    iget-object v5, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_14

    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v3, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    new-instance v7, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v7, v7, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v7}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    const-string v7, "0"

    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->j2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    const/4 p1, -0x1

    .line 47
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 48
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->m0()I

    move-result p1

    if-ne p1, v6, :cond_f

    goto :goto_2

    :cond_f
    const/4 v4, 0x1

    :goto_2
    move p1, v4

    .line 50
    :cond_10
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/BattleChallengeConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->a(Lcom/join/mgps/dto/BattleChallengeConfig;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->e(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->f(Z)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 51
    :cond_11
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->m0()I

    move-result p1

    if-ne p1, v6, :cond_12

    const/4 v1, 0x0

    :cond_12
    move p1, v1

    .line 53
    :cond_13
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->e(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_3

    .line 54
    :cond_14
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_4

    .line 56
    :cond_15
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v6, v6, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v6}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v1

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_16
    :goto_3
    return-void

    .line 58
    :cond_17
    :goto_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void
.end method
