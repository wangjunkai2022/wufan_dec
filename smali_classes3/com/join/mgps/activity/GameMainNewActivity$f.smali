.class Lcom/join/mgps/activity/GameMainNewActivity$f;
.super Ljava/lang/Object;
.source "GameMainNewActivity.java"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainNewActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameMainNewActivity;->f(Lcom/join/mgps/activity/GameMainNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameMainNewActivity;->i(Lcom/join/mgps/activity/GameMainNewActivity;)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameMainNewActivity;->i(Lcom/join/mgps/activity/GameMainNewActivity;)V

    :cond_4
    return-void

    .line 5
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameMainNewActivity;->i(Lcom/join/mgps/activity/GameMainNewActivity;)V

    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameMainNewActivity;->f(Lcom/join/mgps/activity/GameMainNewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameMainNewActivity;->J(Lapp/mgsim/arena/ArenaResponse;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameMainNewActivity;->g(Lcom/join/mgps/activity/GameMainNewActivity;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v1, "cmd_create_game_room"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    const-string v2, "cmd_join_room"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameMainNewActivity;->K()V

    .line 8
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/GameMainNewActivity;->d(Lcom/join/mgps/activity/GameMainNewActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/GameMainNewActivity;->d(Lcom/join/mgps/activity/GameMainNewActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/GameMainNewActivity;->d(Lcom/join/mgps/activity/GameMainNewActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 11
    :cond_4
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameMainNewActivity;->h(Lcom/join/mgps/activity/GameMainNewActivity;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$f;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->u3(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    const-string v0, "game_main"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_5
    :goto_0
    return-void
.end method
