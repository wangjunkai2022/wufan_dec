.class Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;
.super Ljava/lang/Object;
.source "GameRoomSelecterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->d(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->b:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    iput p2, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->b:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->a(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->b:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->a:I

    invoke-static {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->b(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;I)I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->b:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->a(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->b:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->c(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;->onItemClick(I)V

    return-void
.end method
