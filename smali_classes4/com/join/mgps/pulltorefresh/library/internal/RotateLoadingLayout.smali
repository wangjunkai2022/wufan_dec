.class public Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;
.super Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;
.source "RotateLoadingLayout.java"


# static fields
.field static final s:I = 0x4b0


# instance fields
.field private final n:Landroid/view/animation/Animation;

.field private final o:Landroid/graphics/Matrix;

.field private p:F

.field private q:F

.field private final r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    const/16 p1, 0xf

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p4, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->r:Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->o:Landroid/graphics/Matrix;

    .line 5
    iget-object p3, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 6
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->n:Landroid/view/animation/Animation;

    .line 7
    sget-object p3, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p3, 0x4b0

    .line 8
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p3, -0x1

    .line 9
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->o:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->p:F

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->q:F

    :cond_0
    return-void
.end method

.method protected d(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->r:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr p1, v1

    .line 2
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->o:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->p:F

    iget v2, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->q:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected getDefaultDrawableResId()I
    .locals 1

    const v0, 0x7f08031b

    return v0
.end method

.method protected h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;->n()V

    return-void
.end method
