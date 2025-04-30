.class Lcom/join/mgps/customview/HorizontalRecyclerView$a;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "HorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/HorizontalRecyclerView;->R0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:D

.field final synthetic b:Lcom/join/mgps/customview/HorizontalRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HorizontalRecyclerView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->b:Lcom/join/mgps/customview/HorizontalRecyclerView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const-wide p1, 0x3fea3d70a0000000L    # 0.8199999928474426

    .line 2
    iput-wide p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->a:D

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->a:D

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->a:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-super {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    .line 2
    iget-wide v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p3, v0

    if-ne p2, p3, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/join/mgps/customview/HorizontalRecyclerView$a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/customview/HorizontalRecyclerView$a$a;-><init>(Lcom/join/mgps/customview/HorizontalRecyclerView$a;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
