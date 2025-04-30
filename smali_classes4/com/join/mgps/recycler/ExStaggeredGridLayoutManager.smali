.class public Lcom/join/mgps/recycler/ExStaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.source "ExStaggeredGridLayoutManager.java"


# instance fields
.field private final C:Ljava/lang/String;

.field D:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/recycler/ExStaggeredGridLayoutManager;->C:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/ExStaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/recycler/ExStaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 5
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/recycler/ExStaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method
