.class public Lcom/join/mgps/fragment/a4;
.super Landroidx/fragment/app/Fragment;
.source "RankFragmentNew.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c022a
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/SlidingTabLayout1;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/ViewPagerCompat;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private d:Lcom/join/mgps/customview/d0;

.field e:I

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/a4;->e:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/a4;->f:Z

    return-void
.end method


# virtual methods
.method M()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/a4;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3e9

    const-string v2, "1"

    .line 4
    invoke-static {v1, v2}, Lcom/join/mgps/activity/d;->b0(ILjava/lang/String;)Lcom/join/mgps/activity/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "2"

    .line 5
    invoke-static {v1, v2}, Lcom/join/mgps/activity/d;->b0(ILjava/lang/String;)Lcom/join/mgps/activity/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "3"

    .line 6
    invoke-static {v1, v2}, Lcom/join/mgps/activity/d;->b0(ILjava/lang/String;)Lcom/join/mgps/activity/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "  \u5355\u673a\u699c  "

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "\u6a21\u62df\u5668\u699c"

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "  \u7f51\u6e38\u699c  "

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object v2, p0, Lcom/join/mgps/fragment/a4;->d:Lcom/join/mgps/customview/d0;

    .line 12
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->d:Lcom/join/mgps/customview/d0;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    iget-object v1, p0, Lcom/join/mgps/fragment/a4;->d:Lcom/join/mgps/customview/d0;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v1, p0, Lcom/join/mgps/fragment/a4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/a4;->N()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    new-instance v1, Lcom/join/mgps/fragment/a4$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/a4$a;-><init>(Lcom/join/mgps/fragment/a4;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 20
    iget v0, p0, Lcom/join/mgps/fragment/a4;->e:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/a4;->Q(I)V

    return-void
.end method

.method N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    :goto_0
    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/a4;->e:I

    return-void
.end method

.method public P(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/a4;->f:Z

    return-void
.end method

.method Q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
