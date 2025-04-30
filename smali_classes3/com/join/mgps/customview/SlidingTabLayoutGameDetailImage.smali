.class public Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayoutGameDetailImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;,
        Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;
    }
.end annotation


# static fields
.field private static final m:I = 0x18

.field private static final n:I = 0x10

.field private static final o:I = 0xc


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
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/join/mgps/dto/GamedetialModleFourBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroid/util/SparseArray;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k:Ljava/util/List;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a:I

    .line 11
    new-instance p2, Lcom/join/mgps/customview/l0;

    invoke-direct {p2, p1}, Lcom/join/mgps/customview/l0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Lcom/join/mgps/customview/l0;

    const/4 p1, -0x1

    const/4 p3, -0x2

    .line 12
    invoke-virtual {p0, p2, p1, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Lcom/join/mgps/customview/l0;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l(II)V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private k()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$a;)V

    .line 3
    iget-object v4, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4
    iget-object v4, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->g(Landroid/content/Context;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f09075b

    .line 7
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f09069a

    .line 8
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v9, 0x7f090acd

    .line 9
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090c1b

    .line 10
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 11
    iget-object v11, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v11, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean v11, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->d:Z

    if-eqz v11, :cond_0

    .line 14
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v12, 0x3f800000    # 1.0f

    .line 16
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 17
    iget v12, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:I

    invoke-virtual {v11, v12, v4, v12, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->j()Z

    move-result v11

    const-string v12, " ]"

    const-string v13, "\n[ "

    const-string v14, ""

    if-eqz v11, :cond_3

    if-nez v5, :cond_1

    .line 19
    iget-object v11, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v11}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    const/16 v10, 0x8

    .line 21
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v10, v14

    move-object v14, v11

    goto/16 :goto_2

    .line 22
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 23
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v10

    add-int/lit8 v11, v5, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 24
    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getPic()Ljava/lang/String;

    move-result-object v14

    .line 25
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getCount()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 26
    :cond_2
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v10

    add-int/lit8 v11, v5, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 27
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 29
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 30
    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getPic()Ljava/lang/String;

    move-result-object v14

    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getCount()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 32
    :cond_4
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 33
    iget-object v10, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object/from16 v16, v14

    move-object v14, v10

    move-object/from16 v10, v16

    goto :goto_2

    :cond_5
    move-object v10, v14

    .line 34
    :goto_2
    invoke-static {v8, v14}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v8, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 38
    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    :cond_6
    iget-object v8, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    iget-object v8, v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v8

    if-ne v5, v8, :cond_7

    const/4 v8, 0x1

    .line 41
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 42
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private l(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Lcom/join/mgps/customview/l0;

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
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a:I

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
.method protected g(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0595

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMarginWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:I

    return v0
.end method

.method public h(Landroid/content/Context;)Landroid/widget/ImageView;
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

.method i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l(II)V

    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setCustomTabColorizer(Lcom/join/mgps/customview/SlidingTabLayout$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/l0;->d(Lcom/join/mgps/customview/SlidingTabLayout$d;)V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->b:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c:I

    return-void
.end method

.method public setData(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->l:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k()V

    :cond_0
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->d:Z

    return-void
.end method

.method public setMarginWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->i:I

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->g:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/l0;->e([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->h:Lcom/join/mgps/customview/l0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->k()V

    :cond_0
    return-void
.end method
