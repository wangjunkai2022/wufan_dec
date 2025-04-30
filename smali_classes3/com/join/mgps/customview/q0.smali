.class public Lcom/join/mgps/customview/q0;
.super Landroid/text/style/ImageSpan;
.source "TagImageSpan.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/q0;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/q0;->a:I

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/q0;->a:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    .line 1
    invoke-virtual {p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 3
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 4
    invoke-virtual {p9, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int/2addr p8, p6

    .line 9
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, v4

    div-int/lit8 p8, p8, 0x2

    add-int/2addr p6, p8

    int-to-float p6, p6

    int-to-float p8, p8

    const v4, 0x3e4cccd0    # 0.20000005f

    mul-float p8, p8, v4

    sub-float/2addr p6, p8

    float-to-int p6, p6

    int-to-float p6, p6

    .line 10
    invoke-virtual {p1, p5, p6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget p6, p0, Lcom/join/mgps/customview/q0;->a:I

    invoke-virtual {p9, p6}, Landroid/graphics/Paint;->setColor(I)V

    const p6, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p6

    .line 15
    invoke-virtual {p9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 16
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p6

    .line 17
    iget p8, p6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p6, p6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p8, p6

    float-to-double v3, p8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p6, v3

    .line 18
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    int-to-float p4, v2

    sub-float/2addr p4, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p4, p3

    add-float/2addr p5, p4

    sub-int/2addr v1, p6

    .line 20
    div-int/lit8 v1, v1, 0x4

    sub-int/2addr p7, v1

    int-to-float p3, p7

    .line 21
    invoke-virtual {p1, p2, p5, p3, p9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 4
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v1

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    .line 6
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x4

    sub-int v0, v1, v2

    add-int/2addr v1, v2

    neg-int v1, v1

    .line 7
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 9
    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 10
    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 11
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
