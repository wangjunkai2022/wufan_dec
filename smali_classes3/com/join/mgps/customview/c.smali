.class public Lcom/join/mgps/customview/c;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerGridItemDecoration.java"


# instance fields
.field private final a:[I

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010214

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/c;->a:[I

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    add-int/2addr p2, v1

    .line 3
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    if-ne p1, v1, :cond_1

    add-int/2addr p2, v1

    .line 7
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v1

    .line 8
    :cond_1
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_2

    return v1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 7
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_2

    return v1

    :cond_1
    add-int/2addr p2, v1

    .line 8
    rem-int/2addr p2, p3

    if-nez p2, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 8
    iget-object v3, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 9
    iget-object v6, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 7
    iget-object v3, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 8
    iget-object v6, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    invoke-direct {p0, p3}, Lcom/join/mgps/customview/c;->c(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 3
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/join/mgps/customview/c;->e(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1, v3, v3, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/join/mgps/customview/c;->d(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p1, v3, v3, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lcom/join/mgps/customview/c;->b:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 9
    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/c;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/c;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
