.class Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->c(Lcom/join/mgps/activity/arena/GameRoomListActivity$y;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity$z;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    iput p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->a:I

    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z1(Lcom/join/mgps/activity/arena/GameRoomListActivity;I)I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity$z;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->a(Lcom/join/mgps/activity/arena/GameRoomListActivity$z;)Lcom/join/mgps/activity/arena/GameRoomListActivity$w;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$w;->onItemClick(I)V

    return-void
.end method
