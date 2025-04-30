.class public Lcom/join/mgps/customview/CustomCircleProgressBar;
.super Landroid/view/View;
.source "CustomCircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:F

.field private i:I

.field private j:Landroid/graphics/Paint;

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/CustomCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CustomCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->CustomCircleProgressBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0600a4

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->a:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p2, v2}, Lcom/join/mgps/customview/CustomCircleProgressBar;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f060158

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/4 p3, 0x6

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->d:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {p2, p3}, Lcom/join/mgps/customview/CustomCircleProgressBar;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->e:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Lcom/join/mgps/customview/CustomCircleProgressBar;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/16 p3, 0x8

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    const/4 p2, 0x5

    const/high16 p3, 0x42480000    # 50.0f

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:F

    const/4 p2, 0x2

    const/16 p3, 0x64

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:I

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->i:I

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CustomCircleProgressBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:F

    return p1
.end method

.method public static b(Landroid/content/Context;F)I
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

.method private c(F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->m:Landroid/animation/ValueAnimator;

    .line 2
    new-instance v0, Lcom/join/mgps/customview/CustomCircleProgressBar$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/CustomCircleProgressBar$a;-><init>(Lcom/join/mgps/customview/CustomCircleProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->m:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:F

    iget v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInsideColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:I

    return v0
.end method

.method public declared-synchronized getMaxProgress()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOutsideColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->a:I

    return v0
.end method

.method public getOutsideRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:F

    return v0
.end method

.method public declared-synchronized getProgress()F
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->d:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->e:F

    return v0
.end method

.method public getProgressWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v0, v0

    .line 7
    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:F

    iget-object v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    new-instance v4, Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:F

    sub-float v2, v0, v1

    sub-float v3, v0, v1

    add-float v5, v0, v1

    add-float/2addr v0, v1

    invoke-direct {v4, v2, v3, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->i:I

    invoke-static {v0}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->getDegree(I)F

    move-result v5

    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:F

    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v6, v0, v1

    iget-object v8, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->l:Landroid/graphics/Rect;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/customview/CustomCircleProgressBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->l:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->l:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:F

    mul-float p1, p1, v1

    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    add-float/2addr p1, v0

    float-to-int v0, p1

    .line 4
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-ne p2, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:F

    mul-float p1, p1, v1

    iget p2, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 7
    :goto_1
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInsideColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->c:I

    return-void
.end method

.method public declared-synchronized setMaxProgress(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxProgress should not be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setOutsideColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->a:I

    return-void
.end method

.method public setOutsideRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->b:F

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->g:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->h:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress should not be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setProgressTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->d:I

    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->e:F

    return-void
.end method

.method public setProgressWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CustomCircleProgressBar;->f:F

    return-void
.end method
