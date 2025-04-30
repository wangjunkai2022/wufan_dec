.class public Lcom/join/mgps/customview/StrokeTextViewNoAnim;
.super Landroid/widget/TextView;
.source "StrokeTextViewNoAnim.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    .line 3
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a(Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    .line 8
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a(Landroid/util/AttributeSet;)V

    .line 10
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    .line 13
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a(Landroid/util/AttributeSet;)V

    .line 15
    iput-object p1, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->StrokeTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 4
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/StrokeTextViewNoAnim;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
