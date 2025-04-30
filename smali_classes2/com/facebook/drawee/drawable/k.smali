.class public Lcom/facebook/drawee/drawable/k;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressBarDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/c;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->c:Landroid/graphics/RectF;

    const/high16 v0, -0x80000000

    .line 5
    iput v0, p0, Lcom/facebook/drawee/drawable/k;->d:I

    const v0, -0x7fff7f01

    .line 6
    iput v0, p0, Lcom/facebook/drawee/drawable/k;->e:I

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lcom/facebook/drawee/drawable/k;->f:I

    const/16 v0, 0x14

    .line 8
    iput v0, p0, Lcom/facebook/drawee/drawable/k;->g:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/facebook/drawee/drawable/k;->h:I

    .line 10
    iput v0, p0, Lcom/facebook/drawee/drawable/k;->i:I

    .line 11
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->j:Z

    .line 12
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->k:Z

    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p2, p0, Lcom/facebook/drawee/drawable/k;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object p2, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object p2, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 5
    iget-object p2, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->i:I

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->g:I

    div-int/lit8 v2, v2, 0x2

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->i:I

    iget v3, p0, Lcom/facebook/drawee/drawable/k;->g:I

    div-int/lit8 v3, v3, 0x2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 8
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 9
    iget-object p2, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->f:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    mul-int v1, v1, p2

    div-int/lit16 v1, v1, 0x2710

    .line 3
    iget p2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->g:I

    sub-int/2addr v0, v2

    .line 5
    iget-object v3, p0, Lcom/facebook/drawee/drawable/k;->c:Landroid/graphics/RectF;

    int-to-float v4, p2

    int-to-float v5, v0

    add-int/2addr p2, v1

    int-to-float p2, p2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, v4, v5, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/drawable/k;->a(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->f:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    mul-int v1, v1, p2

    div-int/lit16 v1, v1, 0x2710

    .line 3
    iget p2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->c:Landroid/graphics/RectF;

    int-to-float v3, p2

    int-to-float v4, v0

    iget v5, p0, Lcom/facebook/drawee/drawable/k;->g:I

    add-int/2addr p2, v5

    int-to-float p2, p2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v3, v4, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/drawable/k;->a(Landroid/graphics/Canvas;I)V

    return-void
.end method


# virtual methods
.method public d()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/drawee/drawable/k;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/k;-><init>()V

    .line 2
    iget v1, p0, Lcom/facebook/drawee/drawable/k;->d:I

    iput v1, v0, Lcom/facebook/drawee/drawable/k;->d:I

    .line 3
    iget v1, p0, Lcom/facebook/drawee/drawable/k;->e:I

    iput v1, v0, Lcom/facebook/drawee/drawable/k;->e:I

    .line 4
    iget v1, p0, Lcom/facebook/drawee/drawable/k;->f:I

    iput v1, v0, Lcom/facebook/drawee/drawable/k;->f:I

    .line 5
    iget v1, p0, Lcom/facebook/drawee/drawable/k;->g:I

    iput v1, v0, Lcom/facebook/drawee/drawable/k;->g:I

    .line 6
    iget v1, p0, Lcom/facebook/drawee/drawable/k;->h:I

    iput v1, v0, Lcom/facebook/drawee/drawable/k;->h:I

    .line 7
    iget v1, p0, Lcom/facebook/drawee/drawable/k;->i:I

    iput v1, v0, Lcom/facebook/drawee/drawable/k;->i:I

    .line 8
    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/k;->j:Z

    iput-boolean v1, v0, Lcom/facebook/drawee/drawable/k;->j:Z

    .line 9
    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/k;->k:Z

    iput-boolean v1, v0, Lcom/facebook/drawee/drawable/k;->k:Z

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/k;->h:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->k:Z

    const/16 v1, 0x2710

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->d:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/drawee/drawable/k;->c(Landroid/graphics/Canvas;II)V

    .line 4
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->h:I

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->e:I

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/drawable/k;->c(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->d:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/drawee/drawable/k;->b(Landroid/graphics/Canvas;II)V

    .line 6
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->h:I

    iget v1, p0, Lcom/facebook/drawee/drawable/k;->e:I

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/drawable/k;->b(Landroid/graphics/Canvas;II)V

    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->e:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/drawee/drawable/f;->c(I)I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->f:I

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget p1, p0, Lcom/facebook/drawee/drawable/k;->f:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->j:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->k:Z

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->i:I

    return v0
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/k;->j:Z

    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->k:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/k;->k:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->h:I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1
.end method

.method public p(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->f:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->i:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
