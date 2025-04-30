.class public Lcom/join/mgps/customview/WaterProgressView;
.super Landroid/view/View;
.source "WaterProgressView.java"


# static fields
.field private static final D:I = 0x14

.field private static final E:I = 0xa


# instance fields
.field A:Landroid/animation/ValueAnimator;

.field B:Landroid/animation/ValueAnimator;

.field C:Landroid/graphics/Paint;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Path;

.field private r:Landroid/graphics/Path;

.field private s:Landroid/graphics/Rect;

.field private t:I

.field private u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/WaterProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/WaterProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x12c

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->f:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->t:I

    const/high16 v1, 0x41f00000    # 30.0f

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    const/16 v2, 0x7d0

    .line 9
    iput v2, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 10
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->C:Landroid/graphics/Paint;

    .line 11
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->WaterProgressView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const p3, -0x777778

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->a:I

    const p2, -0xffff01

    .line 13
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/customview/WaterProgressView;->b:I

    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->c:I

    const/4 p2, 0x3

    const p3, -0xff0100

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->d:I

    const/4 p2, 0x4

    const/high16 p3, -0x1000000

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->e:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f071194

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070f87

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    const/4 p2, 0x6

    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-direct {p0}, Lcom/join/mgps/customview/WaterProgressView;->i()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/WaterProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->t:I

    return p1
.end method

.method static synthetic b(Lcom/join/mgps/customview/WaterProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/WaterProgressView;->k:I

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/WaterProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/WaterProgressView;->l:I

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/WaterProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    return p1
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/WaterProgressView;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/WaterProgressView;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    const v1, 0x40666666    # 3.6f

    .line 5
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    int-to-float v6, v1

    iget-object v7, p0, Lcom/join/mgps/customview/WaterProgressView;->m:Landroid/graphics/Paint;

    move-object v2, p1

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private g(Landroid/graphics/Canvas;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    const/4 v3, 0x0

    int-to-float v4, v3

    iget v5, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 11
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    mul-int/lit8 v1, v0, 0x3

    if-gt p2, v1, :cond_2

    .line 12
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    mul-int v1, v0, p2

    add-int/2addr v1, v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->t:I

    sub-int/2addr v1, v4

    .line 13
    rem-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_1

    .line 14
    iget-object v5, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    int-to-float v1, v1

    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v7, v6

    iget v8, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    sub-float/2addr v7, v8

    mul-int v0, v0, p2

    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    int-to-float v0, v0

    int-to-float v4, v6

    invoke-virtual {v5, v1, v7, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2

    .line 15
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    int-to-float v1, v1

    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v7, v6

    iget v8, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    add-float/2addr v7, v8

    mul-int v0, v0, p2

    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    int-to-float v0, v0

    int-to-float v4, v6

    invoke-virtual {v5, v1, v7, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    mul-int v0, v0, v1

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 19
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 20
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 23
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    int-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    if-lt v0, v1, :cond_4

    .line 24
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_3

    .line 25
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 26
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 28
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    int-to-float v0, v3

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 29
    iget p2, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    neg-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    :goto_4
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    if-gt p2, v0, :cond_6

    .line 30
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    mul-int v1, v0, p2

    add-int/2addr v1, v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->t:I

    add-int/2addr v1, v4

    .line 31
    rem-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_5

    .line 32
    iget-object v5, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    int-to-float v1, v1

    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v7, v6

    iget v8, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    sub-float/2addr v7, v8

    mul-int v0, v0, p2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    int-to-float v0, v0

    int-to-float v4, v6

    invoke-virtual {v5, v1, v7, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_5

    .line 33
    :cond_5
    iget-object v5, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    int-to-float v1, v1

    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v7, v6

    iget v8, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    add-float/2addr v7, v8

    mul-int v0, v0, p2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    int-to-float v0, v0

    int-to-float v4, v6

    invoke-virtual {v5, v1, v7, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 34
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 36
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 37
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_6
    return-void
.end method

.method private h(Landroid/graphics/Canvas;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->C:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->C:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 5
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 6
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 8
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    int-to-float v1, v1

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    int-to-float v1, v0

    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p2, 0x1

    .line 11
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    mul-int/lit8 v3, v1, 0x3

    if-gt p2, v3, :cond_1

    .line 12
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    mul-int v3, v1, p2

    add-int/2addr v3, v0

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/join/mgps/customview/WaterProgressView;->t:I

    sub-int/2addr v3, v5

    .line 13
    rem-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_0

    .line 14
    iget-object v6, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    int-to-float v3, v3

    iget v7, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v8, v7

    iget v9, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    sub-float/2addr v8, v9

    mul-int v1, v1, p2

    add-int/2addr v1, v0

    sub-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v5, v7

    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 15
    :cond_0
    iget-object v6, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    int-to-float v3, v3

    iget v7, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v8, v7

    iget v9, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    add-float/2addr v8, v9

    mul-int v1, v1, p2

    add-int/2addr v1, v0

    sub-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v5, v7

    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {p2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 19
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 20
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 21
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 22
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    int-to-float v1, v0

    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 23
    iget p2, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    neg-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    :goto_2
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    if-gt p2, v1, :cond_4

    .line 24
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    mul-int v3, v1, p2

    add-int/2addr v3, v0

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/join/mgps/customview/WaterProgressView;->t:I

    add-int/2addr v3, v5

    .line 25
    rem-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_3

    .line 26
    iget-object v6, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    int-to-float v3, v3

    iget v7, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v8, v7

    iget v9, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    sub-float/2addr v8, v9

    mul-int v1, v1, p2

    add-int/2addr v1, v0

    add-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v5, v7

    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    .line 27
    :cond_3
    iget-object v6, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    int-to-float v3, v3

    iget v7, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    int-to-float v8, v7

    iget v9, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    add-float/2addr v8, v9

    mul-int v1, v1, p2

    add-int/2addr v1, v0

    add-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v5, v7

    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 28
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    mul-int v1, v1, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 31
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 32
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_4
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->m:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    .line 11
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Rect;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Path;

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    return-void
.end method

.method private j()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    const/high16 v1, 0x41f00000    # 30.0f

    const v2, 0x3f333333    # 0.7f

    const/16 v3, 0x32

    if-ge v0, v3, :cond_1

    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    .line 2
    iput v1, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    goto :goto_0

    :cond_1
    const/16 v3, 0x50

    if-le v0, v3, :cond_2

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    goto :goto_0

    :cond_2
    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->u:F

    :goto_0
    return-void
.end method

.method private m()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    .line 2
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/join/mgps/customview/WaterProgressView$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/WaterProgressView$a;-><init>(Lcom/join/mgps/customview/WaterProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    return-void
.end method

.method public l()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->l:I

    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    mul-int v1, v1, v0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/WaterProgressView;->h(Landroid/graphics/Canvas;Z)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/WaterProgressView;->h(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-ne v0, p2, :cond_0

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->f:I

    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    :goto_0
    if-ne v1, p2, :cond_1

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    goto :goto_1

    .line 10
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/WaterProgressView;->f:I

    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 11
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->k:I

    .line 12
    iget p2, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->l:I

    .line 13
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    .line 14
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 4
    iget p2, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->k:I

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->l:I

    .line 6
    iget p1, p0, Lcom/join/mgps/customview/WaterProgressView;->v:I

    div-int p1, p2, p1

    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    .line 7
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/WaterProgressView;->m()V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x7d0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/join/mgps/customview/WaterProgressView$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/WaterProgressView$b;-><init>(Lcom/join/mgps/customview/WaterProgressView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public setWaveTime(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    int-to-long v1, p1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
