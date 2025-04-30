.class public Lcom/papa91/view/CountDownView;
.super Landroid/view/View;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/CountDownView$OnCountDownListener;,
        Lcom/papa91/view/CountDownView$StatusEnum;
    }
.end annotation


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field private circleAnimator:Landroid/animation/ValueAnimator;

.field private circleValue:F

.field private curAngle:I

.field handler:Landroid/os/Handler;

.field private loadSuccessColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPathCircle:Landroid/graphics/Path;

.field private mPathCircleDst:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private mStatus:Lcom/papa91/view/CountDownView$StatusEnum;

.field private minAngle:I

.field onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

.field private pointerPath:Landroid/graphics/Path;

.field private progressColor:I

.field private progressRadius:F

.field private progressWidth:F

.field private startAngle:I

.field private successPath:Landroid/graphics/Path;

.field private successValue:F

.field private sweepAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/papa91/view/CountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/papa91/view/CountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, -0x5a

    .line 4
    iput p1, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    .line 5
    iput p1, p0, Lcom/papa91/view/CountDownView;->minAngle:I

    const/16 p1, 0x78

    .line 6
    iput p1, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/papa91/view/CountDownView;->curAngle:I

    .line 8
    new-instance p1, Lcom/papa91/view/CountDownView$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/CountDownView$1;-><init>(Lcom/papa91/view/CountDownView;)V

    iput-object p1, p0, Lcom/papa91/view/CountDownView;->handler:Landroid/os/Handler;

    const-string p1, "#ffffff"

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/papa91/view/CountDownView;->progressColor:I

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa91/view/CountDownView;->loadSuccessColor:I

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/papa91/view/CountDownView;->dip2px(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    .line 12
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->initPaint()V

    .line 13
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->initPath()V

    .line 14
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->initAnim()V

    return-void
.end method

.method static synthetic access$002(Lcom/papa91/view/CountDownView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/CountDownView;->circleValue:F

    return p1
.end method

.method static synthetic access$102(Lcom/papa91/view/CountDownView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/CountDownView;->successValue:F

    return p1
.end method

.method private initAnim()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/view/CountDownView;->circleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    new-instance v1, Lcom/papa91/view/CountDownView$2;

    invoke-direct {v1, p0}, Lcom/papa91/view/CountDownView$2;-><init>(Lcom/papa91/view/CountDownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initPaint()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lcom/papa91/view/CountDownView;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private initPath()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircle:Landroid/graphics/Path;

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    return-void
.end method

.method private loadLoading()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/view/CountDownView$StatusEnum;->Loading:Lcom/papa91/view/CountDownView$StatusEnum;

    invoke-direct {p0, v0}, Lcom/papa91/view/CountDownView;->setStatus(Lcom/papa91/view/CountDownView$StatusEnum;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private loadSuccess()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->resetPath()V

    .line 2
    sget-object v0, Lcom/papa91/view/CountDownView$StatusEnum;->LoadSuccess:Lcom/papa91/view/CountDownView$StatusEnum;

    invoke-direct {p0, v0}, Lcom/papa91/view/CountDownView;->setStatus(Lcom/papa91/view/CountDownView$StatusEnum;)V

    .line 3
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->startSuccessAnim()V

    return-void
.end method

.method private resetPath()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/view/CountDownView;->successValue:F

    .line 2
    iput v0, p0, Lcom/papa91/view/CountDownView;->circleValue:F

    .line 3
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircle:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private setStatus(Lcom/papa91/view/CountDownView$StatusEnum;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/CountDownView;->mStatus:Lcom/papa91/view/CountDownView$StatusEnum;

    return-void
.end method

.method private startSuccessAnim()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->circleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/papa91/view/CountDownView$3;

    invoke-direct {v1, p0}, Lcom/papa91/view/CountDownView$3;-><init>(Lcom/papa91/view/CountDownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 5
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/view/CountDownView;->circleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 6
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method dip2px(I)I
    .locals 2

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mStatus:Lcom/papa91/view/CountDownView$StatusEnum;

    sget-object v1, Lcom/papa91/view/CountDownView$StatusEnum;->Loading:Lcom/papa91/view/CountDownView$StatusEnum;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 4
    iget v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    iget v1, p0, Lcom/papa91/view/CountDownView;->minAngle:I

    if-ne v0, v1, :cond_0

    .line 5
    iget v4, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 6
    :cond_0
    iget v4, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    const/16 v5, 0x14

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_1

    if-le v0, v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x6

    .line 7
    iput v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    if-le v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x6

    .line 8
    iput v4, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 9
    :cond_2
    iget v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    add-int/2addr v1, v6

    if-le v0, v1, :cond_3

    .line 10
    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    .line 11
    iput v0, p0, Lcom/papa91/view/CountDownView;->minAngle:I

    .line 12
    iput v5, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    .line 13
    :cond_3
    iget v0, p0, Lcom/papa91/view/CountDownView;->curAngle:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/papa91/view/CountDownView;->curAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/papa91/view/CountDownView;->progressRadius:F

    invoke-virtual {p1, v0, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 14
    new-instance v5, Landroid/graphics/RectF;

    iget v0, p0, Lcom/papa91/view/CountDownView;->progressRadius:F

    mul-float v1, v0, v2

    mul-float v0, v0, v2

    invoke-direct {v5, v3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/papa91/view/CountDownView;->startAngle:I

    int-to-float v6, v0

    iget v0, p0, Lcom/papa91/view/CountDownView;->sweepAngle:I

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 16
    :cond_4
    sget-object v1, Lcom/papa91/view/CountDownView$StatusEnum;->LoadSuccess:Lcom/papa91/view/CountDownView$StatusEnum;

    if-ne v0, v1, :cond_6

    .line 17
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/papa91/view/CountDownView;->loadSuccessColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircle:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    mul-float v5, v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    mul-float v6, v6, v2

    sub-float/2addr v5, v6

    invoke-direct {v1, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 19
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/papa91/view/CountDownView;->mPathCircle:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 20
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/papa91/view/CountDownView;->circleValue:F

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    mul-float v1, v1, v4

    iget-object v4, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 21
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    iget v0, p0, Lcom/papa91/view/CountDownView;->circleValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 24
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x5

    mul-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x5

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 27
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/papa91/view/CountDownView;->successPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 28
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget v2, p0, Lcom/papa91/view/CountDownView;->successValue:F

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    mul-float v2, v2, v4

    iget-object v4, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 29
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->mPathCircleDst:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 30
    iget p1, p0, Lcom/papa91/view/CountDownView;->successValue:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/papa91/view/CountDownView;->onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

    if-eqz p1, :cond_6

    .line 31
    invoke-interface {p1}, Lcom/papa91/view/CountDownView$OnCountDownListener;->onSuccessFinish()V

    goto :goto_0

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->pointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/papa91/view/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/papa91/view/CountDownView;->progressRadius:F

    mul-float p1, p1, v1

    iget v0, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget p2, p0, Lcom/papa91/view/CountDownView;->progressRadius:F

    mul-float p2, p2, v1

    iget v0, p0, Lcom/papa91/view/CountDownView;->progressWidth:F

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 7
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/CountDownView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/view/CountDownView;->start()V

    return-void
.end method

.method public setOnCountDownListener(Lcom/papa91/view/CountDownView$OnCountDownListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/CountDownView;->onCountDownListener:Lcom/papa91/view/CountDownView$OnCountDownListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->resetPath()V

    .line 2
    sget-object v0, Lcom/papa91/view/CountDownView$StatusEnum;->LoadSuccess:Lcom/papa91/view/CountDownView$StatusEnum;

    invoke-direct {p0, v0}, Lcom/papa91/view/CountDownView;->setStatus(Lcom/papa91/view/CountDownView$StatusEnum;)V

    .line 3
    invoke-direct {p0}, Lcom/papa91/view/CountDownView;->startSuccessAnim()V

    return-void
.end method
