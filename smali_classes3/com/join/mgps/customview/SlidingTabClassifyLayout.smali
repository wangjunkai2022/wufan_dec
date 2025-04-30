.class public Lcom/join/mgps/customview/SlidingTabClassifyLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabClassifyLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabClassifyLayout$c;,
        Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;,
        Lcom/join/mgps/customview/SlidingTabClassifyLayout$d;
    }
.end annotation


# static fields
.field private static final n:I = 0x18

.field private static final o:I = 0x10

.field private static final p:I = 0xc


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Landroidx/viewpager/widget/ViewPager;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final i:Lcom/join/mgps/customview/l0;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout$LayoutParams;

.field m:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->g:Landroid/util/SparseArray;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->j:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->k:Ljava/util/List;

    .line 7
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p2, p3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->m:Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a:I

    .line 12
    new-instance p2, Lcom/join/mgps/customview/l0;

    invoke-direct {p2, p1}, Lcom/join/mgps/customview/l0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

    .line 13
    invoke-virtual {p0, p2, p3, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/SlidingTabClassifyLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i(II)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->f:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private h()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/customview/SlidingTabClassifyLayout$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/customview/SlidingTabClassifyLayout$c;-><init>(Lcom/join/mgps/customview/SlidingTabClassifyLayout;Lcom/join/mgps/customview/SlidingTabClassifyLayout$a;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 4
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->b:I

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->b:I

    iget-object v7, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 6
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 7
    iget v7, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->d:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 8
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->j:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->k:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    :goto_1
    if-nez v5, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->g(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    :cond_1
    if-nez v6, :cond_2

    .line 11
    const-class v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 12
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    .line 13
    :cond_2
    iget-boolean v8, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->e:Z

    if-eqz v8, :cond_3

    .line 14
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v9, 0x3f800000    # 1.0f

    .line 16
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 17
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06009a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, -0x1

    .line 19
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 20
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->g:Landroid/util/SparseArray;

    invoke-virtual {v9, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 22
    invoke-virtual {v5, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    :cond_4
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v9}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v9

    if-ne v4, v9, :cond_5

    const/4 v9, 0x1

    .line 25
    invoke-virtual {v5, v9}, Landroid/view/View;->setSelected(Z)V

    .line 26
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f06009b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private i(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

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
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a:I

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
.method protected g(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    .line 5
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101030e

    invoke-virtual {v4, v5, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 10
    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 12
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->l:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->m:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i(II)V

    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setCustomTabColorizer(Lcom/join/mgps/customview/SlidingTabClassifyLayout$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

    check-cast p1, Lcom/join/mgps/customview/SlidingTabLayout$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/l0;->d(Lcom/join/mgps/customview/SlidingTabLayout$d;)V

    return-void
.end method

.method public setCustomTabView(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->b:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c:I

    .line 3
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->d:I

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->e:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/l0;->e([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->i:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;-><init>(Lcom/join/mgps/customview/SlidingTabClassifyLayout;Lcom/join/mgps/customview/SlidingTabClassifyLayout$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->h()V

    :cond_0
    return-void
.end method
