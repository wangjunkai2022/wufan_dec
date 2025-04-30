.class Lcom/join/mgps/activity/arena/GameRoomListActivity$k;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "GameRoomListActivity.java"


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->a()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->k3(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->z1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->N1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->L1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->w3(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$k;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S2()V

    return-void
.end method
