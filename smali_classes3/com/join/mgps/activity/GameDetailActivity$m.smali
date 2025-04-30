.class Lcom/join/mgps/activity/GameDetailActivity$m;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/LinearLayout;

.field h:Lcom/join/mgps/customview/MStarBar;

.field i:Lit/sephiroth/android/library/widget/HListView;

.field j:Lit/sephiroth/android/library/widget/HListView;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/ImageView;

.field m:Lcom/facebook/drawee/view/SimpleDraweeView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/LinearLayout;

.field p:Landroid/view/View;

.field final synthetic q:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/GameDetailActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->q:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900d9

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0900e1

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->b:Landroid/widget/TextView;

    const p1, 0x7f0902af

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->c:Landroid/widget/TextView;

    const p1, 0x7f090341

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    const p1, 0x7f09100b

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->f:Landroid/widget/LinearLayout;

    const p1, 0x7f090dbd

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->g:Landroid/widget/LinearLayout;

    const p1, 0x7f0902ac

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/MStarBar;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->h:Lcom/join/mgps/customview/MStarBar;

    const p1, 0x7f090dc1

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->i:Lit/sephiroth/android/library/widget/HListView;

    const p1, 0x7f09029e

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->j:Lit/sephiroth/android/library/widget/HListView;

    const p1, 0x7f0903ba

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->k:Landroid/widget/LinearLayout;

    const p1, 0x7f09039e

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Landroid/widget/TextView;

    const p1, 0x7f0903a9

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->l:Landroid/widget/ImageView;

    const p1, 0x7f090a95

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090169

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->n:Landroid/widget/TextView;

    const p1, 0x7f090342

    .line 17
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->o:Landroid/widget/LinearLayout;

    const p1, 0x7f0900e9

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->p:Landroid/view/View;

    return-void
.end method
