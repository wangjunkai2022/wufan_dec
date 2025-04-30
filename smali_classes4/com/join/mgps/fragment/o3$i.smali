.class Lcom/join/mgps/fragment/o3$i;
.super Ljava/lang/Object;
.source "NewArenaMainFragment.java"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->U(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/o3;->h0()V

    .line 3
    iget v0, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/o3;->showToast(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/o3;->showToast(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/o3;->J0()V

    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->U(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    const-string v1, "register_type_NewArenaMainFragment"

    if-eq v0, v1, :cond_1

    const-string v1, "register_type_public"

    if-ne v0, v1, :cond_8

    .line 3
    :cond_1
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/o3;->r0(Lapp/mgsim/arena/ArenaResponse;)V

    return-void

    .line 5
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->S(Lcom/join/mgps/fragment/o3;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->S(Lcom/join/mgps/fragment/o3;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/o3;->j0(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_search_room_by_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/o3;->t0(Lcom/papa91/battle/protocol/GameRoom;)V

    goto/16 :goto_1

    .line 11
    :cond_4
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_join_room"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/o3;->e0()V

    .line 13
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v1}, Lcom/join/mgps/fragment/o3;->M(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v1}, Lcom/join/mgps/fragment/o3;->M(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v3

    sget-object v4, Lcom/papa91/battle/protocol/RoomCategory;->LIVE:Lcom/papa91/battle/protocol/RoomCategory;

    if-ne v3, v4, :cond_6

    const/4 v2, 0x2

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    move-result-object v3

    sget-object v4, Lcom/papa91/battle/protocol/RoomCategory;->TOURNAMENT:Lcom/papa91/battle/protocol/RoomCategory;

    if-ne v3, v4, :cond_7

    const/4 v2, 0x1

    .line 19
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v3}, Lcom/join/mgps/fragment/o3;->U(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object v2

    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    iget v0, v0, Lcom/join/mgps/fragment/o3;->w0:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->b(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 20
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$i;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/o3;->h0()V

    :cond_8
    :goto_1
    return-void
.end method
