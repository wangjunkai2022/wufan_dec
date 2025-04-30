.class Lcom/wufan/friend/chat/c$c;
.super Ljava/lang/Object;
.source "FriendPresenter.java"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/friend/chat/c;


# direct methods
.method constructor <init>(Lcom/wufan/friend/chat/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-static {v0}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-static {v0}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    const-string v1, "register_type_GameRoomActivity"

    invoke-static {v1, p1, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_0
    return-void
.end method

.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 1

    .line 1
    iget p1, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-static {p1}, Lcom/wufan/friend/chat/c;->d(Lcom/wufan/friend/chat/c;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-static {p1}, Lcom/wufan/friend/chat/c;->d(Lcom/wufan/friend/chat/c;)V

    :cond_3
    return-void

    .line 4
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-static {p1}, Lcom/wufan/friend/chat/c;->d(Lcom/wufan/friend/chat/c;)V

    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->w()Lcom/join/mgps/dto/FriendBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-virtual {p1, v1}, Lcom/wufan/friend/chat/c;->V(Lcom/join/mgps/dto/FriendBean;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v2, "cmd_login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    if-eqz p1, :cond_d

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "invite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object v0, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    goto/16 :goto_3

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "join"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object v0, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    goto/16 :goto_3

    .line 9
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v2, "cmd_create_game_room"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "cmd_join_room"

    if-nez v0, :cond_4

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11
    :cond_4
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 12
    iget-object v4, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-static {v4}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-static {v4}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 13
    iget-object v4, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-static {v4}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 14
    :cond_5
    iget-object v4, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_9

    const/4 p1, -0x1

    .line 15
    iget-object v2, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object v2, v2, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getSource()I

    move-result v2

    if-ne v2, v5, :cond_6

    const/4 v4, 0x2

    goto :goto_0

    .line 16
    :cond_6
    iget-object v2, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object v2, v2, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getSource()I

    move-result v2

    if-ne v2, v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, -0x1

    .line 17
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    mul-double v2, v2, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v7

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v7

    double-to-int v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 18
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    const-string v2, "friend_invite"

    .line 19
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v4}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->k(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v10}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->j(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    const/high16 v2, 0x20000000

    .line 22
    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 23
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p1

    invoke-virtual {p0, p1, v10}, Lcom/wufan/friend/chat/c$c;->a(ILjava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    if-eqz p1, :cond_8

    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v7

    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v8

    .line 26
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v9

    .line 27
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v11

    .line 28
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v12

    .line 29
    invoke-virtual/range {v7 .. v13}, Lcom/wufan/friend/chat/c;->n(IILjava/lang/String;ZJ)V

    .line 30
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object v0, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->e(Lcom/join/mgps/dto/FriendBean;)V

    .line 31
    :cond_8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/event/m;

    invoke-direct {v0, v6}, Lcom/join/mgps/event/m;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 32
    :cond_9
    iget-object v2, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 34
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v3

    sget-object v7, Lcom/papa91/battle/protocol/RoomCategory;->LIVE:Lcom/papa91/battle/protocol/RoomCategory;

    if-ne v3, v7, :cond_a

    const/4 v5, 0x2

    goto :goto_1

    .line 35
    :cond_a
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v3

    sget-object v6, Lcom/papa91/battle/protocol/RoomCategory;->TOURNAMENT:Lcom/papa91/battle/protocol/RoomCategory;

    if-ne v3, v6, :cond_b

    goto :goto_1

    :cond_b
    const/4 v5, 0x0

    .line 36
    :goto_1
    new-instance v2, Lcom/join/mgps/event/m;

    invoke-direct {v2, v4}, Lcom/join/mgps/event/m;-><init>(I)V

    .line 37
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/event/m;->r(I)V

    .line 38
    invoke-virtual {v2, v5}, Lcom/join/mgps/event/m;->s(I)V

    .line 39
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/join/mgps/event/m;->q(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2, v0}, Lcom/join/mgps/event/m;->o(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 41
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getSource()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/event/m;->t(I)V

    .line 42
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 43
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    invoke-virtual {p1, v1}, Lcom/wufan/friend/chat/c;->V(Lcom/join/mgps/dto/FriendBean;)V

    :cond_d
    :goto_3
    return-void
.end method
