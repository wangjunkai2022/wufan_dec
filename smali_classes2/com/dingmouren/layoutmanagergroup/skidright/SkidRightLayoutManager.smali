.class public Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SkidRightLayoutManager.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private final e:F

.field private final f:F

.field private g:I

.field private final h:Ly/a;

.field public i:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->a:Z

    const v1, 0x7fffffff

    .line 3
    iput v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    .line 4
    iput-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    .line 5
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->e:F

    .line 6
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->f:F

    .line 7
    new-instance p1, Ly/a;

    invoke-direct {p1}, Ly/a;-><init>()V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->h:Ly/a;

    return-void
.end method

.method private e(Landroid/view/View;Lx/a;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->j(Landroid/view/View;)V

    .line 3
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    int-to-float v0, v0

    invoke-virtual {p2}, Lx/a;->c()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    invoke-virtual {p2}, Lx/a;->d()I

    move-result v1

    sub-int v4, v1, v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    .line 6
    invoke-virtual {p2}, Lx/a;->d()I

    move-result v1

    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    add-int/2addr v1, v2

    sub-int v6, v1, v0

    .line 7
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->c:I

    add-int v7, v5, v0

    move-object v2, p0

    move-object v3, p1

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 9
    invoke-virtual {p2}, Lx/a;->c()F

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 10
    invoke-virtual {p2}, Lx/a;->c()F

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method private i(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private j(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3
    iget v3, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->c:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private k()F
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    iget v3, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v1

    int-to-float v1, v3

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    int-to-float v1, v1

    :goto_0
    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    mul-int v0, v0, p1

    iget p1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    add-int/2addr v0, p1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    invoke-virtual {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    mul-int v0, v0, p1

    .line 4
    iget p1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method public c(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->k()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g()I

    move-result v3

    .line 3
    iget-boolean v4, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 4
    iget v6, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    sub-int/2addr v6, v5

    iget v7, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    mul-int v6, v6, v7

    iget v8, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    add-int/2addr v6, v8

    rem-int/2addr v6, v7

    goto :goto_0

    .line 5
    :cond_0
    iget v6, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    iget v7, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    rem-int/2addr v6, v7

    :goto_0
    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v7, v7, v8

    .line 6
    iget v9, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    int-to-float v10, v9

    div-float/2addr v7, v10

    if-eqz v4, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    sub-int v11, v3, v9

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g()I

    move-result v4

    iget v9, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    sub-int v9, v4, v9

    .line 8
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v12, v2, -0x1

    const/4 v13, 0x1

    :goto_3
    if-ltz v12, :cond_8

    .line 9
    div-int/lit8 v14, v9, 0x2

    int-to-double v14, v14

    iget v5, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->f:F

    move/from16 v17, v9

    float-to-double v8, v5

    move/from16 v18, v11

    int-to-double v10, v13

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v8

    .line 10
    iget-boolean v8, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    if-eqz v8, :cond_3

    neg-float v8, v7

    goto :goto_4

    :cond_3
    move v8, v7

    :goto_4
    move/from16 v11, v18

    int-to-double v9, v11

    move v11, v6

    float-to-double v5, v8

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v14

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v9, v5

    double-to-int v5, v5

    .line 12
    iget v6, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->f:F

    move v8, v2

    float-to-double v1, v6

    add-int/lit8 v6, v13, -0x1

    move/from16 v20, v11

    move/from16 v19, v12

    int-to-double v11, v6

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v6, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->f:F

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v6, v16, v6

    mul-float v6, v6, v7

    sub-float v6, v16, v6

    move-wide/from16 v21, v11

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v11

    double-to-float v1, v1

    int-to-float v2, v5

    mul-float v2, v2, v16

    int-to-float v6, v3

    div-float/2addr v2, v6

    .line 13
    new-instance v6, Lx/a;

    invoke-direct {v6, v5, v1, v7, v2}, Lx/a;-><init>(IFFF)V

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v4, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    iget-boolean v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    neg-double v14, v14

    .line 16
    :goto_5
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v14

    double-to-int v11, v9

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g()I

    move-result v2

    if-le v11, v2, :cond_6

    goto :goto_6

    :cond_5
    if-gtz v11, :cond_6

    :goto_6
    const/16 v18, 0x1

    goto :goto_7

    :cond_6
    const/16 v18, 0x0

    :goto_7
    if-eqz v18, :cond_7

    int-to-double v9, v11

    .line 18
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v14

    double-to-int v2, v9

    invoke-virtual {v6, v2}, Lx/a;->i(I)V

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v6, v2}, Lx/a;->g(F)V

    .line 20
    invoke-virtual {v6}, Lx/a;->d()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Lx/a;->f(F)V

    .line 21
    iget v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->f:F

    float-to-double v9, v2

    move-wide/from16 v11, v21

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v6, v2}, Lx/a;->h(F)V

    goto :goto_8

    :cond_7
    add-int/lit8 v12, v19, -0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v9, v17

    move/from16 v6, v20

    const/4 v5, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_8
    move v8, v2

    move/from16 v20, v6

    const/4 v1, 0x0

    .line 22
    :goto_8
    iget v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    if-ge v8, v2, :cond_a

    .line 23
    iget-boolean v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    if-eqz v2, :cond_9

    .line 24
    iget v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    sub-int v6, v20, v2

    goto :goto_9

    :cond_9
    sub-int v6, v3, v20

    .line 25
    :goto_9
    new-instance v2, Lx/a;

    int-to-float v5, v6

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v5, v5, v9

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-direct {v2, v6, v9, v7, v5}, Lx/a;-><init>(IFFF)V

    .line 26
    invoke-virtual {v2}, Lx/a;->e()Lx/a;

    move-result-object v2

    .line 27
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_a

    :cond_a
    add-int/lit8 v2, v8, -0x1

    .line 28
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    sub-int v5, v2, v5

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_b
    if-ltz v6, :cond_d

    .line 30
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 31
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->c(I)I

    move-result v8

    if-gt v8, v2, :cond_c

    if-ge v8, v5, :cond_b

    goto :goto_c

    :cond_b
    move-object/from16 v8, p1

    goto :goto_d

    :cond_c
    :goto_c
    move-object/from16 v8, p1

    .line 32
    invoke-virtual {v0, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :goto_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    :cond_d
    move-object/from16 v8, p1

    .line 33
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v3, :cond_e

    add-int v1, v5, v10

    .line 34
    invoke-virtual {v0, v1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b(I)I

    move-result v1

    .line 35
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/a;

    invoke-direct {v0, v1, v2}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->e(Landroid/view/View;Lx/a;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_e
    return-void
.end method

.method public f(IF)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->a:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->k()F

    move-result v0

    if-lez p1, :cond_1

    add-float/2addr v0, p2

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    add-float/2addr v0, p1

    :goto_0
    float-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b(I)I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public g()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public h()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->h:Ly/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 3
    iget-boolean p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->a:Z

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->h()I

    move-result p2

    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->c:I

    int-to-float p2, p2

    .line 5
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->e:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->a:Z

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    .line 8
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    invoke-direct {p0, p2}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i(I)I

    move-result p2

    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    iget-boolean p3, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i:Z

    if-eqz p3, :cond_0

    neg-int p1, p1

    .line 2
    :cond_0
    iget p3, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    add-int/2addr p3, p1

    .line 3
    invoke-direct {p0, p3}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i(I)I

    move-result v0

    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    .line 4
    invoke-virtual {p0, p2}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 5
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    sub-int/2addr p2, p3

    add-int/2addr p2, p1

    return p2
.end method

.method public scrollToPosition(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g:I

    if-ge p1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b:I

    invoke-virtual {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->c(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    mul-int v0, v0, p1

    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->d:I

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method
