.class Lcom/join/mgps/activity/arena/GameRoomActivity$j;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->G2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZZLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object v0

    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    const-string v5, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\uff01"

    const-string v6, "register_type_GameRoomActivity"

    if-eq p1, v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v7, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne v0, v7, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6ePC!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1, v5}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v7, v7, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-static {v0, v7}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-ne p1, v2, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    invoke-static {v6, v2, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPcJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 10
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    if-ne p1, v1, :cond_a

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_7

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string p3, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u65c1\u89c2!"

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_4

    .line 13
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1, v5}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_4

    .line 15
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1, v3}, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1(Lcom/join/mgps/activity/arena/GameRoomActivity;Z)Z

    goto :goto_3

    .line 17
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1, v4}, Lcom/join/mgps/activity/arena/GameRoomActivity;->P1(Lcom/join/mgps/activity/arena/GameRoomActivity;Z)Z

    .line 18
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->O1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result p1

    if-eq p1, p3, :cond_a

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object p1

    iget-object p3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p3

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->O1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result v0

    invoke-static {v6, p3, v0}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomSpectatorJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_a
    :goto_4
    const-string p1, ""

    if-nez p2, :cond_b

    .line 20
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result p2

    if-nez p2, :cond_c

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p3, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    goto :goto_5

    .line 22
    :cond_b
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 23
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object p2

    iget-object p3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p3}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result p3

    invoke-static {v6, p3, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object v0

    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u5b58\u6863!"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\u7f51\u7edc\u5b58\u6863\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomActivity;->G1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/dto/ArchiveBean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "net_archive"

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/a;->C()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$j;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "\u5f53\u524d\u6e38\u620f\u6682\u65e0\u7f51\u7edc\u5b58\u6863!"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
