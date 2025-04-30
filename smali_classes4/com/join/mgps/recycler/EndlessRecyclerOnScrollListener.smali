.class public Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EndlessRecyclerOnScrollListener.java"

# interfaces
.implements Lcom/join/mgps/recycler/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;
    }
.end annotation


# instance fields
.field protected a:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

.field private b:[I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->d:I

    return-void
.end method

.method private b([I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    .line 2
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iput p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->d:I

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    if-lez v0, :cond_0

    .line 6
    iget v0, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->c:I

    add-int/lit8 p2, p2, -0x1

    if-lt v0, p2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->a:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    if-nez p2, :cond_3

    .line 4
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_0

    .line 5
    sget-object p2, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;->LinearLayout:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    iput-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->a:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    goto :goto_0

    .line 6
    :cond_0
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_1

    .line 7
    sget-object p2, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;->GridLayout:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    iput-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->a:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    goto :goto_0

    .line 8
    :cond_1
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_2

    .line 9
    sget-object p2, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;->StaggeredGridLayout:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    iput-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->a:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    :goto_0
    sget-object p2, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$a;->a:[I

    iget-object p3, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->a:Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener$LayoutManagerType;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_7

    const/4 p3, 0x2

    if-eq p2, p3, :cond_6

    const/4 p3, 0x3

    if-eq p2, p3, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 13
    iget-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->b:[I

    if-nez p2, :cond_5

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->b:[I

    .line 15
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->b:[I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 16
    iget-object p1, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->b:[I

    invoke-direct {p0, p1}, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->b([I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->c:I

    goto :goto_1

    .line 17
    :cond_6
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->c:I

    goto :goto_1

    .line 18
    :cond_7
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/recycler/EndlessRecyclerOnScrollListener;->c:I

    :goto_1
    return-void
.end method
