.class Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameRoomSelecterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->c:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0909eb

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->a:Landroid/view/View;

    const p1, 0x7f090acd

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->b:Landroid/widget/TextView;

    return-void
.end method
