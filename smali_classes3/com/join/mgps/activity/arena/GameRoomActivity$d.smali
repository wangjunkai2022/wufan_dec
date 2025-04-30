.class Lcom/join/mgps/activity/arena/GameRoomActivity$d;
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    .line 3
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v1

    if-lez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->b()I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->J2()V

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u4ec5\u96502\u4eba\u5bf9\u6218\u65f6\u5f00\u542f"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
