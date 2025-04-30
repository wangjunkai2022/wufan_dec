.class public Lcom/papa91/view/RoundedRectangularProgressView;
.super Landroid/view/View;
.source "RoundedRectangularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;
    }
.end annotation


# instance fields
.field animator:Landroid/animation/ValueAnimator;

.field private color:I

.field private dashColor:I

.field private dashWidth:F

.field private height:I

.field private interval:J

.field intervals:[F

.field mHandler:Landroid/os/Handler;

.field mOnProgressListener:Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private playTime:J

.field private progress:F

.field private solidColor:I

.field private startTime:J

.field private strokeWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 3
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    const v0, 0x1a4e90

    .line 4
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    const v0, 0x21ddff

    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    const v0, 0x41221f

    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 6
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v0, v1, p1

    const/4 p1, 0x1

    aput v0, v1, p1

    .line 7
    iput-object v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    const-wide/32 v0, 0xea60

    .line 8
    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    .line 9
    new-instance p1, Lcom/papa91/view/RoundedRectangularProgressView$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RoundedRectangularProgressView$1;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 12
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    const v1, 0x1a4e90

    .line 13
    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    const v1, 0x21ddff

    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    const v1, 0x41221f

    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    const/4 v1, 0x5

    .line 14
    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 15
    iput v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 16
    iput-object v2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    const-wide/32 v0, 0xea60

    .line 17
    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    .line 18
    new-instance v0, Lcom/papa91/view/RoundedRectangularProgressView$1;

    invoke-direct {v0, p0}, Lcom/papa91/view/RoundedRectangularProgressView$1;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    iput-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/papa91/view/RoundedRectangularProgressView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 22
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    const p2, 0x1a4e90

    .line 23
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    const p2, 0x21ddff

    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    const p2, 0x41221f

    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    const/4 p2, 0x5

    .line 24
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 25
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    const/4 p3, 0x2

    new-array p3, p3, [F

    aput p2, p3, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 26
    iput-object p3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    const-wide/32 p1, 0xea60

    .line 27
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    .line 28
    new-instance p1, Lcom/papa91/view/RoundedRectangularProgressView$1;

    invoke-direct {p1, p0}, Lcom/papa91/view/RoundedRectangularProgressView$1;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/RoundedRectangularProgressView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    return p0
.end method

.method static synthetic access$002(Lcom/papa91/view/RoundedRectangularProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    return p1
.end method

.method static synthetic access$102(Lcom/papa91/view/RoundedRectangularProgressView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/papa91/view/RoundedRectangularProgressView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/papa91/view/RoundedRectangularProgressView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->startTime:J

    return-wide p1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/view/RoundedRectangularProgressView;->getDimension(I)I

    move-result p2

    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    const/4 p2, 0x5

    .line 2
    invoke-virtual {p0, p2}, Lcom/papa91/view/RoundedRectangularProgressView;->getDimension(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 3
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    const-string p1, "#AD7C35"

    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    const-string p1, "#F8CE67"

    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    const-string p1, "#1F2241"

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    .line 9
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 13
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method createAnimator()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator(FF)V

    return-void
.end method

.method createAnimator(FF)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 2
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    .line 3
    iget-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    iget-wide v2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/papa91/view/RoundedRectangularProgressView$2;

    invoke-direct {p2, p0}, Lcom/papa91/view/RoundedRectangularProgressView$2;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/papa91/view/RoundedRectangularProgressView$3;

    invoke-direct {p2, p0}, Lcom/papa91/view/RoundedRectangularProgressView$3;-><init>(Lcom/papa91/view/RoundedRectangularProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getCoordinate()[F
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    mul-float v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    return-object v1
.end method

.method getDimension(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/papa91/view/RoundedRectangularProgressView;->dip2px(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public getOnProgressListener()Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mOnProgressListener:Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    return v0
.end method

.method initPath()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->strokeWidth:I

    .line 2
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    int-to-float v2, v0

    .line 3
    iget v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    int-to-float v3, v3

    .line 4
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v3

    add-float/2addr v5, v2

    invoke-direct {v4, v2, v2, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-float v5, v2, v3

    .line 5
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v6, 0x43340000    # 180.0f

    .line 6
    invoke-virtual {v1, v4, v6, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 7
    iget v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    .line 8
    iget v7, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    sub-int/2addr v7, v0

    int-to-float v7, v7

    sub-float/2addr v7, v3

    .line 9
    invoke-virtual {v1, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    new-instance v8, Landroid/graphics/RectF;

    sub-float/2addr v7, v3

    iget v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-direct {v8, v2, v7, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, v8, v0, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 12
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 14
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v1, 0x2

    new-array v3, v1, [F

    new-array v4, v1, [F

    new-array v1, v1, [F

    .line 3
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-virtual {v0, v6, v3, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 5
    invoke-virtual {v0, v5, v4, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 6
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 8
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->solidColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 11
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_0

    .line 16
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    :cond_0
    new-instance v3, Landroid/graphics/DashPathEffect;

    iget-object v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->intervals:[F

    iget v8, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashWidth:F

    invoke-direct {v3, v4, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 18
    iget-object v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 19
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/papa91/view/RoundedRectangularProgressView;->dashColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget v3, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    mul-float v5, v5, v3

    invoke-virtual {v0, v6, v5, v1, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 22
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 23
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->width:I

    .line 3
    iput p2, p0, Lcom/papa91/view/RoundedRectangularProgressView;->height:I

    .line 4
    invoke-virtual {p0}, Lcom/papa91/view/RoundedRectangularProgressView;->initPath()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iget v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator(FF)V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setInterval(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/32 p1, 0xea60

    .line 2
    iput-wide p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->interval:J

    :cond_0
    return-void
.end method

.method public setOnProgressListener(Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mOnProgressListener:Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1
    iput p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress not between 0.0f and 1.0f"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/view/RoundedRectangularProgressView;->createAnimator()V

    .line 5
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->progress:F

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->playTime:J

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/RoundedRectangularProgressView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
