.class public Lcom/join/mgps/customview/PaPaLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PaPaLinearLayoutManager.java"


# static fields
.field private static final b:Ljava/lang/String; = "PaPaLinearLayoutManager"


# instance fields
.field private a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;->a:[I

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$Recycler;III[I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    invoke-static {p4, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 7
    invoke-virtual {p2, p3, p4}, Landroid/view/View;->measure(II)V

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, v1

    aput p4, p5, p3

    const/4 p3, 0x1

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, v0

    aput p4, p5, p3

    .line 10
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 11

    .line 1
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 2
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 4
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p4

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 6
    invoke-static {p3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 7
    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;->a:[I

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/customview/PaPaLinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;III[I)V

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;->a:[I

    aget v4, v2, v1

    add-int/2addr v10, v4

    if-nez v8, :cond_1

    .line 11
    aget v9, v2, v3

    goto :goto_1

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/PaPaLinearLayoutManager;->a:[I

    aget v3, v2, v3

    add-int/2addr v9, v3

    if-nez v8, :cond_1

    .line 13
    aget v10, v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    if-eq p2, p1, :cond_3

    move p3, v10

    :cond_3
    if-eq v0, p1, :cond_4

    move p4, v9

    .line 14
    :cond_4
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method
