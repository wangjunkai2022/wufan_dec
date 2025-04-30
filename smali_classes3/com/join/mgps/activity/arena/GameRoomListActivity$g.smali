.class Lcom/join/mgps/activity/arena/GameRoomListActivity$g;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomListActivity$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->W2()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->U0()V

    return-void
.end method
