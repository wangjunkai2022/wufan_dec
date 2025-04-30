.class Lcom/join/mgps/activity/arena/GameRoomListActivity$u;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->afterViews()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->C3()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->H1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F2()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->S2()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$u;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U2()V

    :goto_0
    return-void
.end method
