.class public Lcom/join/mgps/customview/SlidingTabLayout5;
.super Lcom/join/mgps/customview/SlidingTabLayout1;
.source "SlidingTabLayout5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;,
        Lcom/join/mgps/customview/SlidingTabLayout5$c;
    }
.end annotation


# instance fields
.field private J:I

.field private K:I

.field private n0:I

.field private o0:I

.field private p0:Landroid/os/Handler;

.field private q0:Lcom/join/mgps/customview/SlidingTabLayout5$c;

.field private r0:I

.field private s0:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

.field private t0:I

.field private u0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;)V

    const v0, -0x98967f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->r0:I

    .line 3
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->s0:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    const/16 v0, 0x32

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->t0:I

    .line 5
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout5$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/SlidingTabLayout5$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout5;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->u0:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout5;->q(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, -0x98967f

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->r0:I

    .line 9
    sget-object p2, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->s0:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    const/16 p2, 0x32

    .line 10
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->t0:I

    .line 11
    new-instance p2, Lcom/join/mgps/customview/SlidingTabLayout5$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabLayout5$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout5;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->u0:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout5;->q(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x98967f

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->r0:I

    .line 15
    sget-object p2, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->s0:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    const/16 p2, 0x32

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->t0:I

    .line 17
    new-instance p2, Lcom/join/mgps/customview/SlidingTabLayout5$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabLayout5$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout5;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->u0:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout5;->q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic j(Lcom/join/mgps/customview/SlidingTabLayout5;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->r0:I

    return p0
.end method

.method static synthetic k(Lcom/join/mgps/customview/SlidingTabLayout5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->r0:I

    return p1
.end method

.method static synthetic l(Lcom/join/mgps/customview/SlidingTabLayout5;)Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->s0:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    return-object p0
.end method

.method static synthetic m(Lcom/join/mgps/customview/SlidingTabLayout5;Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;)Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->s0:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    return-object p1
.end method

.method static synthetic n(Lcom/join/mgps/customview/SlidingTabLayout5;)Lcom/join/mgps/customview/SlidingTabLayout5$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->q0:Lcom/join/mgps/customview/SlidingTabLayout5$c;

    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/customview/SlidingTabLayout5;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->p0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/customview/SlidingTabLayout5;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->t0:I

    return p0
.end method


# virtual methods
.method protected b(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout5;->c(ILandroid/view/View;)V

    return-void
.end method

.method protected c(ILandroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout5$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout5$a;-><init>(Lcom/join/mgps/customview/SlidingTabLayout5;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->b:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->a:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected d(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 5
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07117e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout5;->c(ILandroid/view/View;)V

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:I

    if-nez v0, :cond_0

    goto/16 :goto_2

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

    sub-float/2addr v3, v6

    mul-float v3, v3, v1

    add-float v1, v4, v3

    :cond_1
    sub-float v3, v1, v2

    .line 12
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->J:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 13
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->K:I

    sub-int v5, v0, v4

    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->n0:I

    sub-int/2addr v5, v6

    .line 14
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    int-to-float v3, v3

    add-float v7, v2, v3

    int-to-float v8, v5

    sub-float v9, v1, v3

    add-int/2addr v5, v4

    int-to-float v10, v5

    .line 15
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->o0:I

    int-to-float v11, v1

    int-to-float v12, v1

    iget-object v13, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v3, v3

    add-float/2addr v2, v3

    int-to-float v6, v5

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->K:I

    add-int/2addr v5, v3

    int-to-float v3, v5

    invoke-direct {v4, v2, v6, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->o0:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    .line 18
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:I

    sub-int v1, v0, v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    int-to-float v7, v0

    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 20
    :goto_1
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 21
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 22
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

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    :goto_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    return v0
.end method

.method protected i()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:I

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->E:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 5
    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 9
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 12
    :goto_1
    iget-boolean v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    if-eqz v3, :cond_2

    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v3, v5, :cond_1

    .line 14
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->TOUCH_SCROLL:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->s0:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->q0:Lcom/join/mgps/customview/SlidingTabLayout5$c;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout5$c;->a(Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->p0:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->u0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->p0:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->u0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method q(Landroid/content/Context;)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:Z

    const p1, -0xb8b00

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:I

    const p1, -0x575758

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    const/high16 p1, -0x1000000

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout5;->setHandler(Landroid/os/Handler;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07117e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->x:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07110f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->J:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0712ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->K:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->n0:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07117d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->o0:I

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:I

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->p0:Landroid/os/Handler;

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->d:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/join/mgps/customview/SlidingTabLayout5$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->q0:Lcom/join/mgps/customview/SlidingTabLayout5$c;

    return-void
.end method
