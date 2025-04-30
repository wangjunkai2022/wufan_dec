.class public Lcom/join/mgps/customview/LightningView;
.super Landroid/view/View;
.source "LightningView.java"


# instance fields
.field private a:Landroid/graphics/Shader;

.field private b:Landroid/graphics/Matrix;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Z

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/animation/ValueAnimator;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->d:I

    iput p1, p0, Lcom/join/mgps/customview/LightningView;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/LightningView;->f:F

    iput v0, p0, Lcom/join/mgps/customview/LightningView;->g:F

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->k:Z

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/LightningView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->d:I

    iput p1, p0, Lcom/join/mgps/customview/LightningView;->e:I

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/join/mgps/customview/LightningView;->f:F

    iput p2, p0, Lcom/join/mgps/customview/LightningView;->g:F

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->k:Z

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/LightningView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->d:I

    iput p1, p0, Lcom/join/mgps/customview/LightningView;->e:I

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/LightningView;->f:F

    iput p2, p0, Lcom/join/mgps/customview/LightningView;->g:F

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->k:Z

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/customview/LightningView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/LightningView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LightningView;->f:F

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/LightningView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->f:F

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/LightningView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LightningView;->d:I

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/LightningView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LightningView;->g:F

    return p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/LightningView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LightningView;->g:F

    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/LightningView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LightningView;->e:I

    return p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LightningView;->b:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Shader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LightningView;->a:Landroid/graphics/Shader;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/LightningView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    return p1
.end method

.method static synthetic j(Lcom/join/mgps/customview/LightningView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private k()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/LightningView;->i:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/LightningView;->c:Landroid/graphics/Paint;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/LightningView;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/join/mgps/customview/LightningView$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/LightningView$a;-><init>(Lcom/join/mgps/customview/LightningView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/LightningView;->k:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/LightningView$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/LightningView$b;-><init>(Lcom/join/mgps/customview/LightningView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/customview/LightningView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/LightningView;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/join/mgps/customview/LightningView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget p3, p0, Lcom/join/mgps/customview/LightningView;->d:I

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/join/mgps/customview/LightningView;->d:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    iput p3, p0, Lcom/join/mgps/customview/LightningView;->e:I

    .line 5
    iget p3, p0, Lcom/join/mgps/customview/LightningView;->d:I

    if-lez p3, :cond_0

    .line 6
    new-instance p3, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget p4, p0, Lcom/join/mgps/customview/LightningView;->d:I

    int-to-float v3, p4

    iget p4, p0, Lcom/join/mgps/customview/LightningView;->e:I

    div-int/lit8 p4, p4, 0x3

    int-to-float v4, p4

    const/4 p4, 0x6

    new-array v5, p4, [I

    fill-array-data v5, :array_0

    new-array v6, p4, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p3, p0, Lcom/join/mgps/customview/LightningView;->a:Landroid/graphics/Shader;

    .line 7
    iget-object p4, p0, Lcom/join/mgps/customview/LightningView;->c:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8
    iget-object p3, p0, Lcom/join/mgps/customview/LightningView;->c:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/join/mgps/customview/LightningView;->b:Landroid/graphics/Matrix;

    .line 10
    iget p4, p0, Lcom/join/mgps/customview/LightningView;->d:I

    mul-int/lit8 p4, p4, -0x2

    int-to-float p4, p4

    iget v0, p0, Lcom/join/mgps/customview/LightningView;->e:I

    int-to-float v0, v0

    invoke-virtual {p3, p4, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 11
    iget-object p3, p0, Lcom/join/mgps/customview/LightningView;->a:Landroid/graphics/Shader;

    iget-object p4, p0, Lcom/join/mgps/customview/LightningView;->b:Landroid/graphics/Matrix;

    invoke-virtual {p3, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 12
    iget-object p3, p0, Lcom/join/mgps/customview/LightningView;->i:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xffffff
        0x40ffffff    # 7.9999995f
        0xffffff
        0x40ffffff    # 7.9999995f
        0xffffff
        0xffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3eeb851f    # 0.46f
        0x3f400000    # 0.75f
        0x3f428f5c    # 0.76f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAutoRun(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LightningView;->k:Z

    return-void
.end method
