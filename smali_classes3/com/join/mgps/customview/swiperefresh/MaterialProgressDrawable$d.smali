.class Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:[I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/Path;

.field private q:F

.field private r:D

.field private s:I

.field private t:I

.field private u:I

.field private final v:Landroid/graphics/Paint;

.field private w:I

.field private x:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->e:F

    .line 6
    iput v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->f:F

    .line 7
    iput v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->g:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 8
    iput v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->h:F

    const/high16 v2, 0x40200000    # 2.5f

    .line 9
    iput v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->i:F

    .line 10
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->v:Landroid/graphics/Paint;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 12
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->o:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p:Landroid/graphics/Path;

    .line 4
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    :goto_0
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->i:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q:F

    mul-float v0, v0, v1

    .line 7
    iget-wide v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->r:D

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v5

    double-to-float v1, v1

    .line 8
    iget-wide v5, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->r:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v5, v5, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v2

    double-to-float v2, v5

    .line 9
    iget-object v3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p:Landroid/graphics/Path;

    iget v5, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->s:I

    int-to-float v5, v5

    iget v6, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q:F

    mul-float v5, v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p:Landroid/graphics/Path;

    iget v4, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->s:I

    int-to-float v4, v4

    iget v5, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q:F

    mul-float v4, v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v6, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->t:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p:Landroid/graphics/Path;

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr p2, p3

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p2, p3

    .line 15
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    .line 16
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    .line 17
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 18
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->p:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private h()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public A([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->j:[I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->z(I)V

    return-void
.end method

.method public B(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->f:F

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q()V

    return-void
.end method

.method public C(II)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 2
    iget-wide v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->r:D

    const/high16 p2, 0x40000000    # 2.0f

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->h:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_1
    double-to-float p1, p1

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->i:F

    return-void
.end method

.method public D(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->g:F

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q()V

    return-void
.end method

.method public E(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->o:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->o:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q()V

    :cond_0
    return-void
.end method

.method public F(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->e:F

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q()V

    return-void
.end method

.method public G(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->h:F

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q()V

    return-void
.end method

.method public H()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->e:F

    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->l:F

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->f:F

    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->m:F

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->g:F

    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->n:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->a:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->i:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->e:F

    iget v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->g:F

    add-float/2addr v1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v1, v1, v3

    .line 5
    iget v4, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->f:F

    add-float/2addr v4, v2

    mul-float v4, v4, v3

    sub-float/2addr v4, v1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->x:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v1, v4

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 9
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 10
    sget-object v1, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->I:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 11
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->u:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->v:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->u:I

    return v0
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->r:D

    return-wide v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->f:F

    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->i:F

    return v0
.end method

.method public g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->j:[I

    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->h()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->g:F

    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->e:F

    return v0
.end method

.method public k()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->j:[I

    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->k:I

    aget v0, v0, v1

    return v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->m:F

    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->n:F

    return v0
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->l:F

    return v0
.end method

.method public o()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->h:F

    return v0
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->z(I)V

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->l:F

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->m:F

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->n:F

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->F(F)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->B(F)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->D(F)V

    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->u:I

    return-void
.end method

.method public t(FF)V
    .locals 0

    float-to-int p1, p1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->s:I

    float-to-int p1, p2

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->t:I

    return-void
.end method

.method public u(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q:F

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q()V

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->w:I

    return-void
.end method

.method public w(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->r:D

    return-void
.end method

.method public x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->x:I

    return-void
.end method

.method public y(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->q()V

    return-void
.end method

.method public z(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->k:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->j:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->x:I

    return-void
.end method
