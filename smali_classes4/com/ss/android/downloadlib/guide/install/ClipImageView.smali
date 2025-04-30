.class public Lcom/ss/android/downloadlib/guide/install/ClipImageView;
.super Landroid/widget/ImageView;
.source "ClipImageView.java"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Paint;

.field private e:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->c:Landroid/graphics/RectF;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->e:[F

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->c:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 8
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 10
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->d:Landroid/graphics/Paint;

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setClip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    return-void
.end method

.method public setRadius([F)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->e:[F

    :cond_1
    :goto_0
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 2

    if-lez p1, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float p1, p1

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->setRadius([F)V

    :cond_0
    return-void
.end method
