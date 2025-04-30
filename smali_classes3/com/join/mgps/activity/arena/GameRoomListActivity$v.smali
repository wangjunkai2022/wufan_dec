.class Lcom/join/mgps/activity/arena/GameRoomListActivity$v;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/g0$e;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->c2(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->b2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->BJ:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->b2(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result p1

    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->SH:Lcom/papa91/battle/protocol/BattleArea;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->GZ:Lcom/papa91/battle/protocol/BattleArea;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->I1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/join/mgps/dto/GameConfig;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->M0:Lcom/join/mgps/dto/GameConfig;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->v0(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/roomlist/c;->v0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
