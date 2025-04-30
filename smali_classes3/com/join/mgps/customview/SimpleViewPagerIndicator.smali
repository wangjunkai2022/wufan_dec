.class public Lcom/join/mgps/customview/SimpleViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "SimpleViewPagerIndicator.java"


# static fields
.field private static final k:I = -0x1000000

.field private static final l:I = -0xb8b00


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:F

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:Landroid/widget/ScrollView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SimpleViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xb8b00

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->c:I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->e:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    .line 6
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 7
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->e:Landroid/graphics/Paint;

    iget p2, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->c:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->e:Landroid/graphics/Paint;

    const/high16 p2, 0x41100000    # 9.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private a()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v1, v0

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, -0x1000000

    const/16 v5, 0x11

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v8, 0x2

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    if-eq v2, v9, :cond_2

    if-eq v2, v8, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 7
    iget-object v6, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 13
    :cond_2
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 15
    iget-object v6, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 21
    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 23
    iget-object v6, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 24
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public b(IF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float p1, p1

    add-float/2addr p1, p2

    mul-float v0, v0, p1

    iput v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->d:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->d:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->f:I

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 7
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 8
    iget v1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->f:I

    .line 9
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->f:I

    int-to-double v1, v0

    const-wide v3, 0x3fc3333333333333L    # 0.15

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    int-to-float v6, v1

    const/4 v7, 0x0

    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v8, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->e:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getTv()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTv1()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTv2()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    iget p2, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:I

    if-lez p2, :cond_0

    .line 3
    div-int/2addr p1, p2

    iput p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->f:I

    :cond_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->c:I

    return-void
.end method

.method public setParentScrollView(Landroid/widget/ScrollView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:Landroid/widget/ScrollView;

    return-void
.end method

.method public setTitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->a:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:I

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->a()V

    return-void
.end method

.method public setTv(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/TextView;

    return-void
.end method

.method public setTv1(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    return-void
.end method

.method public setTv2(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    return-void
.end method
