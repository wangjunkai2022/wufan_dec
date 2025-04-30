.class public Lcom/join/mgps/customview/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# static fields
.field public static final h:Ljava/lang/String; = "progress"


# instance fields
.field private a:F

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:[I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x28

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->d:I

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x28

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/CircleProgressView;->d:I

    const/4 v1, 0x5

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 8
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/CircleProgressView;->d:I

    .line 12
    iput v0, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    const/high16 p1, 0x42480000    # 50.0f

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->a:F

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CircleProgressView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/CircleProgressView;->a:F

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/CircleProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->a:F

    return p1
.end method


# virtual methods
.method public c(F)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->a:F

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string p1, "progress"

    .line 3
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0x3e8

    .line 4
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v2, [Landroid/animation/Animator;

    aput-object p1, v1, v3

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 4
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 8
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const-string v12, "#000000"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 11
    iget v1, v13, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v1

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v14, v3

    float-to-double v3, v1

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v6, v3

    const/4 v5, 0x2

    new-array v1, v5, [I

    const-string v3, "#FFFFFF"

    .line 13
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const-string v3, "#efefef"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 14
    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v3, v9

    sub-float v15, v3, v6

    int-to-float v11, v10

    sub-float v8, v11, v6

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v21, 0x0

    move/from16 v23, v15

    move-object v15, v2

    move/from16 v16, v6

    move/from16 v17, v6

    move/from16 v18, v23

    move/from16 v19, v8

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 15
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 16
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    move/from16 v15, v23

    invoke-virtual {v1, v6, v6, v15, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 17
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v3

    move/from16 v3, v16

    move/from16 v4, v17

    const/16 v16, 0x2

    move/from16 v5, v18

    move v7, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 18
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const-string v2, "#cccccc"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v7, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 22
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1, v7, v7, v15, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 24
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const-string v2, "#DDDDDD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v7, v14

    .line 25
    iget v1, v0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v8, v7, v1

    .line 26
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    iget v2, v0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 29
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    sub-float v15, v20, v8

    sub-float v6, v11, v8

    invoke-virtual {v1, v8, v8, v15, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move-object/from16 v18, v5

    move/from16 v5, v17

    move/from16 v17, v8

    move v8, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 31
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-direct {v2, v12, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 35
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    sub-float v3, v20, v7

    sub-float v2, v11, v7

    invoke-virtual {v1, v7, v7, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-float/2addr v14, v12

    .line 37
    iget v1, v0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    int-to-float v1, v1

    add-float/2addr v14, v1

    .line 38
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v12, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 39
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    sub-float v3, v20, v14

    sub-float/2addr v11, v14

    invoke-virtual {v1, v14, v14, v3, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 40
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 41
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 42
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const-string v7, "#f47500"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080d3d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    div-int/lit8 v9, v9, 0x2

    int-to-float v11, v9

    iget v2, v13, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x420c0000    # 35.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    sub-float v2, v11, v2

    mul-int/lit8 v3, v10, 0x46

    div-int/lit8 v3, v3, 0x6e

    int-to-float v3, v3

    iget-object v4, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    iget v2, v0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    move/from16 v2, v17

    invoke-virtual {v1, v2, v2, v15, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 48
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->f:[I

    array-length v2, v1

    .line 49
    new-array v3, v2, [I

    const/4 v8, 0x0

    .line 50
    invoke-static {v1, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-instance v1, Landroid/graphics/SweepGradient;

    const/4 v2, 0x0

    invoke-direct {v1, v11, v11, v3, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 52
    iget v2, v0, Lcom/join/mgps/customview/CircleProgressView;->a:F

    iget v3, v0, Lcom/join/mgps/customview/CircleProgressView;->g:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float v2, v2, v3

    float-to-int v13, v2

    rsub-int/lit8 v2, v13, -0x5a

    int-to-float v2, v2

    .line 53
    div-int/lit8 v3, v10, 0x2

    int-to-float v14, v3

    invoke-virtual {v12, v2, v14, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 54
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 56
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->b:Landroid/graphics/RectF;

    iget v4, v0, Lcom/join/mgps/customview/CircleProgressView;->a:F

    iget-object v6, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x5a

    int-to-float v1, v13

    .line 57
    invoke-virtual {v12, v1, v14, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/join/mgps/customview/CircleProgressView;->a:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v10, 0x1f

    mul-int/lit8 v2, v2, 0xc

    .line 59
    div-int/lit8 v2, v2, 0x6e

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    .line 60
    iget-object v3, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    new-instance v2, Landroid/graphics/SweepGradient;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v11, v11, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 62
    iget-object v3, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v8, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    float-to-int v2, v2

    .line 64
    iget-object v3, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v3, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v9, v2

    int-to-float v2, v9

    mul-int/lit8 v10, v10, 0x3c

    div-int/lit8 v10, v10, 0x6e

    int-to-float v3, v10

    iget-object v4, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/join/mgps/customview/CircleProgressView;->d:I

    const/16 p2, 0x28

    if-gt p1, p2, :cond_0

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/CircleProgressView;->d:I

    .line 3
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/CircleProgressView;->d:I

    .line 4
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColors([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CircleProgressView;->f:[I

    return-void
.end method

.method public setFirstProgressfloat(F)V
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 1
    iput v0, p0, Lcom/join/mgps/customview/CircleProgressView;->g:F

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CircleProgressView;->c(F)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->a:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setValue(F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v0, Lcom/join/mgps/customview/CircleProgressView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/CircleProgressView$a;-><init>(Lcom/join/mgps/customview/CircleProgressView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v0, Lcom/join/mgps/customview/CircleProgressView$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/CircleProgressView$b;-><init>(Lcom/join/mgps/customview/CircleProgressView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
