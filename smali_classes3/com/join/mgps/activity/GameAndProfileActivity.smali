.class public Lcom/join/mgps/activity/GameAndProfileActivity;
.super Lcom/join/mgps/activity/MyFragmentActivity1;
.source "GameAndProfileActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c003a
.end annotation


# instance fields
.field a:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field h:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field i:Lcom/join/mgps/fragment/GmaeFormPostFragment;

.field j:Lcom/join/mgps/fragment/x2;

.field k:Lcom/join/mgps/fragment/l2;

.field l:Landroid/content/Context;

.field m:Lcom/join/mgps/dto/AccountBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->g:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->h:I

    return-void
.end method


# virtual methods
.method D0()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->l:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/MApplication;->K:Z

    .line 3
    new-instance v1, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->m:Lcom/join/mgps/dto/AccountBean;

    .line 6
    new-instance v3, Lcom/join/mgps/fragment/b3;

    invoke-direct {v3}, Lcom/join/mgps/fragment/b3;-><init>()V

    iput-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->i:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 7
    new-instance v3, Lcom/join/mgps/fragment/y2;

    invoke-direct {v3}, Lcom/join/mgps/fragment/y2;-><init>()V

    iput-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->j:Lcom/join/mgps/fragment/x2;

    .line 8
    new-instance v3, Lcom/join/mgps/fragment/m2;

    invoke-direct {v3}, Lcom/join/mgps/fragment/m2;-><init>()V

    iput-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->k:Lcom/join/mgps/fragment/l2;

    .line 9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->h:I

    const-string v5, "uid"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->i:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->j:Lcom/join/mgps/fragment/x2;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->k:Lcom/join/mgps/fragment/l2;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    new-instance v3, Lcom/join/mgps/adapter/x$a;

    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->k:Lcom/join/mgps/fragment/l2;

    const-string v5, "\u521b\u5efa"

    invoke-direct {v3, v5, v4}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 15
    new-instance v4, Lcom/join/mgps/adapter/x$a;

    iget-object v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->j:Lcom/join/mgps/fragment/x2;

    const-string v6, "\u8ba2\u9605"

    invoke-direct {v4, v6, v5}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 16
    new-instance v5, Lcom/join/mgps/adapter/x$a;

    iget-object v6, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->i:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    const-string v7, "\u5e16\u5b50"

    invoke-direct {v5, v7, v6}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 17
    iget-object v6, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    iget v7, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->h:I

    const/4 v8, 0x1

    if-eq v6, v7, :cond_2

    if-nez v7, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->e:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 20
    iget v5, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->g:I

    if-nez v5, :cond_1

    .line 21
    iget-object v4, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->f:Landroid/widget/TextView;

    const-string v5, "\u521b\u5efa\u7684\u6e38\u620f\u5355"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne v5, v8, :cond_3

    .line 23
    iget-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->f:Landroid/widget/TextView;

    const-string v5, "\u8ba2\u9605\u7684\u6e38\u620f\u5355"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/x;->d(Ljava/util/List;)V

    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->b:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/join/mgps/activity/GameAndProfileActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameAndProfileActivity$a;-><init>(Lcom/join/mgps/activity/GameAndProfileActivity;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    iget-object v2, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    iget v2, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->h:I

    if-ne v1, v2, :cond_6

    .line 35
    iget v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->g:I

    if-nez v1, :cond_4

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    :cond_4
    if-ne v1, v8, :cond_5

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method E0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->m:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/MApplication;->K:Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/BuildGameFromActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void
.end method

.method iv_back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->i:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    instance-of v0, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A0(ILandroid/view/KeyEvent;)Z

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyFragmentActivity1;->onResume()V

    .line 2
    sget-boolean v0, Lcom/MApplication;->K:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->h:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameAndProfileActivity;->k:Lcom/join/mgps/fragment/l2;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/l2;->Q()V

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/MApplication;->K:Z

    :cond_0
    return-void
.end method
