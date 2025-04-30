.class Lcom/join/mgps/activity/arena/GameRoomActivity$h;
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u5916\u8bbe!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->N1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result v1

    const-string v2, "register_type_GameRoomActivity"

    invoke-static {v2, v0, v1}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPeripheralJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    return-void
.end method
