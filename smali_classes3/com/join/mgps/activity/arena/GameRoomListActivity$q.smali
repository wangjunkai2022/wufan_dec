.class Lcom/join/mgps/activity/arena/GameRoomListActivity$q;
.super Lcom/join/mgps/socket/fight/arena/a$b0;
.source "GameRoomListActivity.java"


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/a$b0;-><init>()V

    return-void
.end method


# virtual methods
.method public t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/a$b0;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public w0(IILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/socket/fight/arena/a$b0;->w0(IILjava/lang/Object;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    if-ne p2, p1, :cond_0

    .line 2
    check-cast p3, Lapp/mgsim/arena/ArenaResponse;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$q;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1, p3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->G1(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lapp/mgsim/arena/ArenaResponse;)V

    :cond_0
    return-void
.end method
