.class public Lcom/join/mgps/customview/HtmlTextView;
.super Landroid/widget/TextView;
.source "HtmlTextView.java"


# instance fields
.field a:Z

.field b:Z

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/HtmlTextView;->a:Z

    const-string p1, "..."

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/HtmlTextView;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/HtmlTextView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/HtmlTextView;->a:Z

    const-string p1, "..."

    .line 7
    iput-object p1, p0, Lcom/join/mgps/customview/HtmlTextView;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/HtmlTextView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/customview/HtmlTextView;->a:Z

    const-string p1, "..."

    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/HtmlTextView;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/customview/HtmlTextView;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/customview/HtmlTextView;->b(II)V

    return-void
.end method

.method public b(II)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-lez p2, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 4
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3fa00000    # 1.25f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v10

    move-object v1, v8

    move-object v2, v9

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 5
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    .line 6
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    div-int/2addr v1, v0

    div-int/2addr p2, v1

    const/4 v1, 0x0

    if-le v0, p2, :cond_2

    if-lez p2, :cond_2

    add-int/lit8 v0, p2, -0x1

    .line 7
    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    .line 8
    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    .line 9
    invoke-virtual {v10, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 10
    iget-object v4, p0, Lcom/join/mgps/customview/HtmlTextView;->c:Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    :goto_0
    int-to-float v5, p1

    add-float/2addr v0, v4

    cmpg-float v0, v5, v0

    if-gez v0, :cond_1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v3, 0x1

    .line 11
    invoke-interface {v8, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/customview/HtmlTextView;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/customview/HtmlTextView;->d:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/HtmlTextView;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    sub-int v0, p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p5, p3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/HtmlTextView;->b(II)V

    .line 3
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/HtmlTextView;->d:Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/customview/HtmlTextView;->b:Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/customview/HtmlTextView;->a:Z

    if-eqz v0, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/customview/HtmlTextView;->b:Z

    :cond_0
    return p1
.end method

.method public setTextViewHtml(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
