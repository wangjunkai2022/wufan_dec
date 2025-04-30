.class public Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "EchelonLayoutManager.java"


# static fields
.field private static final g:Ljava/lang/String; = "EchelonLayoutManager"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e:I

    const v0, 0x3f666666    # 0.9f

    .line 3
    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f:F

    .line 4
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->a()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f5eb852    # 0.87f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b:I

    int-to-float p1, p1

    const v0, 0x3fbae148    # 1.46f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 6
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e:I

    iget v1, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b()I

    move-result v1

    iget v2, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    sub-int/2addr v1, v2

    .line 4
    iget v3, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e:I

    rem-int/2addr v3, v2

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    int-to-float v2, v2

    div-float v2, v4, v2

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v9, v0, -0x1

    move v11, v9

    const/4 v12, 0x1

    :goto_0
    if-ltz v11, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b()I

    move-result v15

    iget v10, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    sub-int/2addr v15, v10

    div-int/lit8 v15, v15, 0x2

    int-to-double v13, v15

    move v15, v11

    const-wide v10, 0x3fe999999999999aL    # 0.8

    int-to-double v5, v12

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v5

    int-to-double v5, v1

    float-to-double v10, v2

    .line 7
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v13

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v5, v10

    double-to-int v1, v10

    move-object/from16 v11, p0

    .line 8
    iget v10, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f:F

    move/from16 v17, v9

    float-to-double v9, v10

    add-int/lit8 v7, v12, -0x1

    move/from16 v18, v3

    move/from16 v19, v4

    int-to-double v3, v7

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget v7, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f:F

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v7, v16, v7

    mul-float v7, v7, v2

    sub-float v7, v16, v7

    move-wide/from16 v20, v3

    float-to-double v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v3

    double-to-float v3, v9

    int-to-float v4, v1

    mul-float v4, v4, v16

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 10
    new-instance v7, Lx/a;

    invoke-direct {v7, v1, v3, v2, v4}, Lx/a;-><init>(IFFF)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v8, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v13

    double-to-int v3, v5

    if-gtz v3, :cond_1

    int-to-double v2, v3

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v13

    double-to-int v2, v2

    invoke-virtual {v7, v2}, Lx/a;->i(I)V

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v7, v2}, Lx/a;->g(F)V

    .line 15
    invoke-virtual {v7}, Lx/a;->d()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Lx/a;->f(F)V

    .line 16
    iget v2, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f:F

    float-to-double v2, v2

    move-wide/from16 v4, v20

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v7, v2}, Lx/a;->h(F)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v15, -0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p1

    move-object v6, v11

    move/from16 v9, v17

    move/from16 v4, v19

    const/high16 v5, 0x3f800000    # 1.0f

    move v11, v1

    move v1, v3

    move/from16 v3, v18

    goto/16 :goto_0

    :cond_2
    move/from16 v18, v3

    move/from16 v19, v4

    move-object v11, v6

    move/from16 v17, v9

    const/4 v1, 0x0

    .line 17
    :goto_1
    iget v2, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->d:I

    if-ge v0, v2, :cond_3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b()I

    move-result v2

    sub-int v2, v2, v18

    .line 19
    new-instance v3, Lx/a;

    iget v4, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    int-to-float v4, v4

    div-float v4, v19, v4

    int-to-float v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-direct {v3, v2, v6, v4, v5}, Lx/a;-><init>(IFFF)V

    .line 20
    invoke-virtual {v3}, Lx/a;->e()Lx/a;

    move-result-object v2

    .line 21
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move/from16 v0, v17

    .line 22
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    sub-int v7, v0, v2

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_3
    if-ltz v2, :cond_6

    .line 24
    invoke-virtual {v11, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_5

    if-ge v4, v7, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v9, p1

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v9, p1

    .line 26
    invoke-virtual {v11, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    move-object/from16 v9, p1

    .line 27
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v6, :cond_7

    add-int v0, v7, v14

    .line 28
    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v12

    .line 29
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lx/a;

    .line 30
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 31
    invoke-direct {v11, v12}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->d(Landroid/view/View;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->a()I

    move-result v0

    iget v1, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b:I

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 33
    invoke-virtual {v13}, Lx/a;->d()I

    move-result v3

    iget v0, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b:I

    add-int v4, v2, v0

    invoke-virtual {v13}, Lx/a;->d()I

    move-result v0

    iget v1, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    add-int v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 34
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setPivotX(F)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {v12, v0}, Landroid/view/View;->setPivotY(F)V

    .line 36
    invoke-virtual {v13}, Lx/a;->c()F

    move-result v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setScaleX(F)V

    .line 37
    invoke-virtual {v13}, Lx/a;->c()F

    move-result v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2
    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public a()I
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

.method public b()I
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

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

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

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 3
    invoke-virtual {p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->a()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f5eb852    # 0.87f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->b:I

    int-to-float p2, p2

    const v0, 0x3fbae148    # 1.46f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 4
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->d:I

    .line 6
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->d:I

    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    mul-int v0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e:I

    .line 7
    invoke-direct {p0, p1}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 1
    iget p3, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e:I

    add-int v0, p3, p1

    .line 2
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    add-int/2addr p3, p1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->d:I

    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c:I

    mul-int v1, v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e:I

    .line 3
    invoke-direct {p0, p2}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 4
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e:I

    sub-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method
