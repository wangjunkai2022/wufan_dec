.class public Lcom/join/mgps/customview/CircleDownloadProgressBar;
.super Landroid/view/View;
.source "CircleDownloadProgressBar.java"


# static fields
.field private static m:I = 0x64


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/content/Context;

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/CircleDownloadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CircleDownloadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x64

    .line 4
    iput p3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    const/16 p3, -0x5a

    .line 5
    iput p3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->j:I

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/content/Context;

    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p3, 0x64

    .line 9
    iput p3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    const/16 p3, -0x5a

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->j:I

    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CircleDownloadProgressBar;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c:I

    return p1
.end method

.method static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->m:I

    return v0
.end method


# virtual methods
.method public c(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/graphics/Paint;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:Landroid/graphics/Paint;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/content/Context;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->CircleDownloadProgressBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->d:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->k:I

    const/4 v0, 0x3

    const/16 v2, 0x14

    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 9
    iget-object v3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->l:I

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->a:I

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 3
    iget v3, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    div-int/2addr v3, v2

    sub-int v3, v1, v3

    .line 4
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:Landroid/graphics/Paint;

    iget v6, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/graphics/Paint;

    iget v6, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->d:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/graphics/Paint;

    iget v6, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    new-instance v8, Landroid/graphics/RectF;

    sub-int v4, v1, v3

    int-to-float v4, v4

    add-int v6, v1, v3

    int-to-float v7, v6

    invoke-direct {v8, v4, v4, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    iget-boolean v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->b:Z

    if-eqz v4, :cond_0

    .line 15
    new-instance v4, Landroid/graphics/LinearGradient;

    div-int/2addr v6, v2

    int-to-float v6, v6

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v13, v7

    new-array v14, v2, [I

    const/4 v2, 0x0

    iget v7, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->a:I

    aput v7, v14, v2

    iget v2, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->l:I

    aput v2, v14, v5

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v9, v4

    move v10, v6

    move v12, v6

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 16
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v5, -0x3cc90000    # -183.0f

    .line 17
    invoke-virtual {v2, v5, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 18
    invoke-virtual {v4, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 19
    iget-object v2, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:Landroid/graphics/Paint;

    iget v4, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->k:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    int-to-float v1, v1

    int-to-float v2, v3

    .line 21
    iget-object v3, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 22
    iget v1, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->j:I

    int-to-float v9, v1

    iget v1, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c:I

    neg-int v1, v1

    int-to-float v10, v1

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    .line 9
    sget v1, Lcom/join/mgps/customview/CircleDownloadProgressBar;->m:I

    if-le p1, v1, :cond_0

    .line 10
    iput v1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    .line 11
    iput v1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    :goto_0
    sub-int/2addr p1, v0

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    sget v1, Lcom/join/mgps/customview/CircleDownloadProgressBar;->m:I

    div-int/2addr p1, v1

    .line 13
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    .line 14
    iget v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 15
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    new-instance p1, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;-><init>(Lcom/join/mgps/customview/CircleDownloadProgressBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->setProgress(I)V

    return-void

    .line 2
    :cond_0
    sget p2, Lcom/join/mgps/customview/CircleDownloadProgressBar;->m:I

    const/16 v0, 0x168

    if-le p1, p2, :cond_1

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c:I

    goto :goto_0

    .line 5
    :cond_1
    iput p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:I

    mul-int/lit16 p1, p1, 0x168

    .line 6
    div-int/2addr p1, p2

    iput p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c:I

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStartAngle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->j:I

    return-void
.end method
