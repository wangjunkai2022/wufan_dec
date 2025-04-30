.class public Lcom/join/mgps/customview/r0;
.super Landroid/text/style/ImageSpan;
.source "VerticalImageSpan.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/r0;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/r0;->a:F

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/r0;->a:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int/2addr p8, p6

    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p3

    div-int/lit8 p8, p8, 0x2

    .line 4
    iget p3, p0, Lcom/join/mgps/customview/r0;->a:F

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p7, p3, p4

    if-lez p7, :cond_0

    add-int/2addr p6, p8

    int-to-float p6, p6

    int-to-float p7, p8

    sub-float/2addr p3, p4

    mul-float p7, p7, p3

    sub-float/2addr p6, p7

    float-to-int p3, p6

    goto :goto_0

    :cond_0
    add-int p3, p6, p8

    :goto_0
    int-to-float p3, p3

    .line 5
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p5, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 4
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p3, p1

    .line 5
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 6
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x4

    sub-int p4, p1, p3

    add-int/2addr p1, p3

    neg-int p1, p1

    .line 7
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 9
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 10
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 11
    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->right:I

    return p1
.end method
