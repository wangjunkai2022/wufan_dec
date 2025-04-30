.class Lcom/join/mgps/activity/arena/GameRoomActivity$g;
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->r0:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object p1

    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "start game so fast ,waiting a moment!"

    const-string v1, "GameRoomActivity"

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-wide v6, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1:J

    cmp-long p1, v6, v4

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-wide v6, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1:J

    sub-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-gez p1, :cond_0

    .line 3
    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1:J

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->H1(Lcom/join/mgps/activity/arena/GameRoomActivity;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v6, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    const-string v7, "FIGHT_LOBBY"

    const/4 v8, 0x3

    if-ne p1, v6, :cond_5

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    move-result-object p1

    sget-object v6, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_GOTO_GAME_NOW:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    if-eq p1, v6, :cond_3

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    move-result-object p1

    sget-object v6, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_START_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    if-ne p1, v6, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->I1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    move-result-object p1

    sget-object v0, Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;->BTN_STATE_WAITING_GAME:Lcom/join/mgps/activity/arena/GameRoomActivity$BTN_STATE;

    if-ne p1, v0, :cond_7

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u7b49\u5f85\u5176\u4ed6\u73a9\u5bb6\u51c6\u5907!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-wide v9, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1:J

    cmp-long p1, v9, v4

    if-lez p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-wide v9, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1:J

    sub-long/2addr v4, v9

    cmp-long p1, v4, v2

    if-gez p1, :cond_4

    .line 11
    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->n1:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->J1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$g$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$g$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity$g;)V

    invoke-static {v0, v8, p1, v7, v1}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v0, Lapp/mgsim/arena/UserType;->TENANT:Lapp/mgsim/arena/UserType;

    if-ne p1, v0, :cond_6

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->n1:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->M1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/activity/arena/GameRoomActivity$g$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/GameRoomActivity$g$b;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity$g;)V

    invoke-static {v0, v8, p1, v7, v1}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v0, Lapp/mgsim/arena/UserType;->SPECTATOR:Lapp/mgsim/arena/UserType;

    if-ne p1, v0, :cond_7

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v0, "\u7b49\u5f85\u6e38\u620f\u5f00\u59cb!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
