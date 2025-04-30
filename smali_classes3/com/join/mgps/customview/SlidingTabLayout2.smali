.class public Lcom/join/mgps/customview/SlidingTabLayout2;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayout2$c;,
        Lcom/join/mgps/customview/SlidingTabLayout2$b;,
        Lcom/join/mgps/customview/SlidingTabLayout2$d;
    }
.end annotation


# static fields
.field private static final k:I = 0x18

.field private static final l:I = 0x10

.field private static final m:I = 0xc


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final h:Lcom/join/mgps/customview/m0;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->f:Landroid/util/SparseArray;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->j:Ljava/util/List;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->a:I

    .line 9
    new-instance p2, Lcom/join/mgps/customview/m0;

    invoke-direct {p2, p1}, Lcom/join/mgps/customview/m0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    const/4 p1, -0x1

    const/4 p3, -0x2

    .line 10
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/m0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/SlidingTabLayout2;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout2;->h(II)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/SlidingTabLayout2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->e:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayout2$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/customview/SlidingTabLayout2$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayout2;Lcom/join/mgps/customview/SlidingTabLayout2$a;)V

    .line 3
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 5
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->b:I

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->b:I

    iget-object v7, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 7
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->c:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 8
    iget-object v7, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v5, v2

    move-object v6, v5

    :goto_1
    if-nez v5, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/SlidingTabLayout2;->f(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    :cond_1
    if-nez v6, :cond_2

    .line 10
    const-class v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    .line 12
    :cond_2
    iget-boolean v7, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->d:Z

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 15
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 16
    iget v8, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->i:I

    invoke-virtual {v7, v8, v3, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v7, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->f:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 20
    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 21
    :cond_4
    iget-object v7, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 22
    iget-object v7, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v7

    if-ne v4, v7, :cond_5

    const/4 v7, 0x1

    .line 23
    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 24
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06009b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private h(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 4
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->a:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected f(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 8
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 10
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public getMarginWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->i:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout2;->h(II)V

    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setCustomTabColorizer(Lcom/join/mgps/customview/SlidingTabLayout2$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/m0;->e(Lcom/join/mgps/customview/SlidingTabLayout2$d;)V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->b:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->c:I

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->d:Z

    return-void
.end method

.method public setMarginWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->i:I

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/m0;->f([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->h:Lcom/join/mgps/customview/m0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/SlidingTabLayout2$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout2;Lcom/join/mgps/customview/SlidingTabLayout2$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabLayout2;->g()V

    :cond_0
    return-void
.end method
