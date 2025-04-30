.class public Lcom/join/mgps/customview/EllipseTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "EllipseTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)I
    .locals 9

    .line 1
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, p2, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 3
    invoke-virtual {v8, p2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    int-to-float v5, p3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v7, 0x0

    new-instance v8, Lcom/join/mgps/customview/EllipseTextView$a;

    invoke-direct {v8, v0}, Lcom/join/mgps/customview/EllipseTextView$a;-><init>([I)V

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    .line 5
    aget p0, v0, v1

    add-int/2addr p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    return p2
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p2, v0, v1, p1}, Lcom/join/mgps/customview/EllipseTextView;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)I

    return-void
.end method
