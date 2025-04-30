.class public Lcom/join/mgps/customview/SlidingTabLayout6;
.super Lcom/join/mgps/customview/SlidingTabLayout1;
.source "SlidingTabLayout6.java"


# instance fields
.field protected J:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->J:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->J:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->J:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->J:I

    return-void
.end method


# virtual methods
.method protected e(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 7
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 8
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    .line 11
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:F

    mul-float v5, v5, v6

    sub-float v7, v3, v6

    mul-float v7, v7, v2

    add-float v2, v5, v7

    mul-float v4, v4, v6

    sub-float v5, v3, v6

    mul-float v5, v5, v1

    add-float v1, v4, v5

    .line 12
    :cond_1
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:F

    sub-float/2addr v3, v4

    sub-float v4, v1, v2

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 13
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->r:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    sub-float/2addr v1, v3

    int-to-float v10, v0

    invoke-direct {v4, v2, v5, v1, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->J:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x0

    .line 16
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:I

    sub-int v1, v0, v1

    int-to-float v8, v1

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 18
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 19
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected i()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:I

    if-ge v1, v2, :cond_6

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->E:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 5
    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->C:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 8
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroidx/viewpager/widget/ViewPager;

    const/high16 v4, -0xcd0000

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 11
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    if-ge v3, v4, :cond_0

    .line 13
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    :cond_0
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->G:Ljava/util/List;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    if-ne v1, v3, :cond_3

    .line 16
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    if-ge v3, v4, :cond_2

    .line 18
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    :cond_2
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 20
    :cond_3
    iget-boolean v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    if-eqz v3, :cond_5

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4

    .line 22
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
