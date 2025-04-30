.class Lcom/join/mgps/activity/arena/GameRoomActivity$f;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->q2()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u5b58\u6863!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\u7f51\u7edc\u5b58\u6863\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->G1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/dto/ArchiveBean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "net_archive"

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->z()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->C()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$f;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u5f53\u524d\u6e38\u620f\u6682\u65e0\u7f51\u7edc\u5b58\u6863!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
