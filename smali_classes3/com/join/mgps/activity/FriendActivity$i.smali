.class Lcom/join/mgps/activity/FriendActivity$i;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/FriendActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$i;->b:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090acd

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$i;->a:Landroid/widget/TextView;

    return-void
.end method
