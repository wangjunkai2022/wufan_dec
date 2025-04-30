.class public Lcom/join/mgps/customview/CubeRotateView;
.super Landroid/widget/FrameLayout;
.source "CubeRotateView.java"


# static fields
.field private static final l:I = 0x5a


# instance fields
.field private a:Landroid/graphics/Camera;

.field private b:Landroid/graphics/Matrix;

.field private c:Landroid/view/animation/BaseInterpolator;

.field private d:J

.field private e:J

.field private f:Ljava/util/Timer;

.field private g:Z

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/view/animation/BaseInterpolator;

    const-wide/16 v0, 0xbb8

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/customview/CubeRotateView;->d:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/CubeRotateView;->h:F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/view/animation/BaseInterpolator;

    const-wide/16 p1, 0xbb8

    .line 11
    iput-wide p1, p0, Lcom/join/mgps/customview/CubeRotateView;->d:J

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->g:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 13
    iput p2, p0, Lcom/join/mgps/customview/CubeRotateView;->h:F

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    .line 15
    iput-boolean p2, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/customview/CubeRotateView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/view/animation/BaseInterpolator;

    const-wide/16 p1, 0xbb8

    .line 20
    iput-wide p1, p0, Lcom/join/mgps/customview/CubeRotateView;->d:J

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->g:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    iput p2, p0, Lcom/join/mgps/customview/CubeRotateView;->h:F

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    .line 24
    iput-boolean p2, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 25
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 26
    invoke-direct {p0}, Lcom/join/mgps/customview/CubeRotateView;->f()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CubeRotateView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CubeRotateView;->h:F

    return p1
.end method

.method static synthetic b(Lcom/join/mgps/customview/CubeRotateView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    return p1
.end method

.method private c(Landroid/graphics/Canvas;D)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2
    :goto_0
    iget-boolean v5, v0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getDrawingTime()J

    move-result-wide v6

    const-wide v8, -0x3fa9800000000000L    # -90.0

    mul-double v8, v8, p2

    double-to-float v8, v8

    .line 6
    iget-object v9, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 7
    iget-object v9, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, p2, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v12

    double-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 8
    iget-object v9, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v9, v8}, Landroid/graphics/Camera;->rotateY(F)V

    .line 9
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    iget-object v9, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 10
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 11
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    neg-int v9, v4

    int-to-float v10, v9

    neg-int v12, v5

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v8, v10, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 12
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v8, v11, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 15
    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const-wide v13, 0x4056800000000000L    # 90.0

    mul-double v15, p2, v13

    sub-double/2addr v13, v15

    double-to-float v2, v13

    .line 17
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 18
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, p2

    double-to-float v9, v9

    invoke-virtual {v8, v9, v11, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 19
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v8, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 20
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v8}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 21
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 22
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    int-to-float v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 23
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 26
    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;D)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2
    :goto_0
    iget-boolean v5, v0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getDrawingTime()J

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    mul-double v8, v8, p2

    double-to-float v10, v8

    .line 6
    iget-object v11, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v11}, Landroid/graphics/Camera;->save()V

    .line 7
    iget-object v11, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    int-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, p2

    double-to-float v14, v12

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    .line 8
    iget-object v11, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v10, v10, v14

    const/high16 v16, 0x40400000    # 3.0f

    div-float v10, v10, v16

    invoke-virtual {v11, v10}, Landroid/graphics/Camera;->rotateX(F)V

    .line 9
    iget-object v10, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    iget-object v11, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 10
    iget-object v10, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->restore()V

    .line 11
    iget-object v10, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    neg-int v14, v5

    int-to-float v15, v14

    invoke-virtual {v10, v11, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 12
    iget-object v10, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 15
    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const-wide v17, -0x3fa9800000000000L    # -90.0

    add-double v8, v8, v17

    double-to-float v2, v8

    .line 17
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 18
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    int-to-double v8, v14

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v12

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8, v9}, Landroid/graphics/Camera;->translate(FFF)V

    .line 19
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v2, v2, v8

    div-float v2, v2, v16

    invoke-virtual {v5, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 20
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 21
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 22
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 23
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v11, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 26
    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;IJF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    mul-int v1, p2, v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    if-gt v1, v3, :cond_3

    add-int/2addr v0, v1

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p5, v5

    mul-float v4, v4, v5

    int-to-float p2, p2

    mul-float p2, p2, p5

    sub-float/2addr v4, p2

    const/high16 p2, 0x42b40000    # 90.0f

    cmpl-float p2, v4, p2

    if-gtz p2, :cond_3

    const/high16 p2, -0x3d4c0000    # -90.0f

    cmpg-float p2, v4, p2

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    if-ge v1, v2, :cond_2

    int-to-float p2, v0

    goto :goto_0

    :cond_2
    int-to-float p2, v1

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    neg-float p5, p5

    .line 11
    invoke-virtual {v1, p5}, Landroid/graphics/Camera;->rotateX(F)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    neg-float p5, v0

    neg-float v1, p2

    .line 14
    invoke-virtual {v2, p5, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 15
    invoke-virtual {v2, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 16
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 17
    invoke-virtual {p0, p1, v3, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CubeRotateView;->a:Landroid/graphics/Camera;

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Matrix;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/customview/CubeRotateView;->e:J

    .line 4
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CubeRotateView;->f:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/CubeRotateView;->h:F

    float-to-double v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/customview/CubeRotateView;->d(Landroid/graphics/Canvas;D)V

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance v2, Lcom/join/mgps/customview/CubeRotateView$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/CubeRotateView$b;-><init>(Lcom/join/mgps/customview/CubeRotateView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance v2, Lcom/join/mgps/customview/CubeRotateView$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/CubeRotateView$c;-><init>(Lcom/join/mgps/customview/CubeRotateView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-boolean v2, p0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->i:Z

    .line 10
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTimeAnim()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/CubeRotateView;->f:Ljava/util/Timer;

    new-instance v2, Lcom/join/mgps/customview/CubeRotateView$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/customview/CubeRotateView$a;-><init>(Lcom/join/mgps/customview/CubeRotateView;)V

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
