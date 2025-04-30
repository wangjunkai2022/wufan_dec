.class public Lcom/join/mgps/customview/LoadMoreRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/LoadMoreRecyclerView$b;,
        Lcom/join/mgps/customview/LoadMoreRecyclerView$c;
    }
.end annotation


# static fields
.field public static final H1:I = 0x0

.field public static final I1:I = 0x3e7

.field public static final J1:I = 0x3

.field public static final K1:I = 0x4


# instance fields
.field private A1:Z

.field private B1:Z

.field private C1:Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

.field private D1:Z

.field private E1:I

.field private F1:Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

.field private G1:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->A1:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->B1:Z

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->A1:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->B1:Z

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->A1:Z

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->B1:Z

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b1()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->G1:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static synthetic T0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->F1:Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

    return-object p0
.end method

.method static synthetic U0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->A1:Z

    return p0
.end method

.method static synthetic V0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->D1:Z

    return p0
.end method

.method static synthetic W0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->getLastVisiblePosition()I

    move-result p0

    return p0
.end method

.method static synthetic X0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->C1:Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    return-object p0
.end method

.method static synthetic Y0(Lcom/join/mgps/customview/LoadMoreRecyclerView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->E1:I

    return p1
.end method

.method static synthetic Z0(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->B1:Z

    return p0
.end method

.method private a1([I)I
    .locals 4

    .line 1
    array-length v0, p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget v3, p1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private b1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;-><init>(Lcom/join/mgps/customview/LoadMoreRecyclerView;)V

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private getLastVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->a1([I)I

    move-result v0

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public R0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->B1:Z

    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->G1:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public c1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->setAutoLoadMoreEnable(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->E1:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->D1:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->R0(Z)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;-><init>(Lcom/join/mgps/customview/LoadMoreRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->C1:Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->C1:Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    return-void
.end method

.method public setAutoLoadMoreEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->A1:Z

    return-void
.end method

.method public setLoadMoreListener(Lcom/join/mgps/customview/LoadMoreRecyclerView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->F1:Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

    return-void
.end method

.method public setLoadingMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->D1:Z

    return-void
.end method
