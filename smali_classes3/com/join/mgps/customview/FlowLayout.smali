.class public Lcom/join/mgps/customview/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DrawAllocation"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "FlowLayout"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->a:I

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/FlowLayout;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/List;

    const/16 p1, 0x64

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->e:I

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getHorizontalDivider()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/FlowLayout;->a:I

    return v0
.end method

.method public getVerticalDivider()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/FlowLayout;->b:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    .line 6
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 7
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 9
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/lit8 v13, v3, -0x1

    if-ne v13, v6, :cond_0

    const/4 v13, 0x0

    goto :goto_1

    .line 10
    :cond_0
    iget v13, v0, Lcom/join/mgps/customview/FlowLayout;->b:I

    .line 11
    :goto_1
    iget v14, v0, Lcom/join/mgps/customview/FlowLayout;->a:I

    .line 12
    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v5

    add-int/2addr v15, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v5, v5, v16

    if-le v15, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 13
    iget v5, v0, Lcom/join/mgps/customview/FlowLayout;->e:I

    if-le v4, v5, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    iget-object v5, v0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v5, v0, Lcom/join/mgps/customview/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 17
    :cond_2
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v5

    add-int/2addr v11, v14

    add-int/2addr v7, v11

    .line 18
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v5

    add-int/2addr v12, v13

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 19
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 20
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, v0, Lcom/join/mgps/customview/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    .line 24
    iget-object v4, v0, Lcom/join/mgps/customview/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    .line 25
    iget-object v6, v0, Lcom/join/mgps/customview/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 26
    iget-object v7, v0, Lcom/join/mgps/customview/FlowLayout;->d:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    .line 27
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 28
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 29
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    goto :goto_5

    .line 30
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 31
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v3

    .line 32
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v1

    .line 33
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v11

    .line 34
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v12

    .line 35
    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 36
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v11

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v0, Lcom/join/mgps/customview/FlowLayout;->a:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 37
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    add-int/2addr v7, v8

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    .line 12
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move/from16 v14, p1

    move/from16 v15, p2

    .line 13
    invoke-virtual {v0, v13, v14, v15}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 14
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 v17, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v18, v11

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v16, v16, v11

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v11, v16, v11

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v2

    .line 17
    iget v2, v0, Lcom/join/mgps/customview/FlowLayout;->b:I

    add-int v14, v10, v11

    add-int v16, v5, v6

    move/from16 v19, v5

    sub-int v5, v1, v16

    if-le v14, v5, :cond_0

    .line 18
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 19
    iget v10, v0, Lcom/join/mgps/customview/FlowLayout;->a:I

    add-int/2addr v11, v10

    add-int/2addr v7, v12

    add-int/2addr v13, v2

    move v10, v11

    move v12, v13

    move v11, v5

    goto :goto_1

    .line 20
    :cond_0
    iget v2, v0, Lcom/join/mgps/customview/FlowLayout;->a:I

    add-int/2addr v11, v2

    add-int/2addr v10, v11

    .line 21
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v12, v2

    move/from16 v11, v18

    :goto_1
    add-int/lit8 v2, v9, -0x1

    if-ne v8, v2, :cond_1

    .line 22
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v7, v12

    move v11, v2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v17

    move/from16 v5, v19

    goto :goto_0

    :cond_2
    move/from16 v17, v2

    move/from16 v18, v11

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v1, v18

    :goto_2
    if-ne v4, v2, :cond_4

    move/from16 v2, v17

    goto :goto_3

    :cond_4
    move v2, v7

    .line 23
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setHorizontalDivider(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->a:I

    return-void
.end method

.method public setNumberRows(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->e:I

    return-void
.end method

.method public setVerticalDivider(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/FlowLayout;->b:I

    return-void
.end method
