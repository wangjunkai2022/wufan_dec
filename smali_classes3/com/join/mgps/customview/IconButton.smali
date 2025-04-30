.class public Lcom/join/mgps/customview/IconButton;
.super Landroid/widget/Button;
.source "IconButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/IconButton$DrawablePositions;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Lcom/join/mgps/customview/IconButton$DrawablePositions;

.field protected c:I

.field d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->d:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->d:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/IconButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->d:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/IconButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/IconButton;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/IconButton;->d:Landroid/graphics/Rect;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->IconButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/IconButton;->setIconPadding(I)V

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    iget-object p4, p0, Lcom/join/mgps/customview/IconButton;->d:Landroid/graphics/Rect;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/IconButton;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/IconButton;->b:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    sget-object p3, Lcom/join/mgps/customview/IconButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 7
    :goto_0
    iget p3, p0, Lcom/join/mgps/customview/IconButton;->a:I

    iget v1, p0, Lcom/join/mgps/customview/IconButton;->c:I

    mul-int v1, v1, p2

    add-int/2addr p3, v1

    add-int/2addr p3, p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    int-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    sub-double/2addr p1, v3

    double-to-int p1, p1

    neg-int p2, p1

    .line 9
    iget p3, p0, Lcom/join/mgps/customview/IconButton;->c:I

    add-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 10
    sget-object p2, Lcom/join/mgps/customview/IconButton$a;->a:[I

    iget-object p3, p0, Lcom/join/mgps/customview/IconButton;->b:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v0, :cond_3

    if-eq p2, p4, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0, p5, p1, p5, p2}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, p1, p2, p1, p3}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, p5, p2, p1, p3}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p0, p1, p2, p5, p3}, Landroid/widget/Button;->setPadding(IIII)V

    :goto_1
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/join/mgps/customview/IconButton;->a:I

    .line 3
    sget-object p1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->b:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/IconButton;->a:I

    .line 5
    sget-object p1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->LEFT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->b:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/IconButton;->a:I

    .line 7
    sget-object p1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->b:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->NONE:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->b:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method

.method public setIconPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/IconButton;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method
