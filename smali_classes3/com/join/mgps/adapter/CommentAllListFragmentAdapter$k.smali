.class Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CommentAllListFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/join/mgps/customview/MStarBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/join/mgps/customview/HistogramView;

.field private j:Lcom/join/mgps/customview/HistogramView;

.field private k:Lcom/join/mgps/customview/HistogramView;

.field private l:Lcom/join/mgps/customview/HistogramView;

.field private m:Lcom/join/mgps/customview/HistogramView;

.field final synthetic n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090b69

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->i:Lcom/join/mgps/customview/HistogramView;

    const v0, 0x7f0911ab

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->j:Lcom/join/mgps/customview/HistogramView;

    const v0, 0x7f090fee

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->k:Lcom/join/mgps/customview/HistogramView;

    const v0, 0x7f090531

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->l:Lcom/join/mgps/customview/HistogramView;

    const v0, 0x7f0904c9

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->m:Lcom/join/mgps/customview/HistogramView;

    const v0, 0x7f0902ac

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->d:Lcom/join/mgps/customview/MStarBar;

    const v0, 0x7f0902af

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g:Landroid/widget/TextView;

    const v0, 0x7f0902ad

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->f:Landroid/widget/TextView;

    const v0, 0x7f0902ae

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->h:Landroid/widget/TextView;

    const v0, 0x7f0903ff

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->e:Landroid/widget/TextView;

    const-string v1, "\u5199\u8bc4\u8bba"

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090edd

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090c2b

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f090602

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->d:Lcom/join/mgps/customview/MStarBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->d:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->i:Lcom/join/mgps/customview/HistogramView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->j:Lcom/join/mgps/customview/HistogramView;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->k:Lcom/join/mgps/customview/HistogramView;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->l:Lcom/join/mgps/customview/HistogramView;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->m:Lcom/join/mgps/customview/HistogramView;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/MStarBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->d:Lcom/join/mgps/customview/MStarBar;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->b:Landroid/widget/LinearLayout;

    return-object p0
.end method
