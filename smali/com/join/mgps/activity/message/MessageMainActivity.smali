.class public Lcom/join/mgps/activity/message/MessageMainActivity;
.super Lcom/BaseFragmentActivity;
.source "MessageMainActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0054
.end annotation


# instance fields
.field a:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/rpc/d;

.field private e:Lcom/join/mgps/dto/AccountBean;

.field f:Landroidx/fragment/app/Fragment;

.field g:Lcom/join/mgps/activity/message/e;

.field h:Lcom/join/mgps/activity/message/a;

.field i:Lcom/join/mgps/activity/message/c;

.field j:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field k:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field l:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field n:Landroid/content/Context;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->j:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->k:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->l:Z

    return-void
.end method


# virtual methods
.method D0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v2, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 4
    :cond_0
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v3, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 6
    :cond_2
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v0

    if-gtz v0, :cond_3

    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v0

    if-lez v0, :cond_4

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v1, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->o:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->g:Lcom/join/mgps/activity/message/e;

    iput-boolean v3, v0, Lcom/join/mgps/activity/message/e;->m:Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 12
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setNotice_surplus_number(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->g:Lcom/join/mgps/activity/message/e;

    iput v3, v0, Lcom/join/mgps/activity/message/e;->j:I

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/e;->Q()V

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->o:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->h:Lcom/join/mgps/activity/message/a;

    iput-boolean v3, v0, Lcom/join/mgps/activity/message/a;->t:Z

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 19
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_surplus_number(I)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->h:Lcom/join/mgps/activity/message/a;

    iput v3, v0, Lcom/join/mgps/activity/message/a;->k:I

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/a;->P()V

    goto :goto_0

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->o:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->i:Lcom/join/mgps/activity/message/c;

    iput-boolean v3, v0, Lcom/join/mgps/activity/message/c;->s:Z

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 26
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setReplay_surplus_number(I)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->i:Lcom/join/mgps/activity/message/c;

    iput v3, v0, Lcom/join/mgps/activity/message/c;->l:I

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/c;->Q()V

    :cond_7
    :goto_0
    return-void
.end method

.method E0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageSettingActivity_;->Q0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageSettingActivity_$j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method afterview()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->d:Lcom/join/mgps/rpc/d;

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->e:Lcom/join/mgps/dto/AccountBean;

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v2, Lcom/join/mgps/activity/message/f;

    invoke-direct {v2}, Lcom/join/mgps/activity/message/f;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->g:Lcom/join/mgps/activity/message/e;

    .line 8
    new-instance v2, Lcom/join/mgps/activity/message/b;

    invoke-direct {v2}, Lcom/join/mgps/activity/message/b;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->h:Lcom/join/mgps/activity/message/a;

    .line 9
    new-instance v2, Lcom/join/mgps/activity/message/d;

    invoke-direct {v2}, Lcom/join/mgps/activity/message/d;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->i:Lcom/join/mgps/activity/message/c;

    .line 10
    new-instance v2, Lcom/join/mgps/adapter/x$a;

    iget-object v3, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->g:Lcom/join/mgps/activity/message/e;

    const-string v4, "\u901a\u77e5"

    invoke-direct {v2, v4, v3}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 11
    new-instance v3, Lcom/join/mgps/adapter/x$a;

    iget-object v4, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->h:Lcom/join/mgps/activity/message/a;

    const-string v5, "\u793e\u533a"

    invoke-direct {v3, v5, v4}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 12
    new-instance v4, Lcom/join/mgps/adapter/x$a;

    iget-object v5, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->i:Lcom/join/mgps/activity/message/c;

    const-string v6, "\u70b9\u8bc4"

    invoke-direct {v4, v6, v5}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/x;->d(Ljava/util/List;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 20
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v3, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 23
    :cond_0
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    if-lez v0, :cond_2

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v1, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 25
    :cond_2
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v0

    if-gtz v0, :cond_3

    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v0

    if-lez v0, :cond_4

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v2, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 27
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->l:Z

    if-nez v0, :cond_9

    .line 28
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v0

    if-lez v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 30
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setNotice_surplus_number(I)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    goto :goto_1

    .line 32
    :cond_5
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v0

    if-gtz v0, :cond_8

    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_0

    .line 33
    :cond_6
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v0

    if-gtz v0, :cond_7

    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v0

    if-lez v0, :cond_9

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 35
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setReplay_surplus_number(I)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    goto :goto_1

    .line 37
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 38
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_surplus_number(I)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 40
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->i(I)Lcom/flyco/tablayout/widget/MsgView;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v4, 0xa

    .line 42
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 43
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->i(I)Lcom/flyco/tablayout/widget/MsgView;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 48
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->i(I)Lcom/flyco/tablayout/widget/MsgView;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 52
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 53
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-boolean v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->l:Z

    if-eqz v0, :cond_a

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->j:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/mgps/activity/message/MessageMainActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/MessageMainActivity$a;-><init>(Lcom/join/mgps/activity/message/MessageMainActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->c:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/join/mgps/activity/message/MessageMainActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/MessageMainActivity$b;-><init>(Lcom/join/mgps/activity/message/MessageMainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/join/mgps/dialog/b;

    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u8bf7\u5f00\u542f\u901a\u77e5\u6743\u9650"

    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    const-string v1, "\u7b2c\u4e00\u65f6\u95f4\u6536\u5230\u91cd\u8981\u6d88\u606f\u53ca\u4e92\u52a8\u56de\u590d\u3002"

    .line 63
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    const-string v1, "\u53d6\u6d88"

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    const-string v1, "\u53bb\u5f00\u542f"

    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 66
    invoke-virtual {v0, v3}, Lcom/join/mgps/dialog/b;->f(I)Lcom/join/mgps/dialog/b;

    .line 67
    new-instance v1, Lcom/join/mgps/activity/message/MessageMainActivity$c;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/message/MessageMainActivity$c;-><init>(Lcom/join/mgps/activity/message/MessageMainActivity;Lcom/join/mgps/dialog/b;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_b
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getData()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    return-void
.end method

.method getRedPointData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getGRedPointNum(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->H1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/MessageRedPointBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;->getData()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;->getData()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    move-result-object v0

    sput-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    move-result v0

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/MApplication;->H:I

    if-lez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageMainActivity;->D0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/n;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/join/mgps/event/n;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->o:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageMainActivity;->getRedPointData()V

    return-void
.end method
