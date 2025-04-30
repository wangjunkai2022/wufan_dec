.class public Lcom/join/mgps/fragment/g3;
.super Landroidx/fragment/app/Fragment;
.source "MarketFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0211
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/SlidingTabLayout1;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/ViewPagerCompat;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private e:Lcom/join/mgps/customview/d0;

.field f:I

.field g:Lcom/join/mgps/activity/f2;

.field h:Lcom/join/mgps/fragment/c4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/g3;->f:I

    return-void
.end method


# virtual methods
.method M()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/g2;

    invoke-direct {v1}, Lcom/join/mgps/activity/g2;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/g3;->g:Lcom/join/mgps/activity/f2;

    .line 3
    new-instance v1, Lcom/join/mgps/fragment/d4;

    invoke-direct {v1}, Lcom/join/mgps/fragment/d4;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/g3;->h:Lcom/join/mgps/fragment/c4;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/g3;->g:Lcom/join/mgps/activity/f2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/g3;->h:Lcom/join/mgps/fragment/c4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\u9996\u9875"

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "\u6392\u884c"

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v2, p0, Lcom/join/mgps/fragment/g3;->e:Lcom/join/mgps/customview/d0;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->e:Lcom/join/mgps/customview/d0;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->b:Lcom/join/mgps/customview/ViewPagerCompat;

    iget-object v1, p0, Lcom/join/mgps/fragment/g3;->e:Lcom/join/mgps/customview/d0;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->b:Lcom/join/mgps/customview/ViewPagerCompat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v1, p0, Lcom/join/mgps/fragment/g3;->b:Lcom/join/mgps/customview/ViewPagerCompat;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g3;->Q()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    new-instance v1, Lcom/join/mgps/fragment/g3$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g3$a;-><init>(Lcom/join/mgps/fragment/g3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 18
    iget v0, p0, Lcom/join/mgps/fragment/g3;->f:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g3;->R(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->d:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->defaultSearchKeyword()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/fragment/g3;->d:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->defaultSearchKeyword()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->b:Lcom/join/mgps/customview/ViewPagerCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->g:Lcom/join/mgps/activity/f2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/activity/f2;->f0()V

    :cond_1
    return-void
.end method

.method O()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->g:Lcom/join/mgps/activity/f2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/f2;->f0()V

    return-void
.end method

.method P()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->index:Lcom/papa/sim/statistic/Where;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    :goto_0
    return-void
.end method

.method R(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g3;->b:Lcom/join/mgps/customview/ViewPagerCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/g3;->g:Lcom/join/mgps/activity/f2;

    invoke-virtual {p1}, Lcom/join/mgps/activity/f2;->j1()V

    :cond_0
    return-void
.end method
