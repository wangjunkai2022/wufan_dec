.class Lcom/join/mgps/activity/arena/GameRoomActivity$p;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "GameRoomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 6

    const-string v0, "register_type_GameRoomActivity"

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->z1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->S2()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-boolean v2, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->v0:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v2, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->o0:Lcom/join/mgps/dto/BattleChallengeConfig;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->H2()V

    goto :goto_0

    :cond_1
    const-string v2, "\u83b7\u53d6\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->i2()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->x0:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "game_main"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->h1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->performClick()Z

    .line 14
    :cond_3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget v2, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->w0:I

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPcJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    invoke-static {v0, v2, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPcJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->y0:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v1

    if-nez v1, :cond_6

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomActivity;->y0:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iput-object v4, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->y0:Ljava/lang/String;

    :cond_6
    return-void
.end method
