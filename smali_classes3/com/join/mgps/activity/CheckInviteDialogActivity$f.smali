.class Lcom/join/mgps/activity/CheckInviteDialogActivity$f;
.super Ljava/lang/Object;
.source "CheckInviteDialogActivity.java"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/CheckInviteDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CheckInviteDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showToast(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->G0(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->P0(Lapp/mgsim/arena/ArenaResponse;)V

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->R0()V

    goto/16 :goto_0

    .line 6
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_share_join_room"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 8
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->F0(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->V0(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->F0(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 11
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

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

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

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    sget-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->p0:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/papa/sim/statistic/p;->w(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method
