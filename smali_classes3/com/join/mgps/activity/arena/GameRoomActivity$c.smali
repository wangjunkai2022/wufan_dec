.class Lcom/join/mgps/activity/arena/GameRoomActivity$c;
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$c;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$c;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-boolean v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->e2:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$c;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$c;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register_type_GameRoomActivity"

    invoke-static {v3, v1, v2}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$c;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v1, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    new-array v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    :try_start_0
    new-array p1, p1, [Ljava/lang/String;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$c;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v5}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$c;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    .line 6
    :catch_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$c;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object p1

    const-string v0, "share_friends_1"

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
