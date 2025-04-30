.class public Lcom/join/mgps/ptr/header/c;
.super Landroid/view/animation/Animation;
.source "StoreHouseBarItem.java"


# instance fields
.field public a:Landroid/graphics/PointF;

.field public b:F

.field public c:I

.field private final d:Landroid/graphics/Paint;

.field private e:F

.field private f:F

.field private g:Landroid/graphics/PointF;

.field private h:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/ptr/header/c;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/join/mgps/ptr/header/c;->e:F

    const v1, 0x3ecccccd    # 0.4f

    .line 4
    iput v1, p0, Lcom/join/mgps/ptr/header/c;->f:F

    .line 5
    iput p1, p0, Lcom/join/mgps/ptr/header/c;->c:I

    .line 6
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-direct {p1, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/c;->a:Landroid/graphics/PointF;

    .line 7
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/join/mgps/ptr/header/c;->a:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v2

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/c;->g:Landroid/graphics/PointF;

    .line 8
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/join/mgps/ptr/header/c;->a:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v2

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, v1

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/c;->h:Landroid/graphics/PointF;

    .line 9
    invoke-virtual {p0, p4}, Lcom/join/mgps/ptr/header/c;->d(I)V

    .line 10
    invoke-virtual {p0, p5}, Lcom/join/mgps/ptr/header/c;->e(I)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/c;->g:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/join/mgps/ptr/header/c;->h:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/join/mgps/ptr/header/c;->d:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/join/mgps/ptr/header/c;->e:F

    .line 2
    iget v0, p0, Lcom/join/mgps/ptr/header/c;->f:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 3
    invoke-virtual {p0, p2}, Lcom/join/mgps/ptr/header/c;->c(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    .line 3
    iput p1, p0, Lcom/join/mgps/ptr/header/c;->b:F

    return-void
.end method

.method public c(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/c;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/c;->d:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public f(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/c;->e:F

    .line 2
    iput p2, p0, Lcom/join/mgps/ptr/header/c;->f:F

    .line 3
    invoke-super {p0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method
