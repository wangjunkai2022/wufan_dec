.class Lcom/join/mgps/activity/FriendActivity$g$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FriendActivity$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field final synthetic d:Lcom/join/mgps/activity/FriendActivity$g;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/FriendActivity$g;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/FriendActivity$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$g$a;->d:Lcom/join/mgps/activity/FriendActivity$g;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090311

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$g$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090edf

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$g$a;->b:Landroid/widget/TextView;

    const p1, 0x7f090acd

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$g$a;->c:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/FriendActivity$g$a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FriendActivity$g$a;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/FriendActivity$g$a;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FriendActivity$g$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/activity/FriendActivity$g$a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/FriendActivity$g$a;->b:Landroid/widget/TextView;

    return-object p0
.end method
