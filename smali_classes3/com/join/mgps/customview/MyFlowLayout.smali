.class public Lcom/join/mgps/customview/MyFlowLayout;
.super Landroid/view/ViewGroup;
.source "MyFlowLayout.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/MyFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/MyFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/MyFlowLayout;->a:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/MyFlowLayout;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/MyFlowLayout;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/MyFlowLayout;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge p5, p3, :cond_1

    .line 6
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    add-int v3, v4, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, p1, v6

    if-le v3, v6, :cond_0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/MyFlowLayout;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/MyFlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v0, v5

    const/4 v1, 0x0

    :cond_0
    add-int/2addr v1, v4

    .line 14
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 15
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/MyFlowLayout;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/MyFlowLayout;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 20
    iget-object p3, p0, Lcom/join/mgps/customview/MyFlowLayout;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p3, :cond_4

    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/MyFlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 22
    iget-object v1, p0, Lcom/join/mgps/customview/MyFlowLayout;->b:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 23
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto :goto_3

    .line 26
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 28
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p2

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 31
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr p1, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    add-int/2addr p2, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    .line 7
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move/from16 v13, p1

    move/from16 v14, p2

    .line 8
    invoke-virtual {v0, v12, v13, v14}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 9
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    instance-of v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_0

    .line 10
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v16, v16, v6

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v16, v16, v6

    .line 12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v12

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v12

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_1
    add-int v12, v10, v16

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v17

    add-int v15, v15, v17

    sub-int v15, v1, v15

    if-le v12, v15, :cond_1

    .line 14
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v9, v11

    move v11, v6

    move/from16 v10, v16

    goto :goto_2

    .line 15
    :cond_1
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v11, v6

    move v10, v12

    :goto_2
    add-int/lit8 v6, v5, -0x1

    if-ne v7, v6, :cond_2

    .line 16
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v9, v11

    move v8, v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v8, v5

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_4

    goto :goto_3

    :cond_4
    move v1, v8

    :goto_3
    if-ne v4, v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v9

    .line 19
    :goto_4
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
