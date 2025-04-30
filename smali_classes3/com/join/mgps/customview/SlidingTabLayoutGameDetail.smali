.class public Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayoutGameDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;,
        Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;
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

.field private final h:Lcom/join/mgps/customview/l0;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f:Landroid/util/SparseArray;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k:Ljava/util/List;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->l:Ljava/util/List;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a:I

    .line 12
    new-instance v0, Lcom/join/mgps/customview/l0;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/l0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Lcom/join/mgps/customview/l0;

    new-array p1, p3, [I

    aput p2, p1, p2

    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/l0;->e([I)V

    const/4 p1, -0x1

    const/4 p2, -0x2

    .line 14
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Lcom/join/mgps/customview/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Lcom/join/mgps/customview/l0;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k(II)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->e:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private j()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$a;)V

    .line 3
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09075b

    .line 8
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09069a

    .line 9
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->l:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->d:Z

    if-eqz v8, :cond_0

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
    iget v9, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:I

    invoke-virtual {v8, v9, v3, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    :cond_0
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/GameDetailOneTouchSkill;

    invoke-virtual {v8}, Lcom/join/mgps/dto/GameDetailOneTouchSkill;->getPic()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 21
    invoke-virtual {v5, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 22
    :cond_1
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 23
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v8}, Lcom/facebook/drawee/generic/a;->o()Lcom/facebook/drawee/generic/RoundingParams;

    .line 24
    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    .line 25
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v8

    if-ne v4, v8, :cond_2

    const/4 v8, 0x1

    .line 26
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 27
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v5}, Lcom/facebook/drawee/generic/a;->o()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v5

    const-string v6, "#FFB38534"

    .line 29
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/generic/RoundingParams;->o(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 30
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f07110e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/generic/RoundingParams;->p(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 31
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v6, v5}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private k(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Lcom/join/mgps/customview/l0;

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
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->a:I

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
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    return-object v0
.end method

.method public getMarginWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:I

    return v0
.end method

.method protected h(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f09069a

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x11

    .line 8
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f87

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07107c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 13
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x7f080676

    .line 14
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f09075b

    .line 15
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 20
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x4

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method

.method public i(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/a;

    const v1, 0x7f0807b1

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/generic/a;->H(I)V

    .line 3
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/generic/a;->B(I)V

    .line 4
    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->a()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v1, p1}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->k(II)V

    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setCustomTabColorizer(Lcom/join/mgps/customview/SlidingTabLayout$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/l0;->d(Lcom/join/mgps/customview/SlidingTabLayout$d;)V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->b:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->c:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailOneTouchSkill;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->d:Z

    return-void
.end method

.method public setMarginWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->i:I

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/l0;->e([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;Lcom/join/mgps/customview/SlidingTabLayoutGameDetail$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;->j()V

    :cond_0
    return-void
.end method
