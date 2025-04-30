.class public Lcom/join/mgps/customview/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lcom/join/mgps/customview/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/TabPageIndicator$e;,
        Lcom/join/mgps/customview/TabPageIndicator$d;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/CharSequence;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Lcom/join/mgps/customview/IcsLinearLayout;

.field private d:Landroidx/viewpager/widget/ViewPager;

.field private e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private f:I

.field private g:I

.field private h:Lcom/join/mgps/customview/TabPageIndicator$d;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    .line 1
    sput-object v0, Lcom/join/mgps/customview/TabPageIndicator;->m:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Lcom/join/mgps/customview/TabPageIndicator$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/TabPageIndicator$a;-><init>(Lcom/join/mgps/customview/TabPageIndicator;)V

    iput-object p2, p0, Lcom/join/mgps/customview/TabPageIndicator;->b:Landroid/view/View$OnClickListener;

    const p2, -0x969697

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/TabPageIndicator;->i:I

    const p2, -0xa81da

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/TabPageIndicator;->j:I

    const p2, 0x7f080768

    .line 6
    iput p2, p0, Lcom/join/mgps/customview/TabPageIndicator;->k:I

    const p2, 0x7f080769

    .line 7
    iput p2, p0, Lcom/join/mgps/customview/TabPageIndicator;->l:I

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 9
    new-instance p2, Lcom/join/mgps/customview/IcsLinearLayout;

    const v0, 0x7f0405d2

    invoke-direct {p2, p1, v0}, Lcom/join/mgps/customview/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/join/mgps/customview/TabPageIndicator;->c:Lcom/join/mgps/customview/IcsLinearLayout;

    .line 10
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/TabPageIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/TabPageIndicator;)Lcom/join/mgps/customview/TabPageIndicator$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/TabPageIndicator;->h:Lcom/join/mgps/customview/TabPageIndicator$d;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic d(Lcom/join/mgps/customview/TabPageIndicator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/TabPageIndicator;->f:I

    return p0
.end method

.method private e(ILjava/lang/CharSequence;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x28

    .line 2
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 3
    new-instance v2, Lcom/join/mgps/customview/TabPageIndicator$e;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/join/mgps/customview/TabPageIndicator$e;-><init>(Lcom/join/mgps/customview/TabPageIndicator;Landroid/content/Context;)V

    .line 4
    invoke-static {v2, p1}, Lcom/join/mgps/customview/TabPageIndicator$e;->a(Lcom/join/mgps/customview/TabPageIndicator$e;I)I

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 6
    iget-object v3, p0, Lcom/join/mgps/customview/TabPageIndicator;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 8
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    iget p2, p0, Lcom/join/mgps/customview/TabPageIndicator;->i:I

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x11

    .line 10
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {v2, v1, v1, v1, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 12
    :cond_0
    new-instance p2, Lcom/join/mgps/customview/TabPageIndicator$c;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/customview/TabPageIndicator$c;-><init>(Lcom/join/mgps/customview/TabPageIndicator;I)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->c:Lcom/join/mgps/customview/IcsLinearLayout;

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->c:Lcom/join/mgps/customview/IcsLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/TabPageIndicator$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/TabPageIndicator$b;-><init>(Lcom/join/mgps/customview/TabPageIndicator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->a:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->c:Lcom/join/mgps/customview/IcsLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/join/mgps/adapter/o2;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/join/mgps/adapter/o2;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 6
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    .line 7
    sget-object v4, Lcom/join/mgps/customview/TabPageIndicator;->m:Ljava/lang/CharSequence;

    :cond_1
    const v5, 0x7f080768

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1, v3}, Lcom/join/mgps/adapter/o2;->a(I)I

    move-result v5

    .line 9
    :cond_2
    invoke-direct {p0, v3, v4, v5}, Lcom/join/mgps/customview/TabPageIndicator;->e(ILjava/lang/CharSequence;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->g:I

    if-le v0, v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 11
    iput v2, p0, Lcom/join/mgps/customview/TabPageIndicator;->g:I

    .line 12
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->g:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/TabPageIndicator;->setCurrentItem(I)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 3
    iget-object v4, p0, Lcom/join/mgps/customview/TabPageIndicator;->c:Lcom/join/mgps/customview/IcsLinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x2

    if-le v4, v0, :cond_2

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->f:I

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/join/mgps/customview/TabPageIndicator;->f:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->f:I

    .line 7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 8
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_4

    if-eq v0, p1, :cond_4

    .line 10
    iget p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->g:I

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/TabPageIndicator;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/TabPageIndicator;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->g:I

    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->c:Lcom/join/mgps/customview/IcsLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 5
    iget-object v3, p0, Lcom/join/mgps/customview/TabPageIndicator;->c:Lcom/join/mgps/customview/IcsLinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_1
    move-object v5, v3

    check-cast v5, Lcom/join/mgps/customview/TabPageIndicator$e;

    if-ne v2, p1, :cond_2

    .line 7
    iget v6, p0, Lcom/join/mgps/customview/TabPageIndicator;->j:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget v6, p0, Lcom/join/mgps/customview/TabPageIndicator;->k:I

    invoke-virtual {v5, v1, v1, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 9
    :cond_2
    iget v6, p0, Lcom/join/mgps/customview/TabPageIndicator;->i:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget v6, p0, Lcom/join/mgps/customview/TabPageIndicator;->l:I

    invoke-virtual {v5, v1, v1, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 11
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_3

    .line 12
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/TabPageIndicator;->f(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setNormalBottomDrawableBound(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->l:I

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->i:I

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/join/mgps/customview/TabPageIndicator$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->h:Lcom/join/mgps/customview/TabPageIndicator$d;

    return-void
.end method

.method public setSelectedBottomDrawableBounds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->k:I

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->j:I

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator;->d:Landroidx/viewpager/widget/ViewPager;

    .line 5
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/TabPageIndicator;->notifyDataSetChanged()V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/TabPageIndicator;->setCurrentItem(I)V

    return-void
.end method
