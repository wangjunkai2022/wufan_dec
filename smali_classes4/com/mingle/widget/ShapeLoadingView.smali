.class public Lcom/mingle/widget/ShapeLoadingView;
.super Landroid/view/View;
.source "ShapeLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mingle/widget/ShapeLoadingView$Shape;
    }
.end annotation


# static fields
.field private static final m:F = 1.7320508f

.field private static final n:F = 0.25555554f


# instance fields
.field private a:Lcom/mingle/widget/ShapeLoadingView$Shape;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Lcom/nineoldandroids/animation/e;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field public h:Z

.field private i:Landroid/graphics/Paint;

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 3
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Landroid/view/animation/Interpolator;

    .line 4
    new-instance p1, Lcom/nineoldandroids/animation/e;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/e;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->c:Lcom/nineoldandroids/animation/e;

    const p1, 0x3f0d6289

    .line 5
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->g:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->j:F

    .line 8
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 9
    invoke-direct {p0}, Lcom/mingle/widget/ShapeLoadingView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    sget-object p1, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 12
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Landroid/view/animation/Interpolator;

    .line 13
    new-instance p1, Lcom/nineoldandroids/animation/e;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/e;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->c:Lcom/nineoldandroids/animation/e;

    const p1, 0x3f0d6289

    .line 14
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->g:F

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->j:F

    .line 17
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 18
    invoke-direct {p0}, Lcom/mingle/widget/ShapeLoadingView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget-object p1, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 21
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Landroid/view/animation/Interpolator;

    .line 22
    new-instance p1, Lcom/nineoldandroids/animation/e;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/e;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->c:Lcom/nineoldandroids/animation/e;

    const p1, 0x3f0d6289

    .line 23
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->g:F

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->j:F

    .line 26
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    sget-object p1, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 29
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Landroid/view/animation/Interpolator;

    .line 30
    new-instance p1, Lcom/nineoldandroids/animation/e;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/e;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->c:Lcom/nineoldandroids/animation/e;

    const p1, 0x3f0d6289

    .line 31
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->g:F

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->j:F

    .line 34
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 35
    invoke-direct {p0}, Lcom/mingle/widget/ShapeLoadingView;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mingle/shapeloading/R$color;->triangle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mingle/shapeloading/R$color;->view_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mingle/widget/ShapeLoadingView;->d:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mingle/shapeloading/R$color;->circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mingle/widget/ShapeLoadingView;->e:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mingle/widget/ShapeLoadingView;->f:I

    return-void
.end method

.method private c(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    return v0
.end method

.method private d(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getShape()Lcom/mingle/widget/ShapeLoadingView$Shape;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/mingle/widget/ShapeLoadingView$a;->a:[I

    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const v4, 0x3d8930a4

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-boolean v2, v0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    if-eqz v2, :cond_3

    .line 5
    iget v2, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    float-to-double v2, v2

    const-wide v6, 0x3fc3333333333333L    # 0.15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    double-to-float v2, v2

    iput v2, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_2

    .line 6
    sget-object v2, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_TRIANGLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 7
    iput-boolean v5, v0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    .line 8
    iput v9, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 9
    :cond_2
    iget-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->c:Lcom/nineoldandroids/animation/e;

    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    iget v4, v0, Lcom/mingle/widget/ShapeLoadingView;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nineoldandroids/animation/e;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 12
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    mul-float v3, v3, v8

    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    invoke-virtual {v2, v3, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    mul-float v3, v3, v8

    sub-float v3, v9, v3

    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v3

    invoke-virtual {v2, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:F

    iget v4, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    mul-float v3, v3, v4

    .line 15
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v4

    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    mul-float v4, v4, v5

    .line 16
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v5

    sub-float/2addr v5, v3

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v6

    sub-float/2addr v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v5

    add-float/2addr v5, v3

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v3

    sub-float/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 19
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 21
    :cond_3
    iget-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/mingle/shapeloading/R$color;->rect:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v2

    iput v2, v0, Lcom/mingle/widget/ShapeLoadingView;->j:F

    .line 23
    invoke-direct {v0, v7}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v2

    iput v2, v0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 24
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 25
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 26
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 28
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 30
    iput v10, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 31
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 32
    :cond_4
    iget-boolean v2, v0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    if-eqz v2, :cond_6

    .line 33
    iget v2, v0, Lcom/mingle/widget/ShapeLoadingView;->g:F

    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    add-float/2addr v2, v3

    float-to-double v3, v3

    const-wide v11, 0x3fbeb851eb851eb8L    # 0.12

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v11

    double-to-float v3, v3

    iput v3, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    add-float v4, v2, v3

    const v7, 0x3ff33333    # 1.9f

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_5

    .line 35
    sget-object v4, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_RECT:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object v4, v0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 36
    iput-boolean v5, v0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    .line 37
    :cond_5
    iget-object v4, v0, Lcom/mingle/widget/ShapeLoadingView;->c:Lcom/nineoldandroids/animation/e;

    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v7, v0, Lcom/mingle/widget/ShapeLoadingView;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v5, v7}, Lcom/nineoldandroids/animation/e;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 38
    iget-object v4, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 40
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v4

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    div-float/2addr v2, v6

    add-float v4, v2, v8

    .line 41
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v13

    .line 42
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v14

    sub-float v2, v8, v2

    invoke-direct {v0, v2}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v15

    .line 43
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v16

    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v17

    move-object v11, v3

    .line 44
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 45
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v13

    .line 46
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v14

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v15

    .line 47
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v16

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v17

    .line 48
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 49
    invoke-direct {v0, v2}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v13

    .line 50
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v14

    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v15

    .line 51
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v16

    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v17

    .line 52
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 53
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    invoke-direct {v0, v2}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v13

    .line 54
    invoke-direct {v0, v2}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v14

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v15

    .line 55
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v16

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v17

    .line 56
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 57
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 58
    iget-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 60
    :cond_6
    iget-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mingle/shapeloading/R$color;->circle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 62
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->g:F

    .line 63
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v4

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    div-float/2addr v3, v6

    add-float v4, v3, v8

    .line 64
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    const/4 v13, 0x0

    .line 65
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v14

    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v15

    .line 66
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v16

    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v17

    move-object v11, v2

    .line 67
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 68
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v13

    .line 69
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v14

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v15

    .line 70
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v16

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v17

    .line 71
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v3, v8, v3

    .line 72
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v13

    .line 73
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v14

    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v15

    .line 74
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v16

    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v17

    .line 75
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 76
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v13

    .line 77
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v14

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v15

    .line 78
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v16

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v17

    .line 79
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 80
    iput v10, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 82
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 83
    :cond_7
    iget-boolean v2, v0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    if-eqz v2, :cond_9

    .line 84
    iget v2, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    float-to-double v2, v2

    const-wide v11, 0x3fc49f4b8a420dc2L    # 0.1611113

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v11

    double-to-float v2, v2

    iput v2, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 85
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->c:Lcom/nineoldandroids/animation/e;

    iget v11, v0, Lcom/mingle/widget/ShapeLoadingView;->d:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Lcom/mingle/widget/ShapeLoadingView;->e:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v2, v11, v12}, Lcom/nineoldandroids/animation/e;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 86
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 88
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v11

    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 89
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    cmpl-float v3, v3, v9

    if-ltz v3, :cond_8

    .line 90
    sget-object v3, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->a:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 91
    iput-boolean v5, v0, Lcom/mingle/widget/ShapeLoadingView;->h:Z

    .line 92
    iput v9, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 93
    :cond_8
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:F

    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    const v11, 0x3e82d82d

    mul-float v5, v5, v11

    invoke-direct {v0, v5}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v5

    const v12, 0x3fddb3d7

    mul-float v5, v5, v12

    sub-float/2addr v3, v5

    .line 94
    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    iget v12, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    mul-float v12, v12, v11

    invoke-direct {v0, v12}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v12

    sub-float/2addr v5, v12

    .line 95
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v9

    sub-float/2addr v9, v3

    const v12, 0x3f6ed9ec

    invoke-direct {v0, v12}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v12

    invoke-direct {v0, v7}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v13

    invoke-virtual {v2, v9, v5, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 96
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v9

    iget v12, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    mul-float v12, v12, v6

    mul-float v12, v12, v11

    add-float/2addr v12, v7

    invoke-direct {v0, v12}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v6

    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v4

    invoke-direct {v0, v7}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v7

    invoke-virtual {v2, v9, v6, v4, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 97
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v4

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v6

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 98
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 99
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 101
    :cond_9
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 102
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/mingle/shapeloading/R$color;->triangle:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 104
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    const v4, 0x3f5db3d7

    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const v3, 0x3e912614

    .line 106
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    move-result v3

    iput v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:F

    const/high16 v3, 0x3ec00000    # 0.375f

    .line 107
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    move-result v3

    iput v3, v0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 108
    iput v10, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 109
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 110
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
