.class Lcom/join/mgps/activity/arena/GameRoomActivity$b;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/PlayerInfoContainerView$a;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-eq v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object v0

    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "P"

    const-string v6, "\u4f4d\u7f6e\uff1a"

    const/4 v7, 0x0

    const/4 v8, 0x4

    const-string v9, "seat_set"

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    sget-object v5, Lapp/mgsim/arena/RoomSeatState;->REMOVE_AND_REPORT:Lapp/mgsim/arena/RoomSeatState;

    aput-object v5, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    sget-object v5, Lapp/mgsim/arena/RoomSeatState;->REPORT:Lapp/mgsim/arena/RoomSeatState;

    aput-object v5, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    aput-object p1, v1, v2

    invoke-virtual {v0, v9, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v0

    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u5f53\u524d\u623f\u95f4\u5df2\u5f00\u59cb\uff0c\u8bf7\u5148\u8fdb\u5165\u6e38\u620f\u540e\u518d\u5750\u4e0b"

    aput-object v1, v0, v2

    const-string v1, "\u786e\u5b9a"

    aput-object v1, v0, v4

    const-string v1, "dialog_error_hint"

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4f4d\u7f6e\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "P"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    sget-object v4, Lapp/mgsim/arena/RoomSeatState;->SEAT:Lapp/mgsim/arena/RoomSeatState;

    aput-object v4, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "seat_set"

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object v0

    sget-object v1, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "register_type_GameRoomActivity"

    invoke-static {v4, v2, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object v0

    sget-object v2, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v4, 0x1

    aput-object v1, v2, v4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v6, v6, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v5}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object v0

    const-string v1, "share_friends_1"

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public e(Lcom/papa91/battle/protocol/RoomPosition;ZI)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/16 p3, 0x101

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    const-string p3, "\u5f53\u524d\u623f\u95f4\u5df2\u5f00\u59cb\uff0c\u8bf7\u5148\u8fdb\u5165\u6e38\u620f\u540e\u518d\u5750\u4e0b"

    aput-object p3, p2, v2

    const-string p3, "\u786e\u5b9a"

    aput-object p3, p2, v1

    const-string p3, "dialog_error_hint"

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v5, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4f4d\u7f6e\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "P"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    if-eqz p2, :cond_1

    sget-object p2, Lapp/mgsim/arena/RoomSeatState;->CLOSE:Lapp/mgsim/arena/RoomSeatState;

    goto :goto_0

    :cond_1
    sget-object p2, Lapp/mgsim/arena/RoomSeatState;->OPEN:Lapp/mgsim/arena/RoomSeatState;

    :goto_0
    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "seat_set"

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
