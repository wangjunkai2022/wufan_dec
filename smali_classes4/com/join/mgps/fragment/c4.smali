.class public Lcom/join/mgps/fragment/c4;
.super Lcom/join/mgps/fragment/d;
.source "RankingFragment.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0227
.end annotation


# instance fields
.field a:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/SlidingTabLayout1;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/ViewPagerCompat;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/d0;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/c4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/c4;->N()V

    return-void
.end method

.method private N()V
    .locals 9

    .line 1
    const-class v0, Lcom/join/kotlin/ui/findgame/data/TagData;

    iget-object v1, p0, Lcom/join/mgps/fragment/c4;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "[{\"id\":1,\"title\":\"\u7f51\u6e38\u699c\"},{\"id\":2,\"title\":\"\u5355\u673a\u699c\"},{\"id\":3,\"title\":\"\u6a21\u62df\u5668\u699c\"}]"

    if-eqz v1, :cond_0

    .line 2
    iput-object v2, p0, Lcom/join/mgps/fragment/c4;->e:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/fragment/c4;->e:Ljava/lang/String;

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    const-class v5, Ljava/util/List;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Ljava/util/List;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/c4;->P(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method O()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setType(I)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {v1, v0}, Lq1/h;->f0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/c4$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c4$a;-><init>(Lcom/join/mgps/fragment/c4;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method P(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/TagData;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/TagData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/fragment/j4;->f0(Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/TagData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/join/mgps/customview/d0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {p1, v2, v0, v1}, Lcom/join/mgps/customview/d0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/c4;->d:Lcom/join/mgps/customview/d0;

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/d0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/c4;->d:Lcom/join/mgps/customview/d0;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/c4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->d:Lcom/join/mgps/customview/d0;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/c4;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "table"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->a:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->rankingMenu2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/join/mgps/fragment/c4;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c4;->O()V

    return-void
.end method

.method protected lazyLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->d:Lcom/join/mgps/customview/d0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c4;->d:Lcom/join/mgps/customview/d0;

    iget-object v1, p0, Lcom/join/mgps/fragment/c4;->c:Lcom/join/mgps/customview/ViewPagerCompat;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/d0;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/join/mgps/fragment/j4;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/join/mgps/fragment/j4;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/j4;->lazyLoad()V

    :cond_1
    :goto_0
    return-void
.end method
