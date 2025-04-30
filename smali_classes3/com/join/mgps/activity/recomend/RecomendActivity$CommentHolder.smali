.class Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecomendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/recomend/RecomendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentHolder"
.end annotation


# instance fields
.field appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field appName:Landroid/widget/TextView;

.field appTag:Landroid/widget/TextView;

.field appType:Landroid/widget/TextView;

.field content:Landroid/widget/TextView;

.field main:Landroid/widget/LinearLayout;

.field selectbutn:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/recomend/RecomendActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900d9

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0900e1

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appName:Landroid/widget/TextView;

    const p1, 0x7f0900f2

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appType:Landroid/widget/TextView;

    const p1, 0x7f0900f1

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appTag:Landroid/widget/TextView;

    const p1, 0x7f0902eb

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->content:Landroid/widget/TextView;

    const p1, 0x7f090e08

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    const p1, 0x7f0909eb

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->main:Landroid/widget/LinearLayout;

    return-void
.end method
