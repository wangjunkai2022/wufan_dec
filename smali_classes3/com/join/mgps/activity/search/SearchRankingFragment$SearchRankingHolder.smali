.class Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchRankingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/search/SearchRankingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchRankingHolder"
.end annotation


# instance fields
.field appName:Landroid/widget/TextView;

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field line:Landroid/view/View;

.field main:Landroid/view/View;

.field rankingNumber:Landroid/widget/TextView;

.field rankingNumberBack:Landroid/widget/TextView;

.field tag:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/search/SearchRankingFragment;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/search/SearchRankingFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090cb7

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumber:Landroid/widget/TextView;

    const p1, 0x7f090cb8

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumberBack:Landroid/widget/TextView;

    const p1, 0x7f090687

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0900e1

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->appName:Landroid/widget/TextView;

    const p1, 0x7f090f1a

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    const p1, 0x7f0908be

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->line:Landroid/view/View;

    const p1, 0x7f0909eb

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->main:Landroid/view/View;

    return-void
.end method
