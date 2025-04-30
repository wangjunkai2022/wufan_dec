.class Lcom/join/mgps/activity/arena/GameRoomActivity$e;
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v0, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u666e\u901a\u573a\u4e0d\u53ef\u4ee5\u8bbe\u7f6e\u6311\u6218\u91d1\uff0c\u5982\u9700\u8981\u8bbe\u7f6e\uff0c\u8bf7\u8fdb\u5165\u7cbe\u82f1\u573a!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->p0:Lcom/join/mgps/Util/b;

    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/c;->a(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u5df2\u6709\u73a9\u5bb6\u8fdb\u5165\uff0c\u65e0\u6cd5\u518d\u8bbe\u7f6e\u6311\u6218\u91d1!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u6e38\u620f\u5df2\u7ecf\u5f00\u59cb\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u6311\u6218\u91d1!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->E1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u623f\u95f4\u5df2\u7ecf\u8fdb\u5165\u5012\u8ba1\u65f6\u72b6\u6001\uff0c\u4e0d\u80fd\u518d\u8bbe\u7f6e\u6311\u6218\u91d1\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->o0:Lcom/join/mgps/dto/BattleChallengeConfig;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->H2()V

    goto :goto_0

    :cond_5
    const-string v0, "\u6b63\u5728\u83b7\u53d6\u914d\u7f6e\u4fe1\u606f..."

    .line 12
    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->F1(Lcom/join/mgps/activity/arena/GameRoomActivity;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$e;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->k2()V

    :goto_0
    return-void
.end method
