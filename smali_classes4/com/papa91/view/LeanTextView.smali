.class public Lcom/papa91/view/LeanTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "LeanTextView.java"


# instance fields
.field private mDegrees:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x11

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    sget-object v0, Lcom/papa91/mix/R$styleable;->LeanTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/papa91/mix/R$styleable;->LeanTextView_degree:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/papa91/view/LeanTextView;->mDegrees:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getmDegrees()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/view/LeanTextView;->mDegrees:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget v0, p0, Lcom/papa91/view/LeanTextView;->mDegrees:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setmDegrees(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/LeanTextView;->mDegrees:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
