.class public Lcom/join/mgps/fragment/k;
.super Lcom/join/mgps/fragment/d;
.source "ClassifyRankFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c01fa
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/d0;

.field b:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/SlidingTabLayout2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/content/Context;

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/k;->d:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/k;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/k;->h:I

    return-void
.end method


# virtual methods
.method M()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->battle:Lcom/papa/sim/statistic/Where;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method N(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity_;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/MGMainActivity_;

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setClassifyPrimaryIndex(I)V

    :cond_1
    return-void
.end method

.method public O(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->a:Lcom/join/mgps/customview/d0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/customview/d0;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/fragment/k;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/k;->g:Landroid/content/Context;

    const-string v1, "window"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/k;->f:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/fragment/j;

    invoke-direct {v1}, Lcom/join/mgps/fragment/j;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/fragment/b4;

    invoke-direct {v1}, Lcom/join/mgps/fragment/b4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/join/mgps/fragment/a3;

    invoke-direct {v1}, Lcom/join/mgps/fragment/a3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Ljava/util/List;

    const-string v1, "\u5206\u7c7b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Ljava/util/List;

    const-string v1, "\u6392\u884c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Ljava/util/List;

    const-string v1, "\u4e13\u9898"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/k;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/join/mgps/fragment/k;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/k;->a:Lcom/join/mgps/customview/d0;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/k;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    const v2, 0x7f0c05a1

    const v3, 0x1020014

    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setCustomTabView(II)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, -0xd75d6

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setSelectedIndicatorColors([I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/SlidingTabLayout2;->setDistributeEvenly(Z)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setMarginWidth(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    iget-object v3, p0, Lcom/join/mgps/fragment/k;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    new-instance v3, Lcom/join/mgps/fragment/k$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/k$a;-><init>(Lcom/join/mgps/fragment/k;)V

    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k;->initData()V

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "MGMainClassifyFragment"

    .line 21
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 22
    iput v1, p0, Lcom/join/mgps/fragment/k;->h:I

    :cond_0
    if-nez v3, :cond_3

    const-string v3, "classfyShowType"

    .line 23
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 24
    iput v2, p0, Lcom/join/mgps/fragment/k;->h:I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 25
    iput v5, p0, Lcom/join/mgps/fragment/k;->h:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 26
    iput v1, p0, Lcom/join/mgps/fragment/k;->h:I

    goto :goto_0

    :cond_3
    if-ne v3, v2, :cond_4

    .line 27
    iput v5, p0, Lcom/join/mgps/fragment/k;->h:I

    goto :goto_0

    :cond_4
    if-ne v3, v4, :cond_5

    .line 28
    iput v1, p0, Lcom/join/mgps/fragment/k;->h:I

    goto :goto_0

    .line 29
    :cond_5
    iput v2, p0, Lcom/join/mgps/fragment/k;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_6
    :goto_0
    iget v0, p0, Lcom/join/mgps/fragment/k;->h:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k;->O(I)V

    .line 32
    iget v0, p0, Lcom/join/mgps/fragment/k;->h:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k;->N(I)V

    return-void
.end method

.method initData()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity_;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/MGMainActivity_;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getClassifyPrimaryIndex()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/k;->h:I

    :cond_1
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method
