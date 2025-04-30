.class public Lcom/join/mgps/ptr/header/MaterialHeader;
.super Lcom/join/mgps/ptr/PtrUIHeader;
.source "MaterialHeader.java"


# instance fields
.field private a:Lcom/join/mgps/ptr/header/a;

.field private b:F

.field private c:Lcom/join/mgps/ptr/PtrFrameLayout;

.field private d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->b:F

    .line 3
    new-instance p1, Lcom/join/mgps/ptr/header/MaterialHeader$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/MaterialHeader$a;-><init>(Lcom/join/mgps/ptr/header/MaterialHeader;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/MaterialHeader;->j()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->b:F

    .line 7
    new-instance p1, Lcom/join/mgps/ptr/header/MaterialHeader$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/MaterialHeader$a;-><init>(Lcom/join/mgps/ptr/header/MaterialHeader;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/MaterialHeader;->j()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/ptr/PtrUIHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->b:F

    .line 11
    new-instance p1, Lcom/join/mgps/ptr/header/MaterialHeader$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/ptr/header/MaterialHeader$a;-><init>(Lcom/join/mgps/ptr/header/MaterialHeader;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/MaterialHeader;->j()V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/ptr/header/MaterialHeader;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->b:F

    return p0
.end method

.method static synthetic g(Lcom/join/mgps/ptr/header/MaterialHeader;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->b:F

    return p1
.end method

.method static synthetic h(Lcom/join/mgps/ptr/header/MaterialHeader;)Lcom/join/mgps/ptr/header/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/join/mgps/ptr/header/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/a;->i(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a;->stop()V

    return-void
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;ZBLcom/join/mgps/ptr/indicator/a;)V
    .locals 2

    .line 1
    invoke-virtual {p4}, Lcom/join/mgps/ptr/indicator/a;->c()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p4, 0x2

    if-ne p3, p4, :cond_0

    .line 2
    iget-object p3, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float p4, p4, p1

    float-to-int p4, p4

    invoke-virtual {p3, p4}, Lcom/join/mgps/ptr/header/a;->setAlpha(I)V

    .line 3
    iget-object p3, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/join/mgps/ptr/header/a;->q(Z)V

    const p3, 0x3f4ccccd    # 0.8f

    mul-float p4, p1, p3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {v0, v1, p3}, Lcom/join/mgps/ptr/header/a;->n(FF)V

    .line 5
    iget-object p3, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p3, p2}, Lcom/join/mgps/ptr/header/a;->h(F)V

    const/high16 p2, -0x41800000    # -0.25f

    const p3, 0x3ecccccd    # 0.4f

    mul-float p3, p3, p1

    add-float/2addr p3, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float p3, p3, p1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {p1, p3}, Lcom/join/mgps/ptr/header/a;->k(F)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public c(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->b:F

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a;->stop()V

    return-void
.end method

.method public d(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a;->setAlpha(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a;->start()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {v4}, Lcom/join/mgps/ptr/header/a;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget v2, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->b:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v2, v2, v3, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {v1, p1}, Lcom/join/mgps/ptr/header/a;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a;->getIntrinsicHeight()I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {p2}, Lcom/join/mgps/ptr/header/a;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setColorSchemeColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->a:Lcom/join/mgps/ptr/header/a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a;->j([I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/ptr/header/MaterialHeader$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/ptr/header/MaterialHeader$b;-><init>(Lcom/join/mgps/ptr/header/MaterialHeader;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    new-instance v2, Lcom/join/mgps/ptr/header/MaterialHeader$c;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/ptr/header/MaterialHeader$c;-><init>(Lcom/join/mgps/ptr/header/MaterialHeader;Lcom/join/mgps/ptr/e;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader;->c:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lcom/join/mgps/ptr/e;)V

    return-void
.end method
