.class public Lcom/join/mgps/customview/MStarBar;
.super Landroid/view/View;
.source "MStarBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MStarBar$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/join/mgps/customview/MStarBar$a;

.field private h:Landroid/graphics/Paint;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/MStarBar;->a:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/MStarBar;->i:Z

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/MStarBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 8
    iput p3, p0, Lcom/join/mgps/customview/MStarBar;->a:I

    const/4 p3, 0x5

    .line 9
    iput p3, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    const/4 p3, 0x0

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/join/mgps/customview/MStarBar;->i:Z

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/MStarBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    iget v2, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/MStarBar;->a:I

    const/4 p2, 0x5

    const/high16 v1, 0x41a00000    # 20.0f

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    const/4 p2, 0x3

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/customview/MStarBar;->f:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/MStarBar;->i:Z

    const/4 p2, 0x4

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/join/mgps/customview/MStarBar;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/customview/MStarBar;->e:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/MStarBar;->h:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/MStarBar;->h:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/join/mgps/customview/MStarBar;->e:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public getStarMark()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/MStarBar;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/customview/MStarBar;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/MStarBar;->f:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/join/mgps/customview/MStarBar;->a:I

    iget v4, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    add-int v5, v3, v4

    mul-int v5, v5, v1

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/MStarBar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v6

    if-lez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/customview/MStarBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    float-to-int v1, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v7, 0x0

    const/4 v1, 0x1

    cmpl-float v0, v0, v7

    if-nez v0, :cond_2

    const/4 v6, 0x1

    :goto_1
    int-to-float v0, v6

    .line 9
    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 10
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->a:I

    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/customview/MStarBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    :goto_2
    int-to-float v0, v8

    .line 12
    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    sub-float/2addr v1, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 13
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->a:I

    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    int-to-float v3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/customview/MStarBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 15
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->a:I

    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    int-to-float v0, v0

    iget v3, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    float-to-int v4, v3

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    div-float/2addr v3, v4

    mul-float v3, v3, v0

    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/customview/MStarBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    iget v3, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    int-to-float v4, v3

    mul-float v4, v4, v0

    int-to-float v5, v3

    iget-object v6, p0, Lcom/join/mgps/customview/MStarBar;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    iget p2, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    mul-int v0, p1, p2

    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->a:I

    add-int/lit8 p2, p2, -0x1

    mul-int v1, v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget v2, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget v2, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setIntegerMark(Z)V
    .locals 0

    return-void
.end method

.method public setOnStarChangeListener(Lcom/join/mgps/customview/MStarBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MStarBar;->g:Lcom/join/mgps/customview/MStarBar$a;

    return-void
.end method

.method public setStarCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setStarMark(D)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/MStarBar;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/MStarBar;->g:Lcom/join/mgps/customview/MStarBar$a;

    if-eqz p1, :cond_1

    .line 5
    iget p2, p0, Lcom/join/mgps/customview/MStarBar;->d:F

    invoke-interface {p1, p2}, Lcom/join/mgps/customview/MStarBar$a;->a(F)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
