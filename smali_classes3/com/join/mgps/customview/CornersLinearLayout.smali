.class public Lcom/join/mgps/customview/CornersLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CornersLinearLayout.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/CornersLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CornersLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/join/android/app/mgsim/wufun/R$styleable;->CornersLinearLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CornersLinearLayout;->a:F

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CornersLinearLayout;->b:F

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CornersLinearLayout;->c:F

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CornersLinearLayout;->e:F

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CornersLinearLayout;->d:F

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/join/mgps/customview/CornersLinearLayout;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcom/join/mgps/customview/CornersLinearLayout;->g:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/CornersLinearLayout;->a:F

    cmpl-float v3, v2, v4

    if-lez v3, :cond_0

    .line 5
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 6
    iget v4, p0, Lcom/join/mgps/customview/CornersLinearLayout;->b:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/join/mgps/customview/CornersLinearLayout;->c:F

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/join/mgps/customview/CornersLinearLayout;->e:F

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/join/mgps/customview/CornersLinearLayout;->d:F

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    .line 7
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/CornersLinearLayout;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/CornersLinearLayout;->g:I

    .line 4
    iget p2, p0, Lcom/join/mgps/customview/CornersLinearLayout;->f:I

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method
