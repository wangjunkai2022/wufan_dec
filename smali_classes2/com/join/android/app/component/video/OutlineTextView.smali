.class public Lcom/join/android/app/component/video/OutlineTextView;
.super Landroid/widget/TextView;
.source "OutlineTextView.java"


# instance fields
.field private a:Landroid/text/TextPaint;

.field private b:Landroid/text/TextPaint;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->h:F

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->j:Z

    .line 7
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->h:F

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->j:Z

    .line 14
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->h:F

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->j:Z

    .line 21
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->a:Landroid/text/TextPaint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->a:Landroid/text/TextPaint;

    iget v2, p0, Lcom/join/android/app/component/video/OutlineTextView;->g:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->a:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    .line 8
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->f:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->e:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    return-void
.end method

.method private b(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->d:I

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v1, v1

    int-to-float v1, v1

    .line 4
    iget-object v2, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method private c(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v10, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget v7, v0, Lcom/join/android/app/component/video/OutlineTextView;->h:F

    iget v8, v0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    iget-boolean v9, v0, Lcom/join/android/app/component/video/OutlineTextView;->j:Z

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2
    invoke-virtual {v10, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 3
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, v0, Lcom/join/android/app/component/video/OutlineTextView;->a:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget v3, v0, Lcom/join/android/app/component/video/OutlineTextView;->h:F

    iget v4, v0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    iget-boolean v5, v0, Lcom/join/android/app/component/video/OutlineTextView;->j:Z

    move-object v11, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 4
    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 1
    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/join/android/app/component/video/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/OutlineTextView;->c(I)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/join/android/app/component/video/OutlineTextView;->h:F

    iget v6, p0, Lcom/join/android/app/component/video/OutlineTextView;->i:F

    iget-boolean v7, p0, Lcom/join/android/app/component/video/OutlineTextView;->j:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2
    iget v0, p0, Lcom/join/android/app/component/video/OutlineTextView;->e:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/OutlineTextView;->c(I)I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, p2}, Lcom/join/android/app/component/video/OutlineTextView;->b(I)I

    move-result p2

    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    mul-int p2, p2, v1

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->e:F

    .line 3
    iput p4, p0, Lcom/join/android/app/component/video/OutlineTextView;->f:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iput p1, p0, Lcom/join/android/app/component/video/OutlineTextView;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/video/OutlineTextView;->a()V

    return-void
.end method
