.class public Lcom/facebook/drawee/drawable/RoundedCornersDrawable;
.super Lcom/facebook/drawee/drawable/h;
.source "RoundedCornersDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;
    }
.end annotation


# instance fields
.field e:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private final f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/graphics/Matrix;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final i:[F

.field final j:[F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final k:Landroid/graphics/Paint;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private l:Z

.field private m:F

.field private n:I

.field private o:I

.field private p:F

.field private q:Z

.field private final r:Landroid/graphics/Path;

.field private final s:Landroid/graphics/Path;

.field private final t:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget-object p1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->OVERLAY_COLOR:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->e:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array v0, p1, [F

    .line 4
    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->i:[F

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->j:[F

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->l:Z

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    .line 9
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->n:I

    .line 10
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->o:I

    .line 11
    iput v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->p:F

    .line 12
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->q:Z

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    .line 14
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->s:Landroid/graphics/Path;

    .line 15
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    return-void
.end method

.method private B()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->s:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->p:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 6
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->l:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 11
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->i:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->p:F

    neg-float v3, v2

    neg-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 15
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->l:Z

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v1

    .line 17
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->s:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_1
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->j:[F

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 21
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->i:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->p:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->s:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 23
    :goto_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->t:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    neg-float v3, v2

    div-float/2addr v3, v1

    neg-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public A(Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->e:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(IF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->n:I

    .line 2
    iput p2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    .line 3
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->B()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->q:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->l:Z

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->B()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    sget-object v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$a;->a:[I

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->e:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->q:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->g:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->g:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->h:Landroid/graphics/Matrix;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->g:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->g:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 12
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 13
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 20
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 21
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->l:Z

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 23
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 24
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float v7, v5, v0

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->right:F

    sub-float v5, v7, v0

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    cmpl-float v0, v3, v1

    if-lez v0, :cond_5

    .line 26
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    add-float v8, v6, v3

    iget-object v9, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->f:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v8, v3

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 28
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 30
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 31
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 33
    :cond_5
    :goto_2
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->n:I

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->r:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 38
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->s:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->p:F

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->B()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public h(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->i:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->B()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->l:Z

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->n:I

    return v0
.end method

.method public l()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->i:[F

    return-object v0
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->q:Z

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->B()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->m:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->B()V

    return-void
.end method

.method public r()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->p:F

    return v0
.end method

.method public t([F)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->i:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "radii should have exactly 8 values"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/h;->e(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->i:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :goto_1
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->B()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->o:I

    return v0
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->o:I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
