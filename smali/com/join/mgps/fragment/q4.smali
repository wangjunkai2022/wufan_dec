.class public Lcom/join/mgps/fragment/q4;
.super Lcom/join/mgps/fragment/d;
.source "SearchGameListFragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/h5$e;
.implements Ll1/i;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c022b
.end annotation


# instance fields
.field A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:I

.field a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090da9
    .end annotation
.end field

.field b:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/rpc/j;

.field f:Lcom/join/mgps/adapter/h5;

.field g:Lcom/join/android/app/component/video/d;

.field h:I
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field j:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field private p:Landroid/content/Context;

.field private q:Z

.field private r:Z

.field private s:Z

.field t:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->j:Ljava/lang/String;

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/q4;->n:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->q:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->r:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->s:Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    .line 9
    iput v0, p0, Lcom/join/mgps/fragment/q4;->B:I

    .line 10
    iput v0, p0, Lcom/join/mgps/fragment/q4;->C:I

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/q4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/q4;->B:I

    return p1
.end method

.method static synthetic O(Lcom/join/mgps/fragment/q4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/q4;->C:I

    return p1
.end method

.method static synthetic P(Lcom/join/mgps/fragment/q4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->g0()V

    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/q4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/q4;->s:Z

    return p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/q4;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/q4;->s:Z

    return p1
.end method

.method private b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/h5$h;

    .line 8
    iget v3, v2, Lcom/join/mgps/adapter/h5$h;->a:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, v2, Lcom/join/mgps/adapter/h5$h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isModGameVm()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 12
    iget-object v4, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    iget-object v6, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v4, :cond_3

    if-nez v6, :cond_3

    .line 14
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    .line 16
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->a0()V

    return-void
.end method

.method private c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->a0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->a0()V

    return-void
.end method

.method private e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->a0()V

    :cond_3
    :goto_0
    return-void
.end method

.method private g0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->getFirstCompletelyVisiblePosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->getLastCompletelyVisiblePosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/h5$h;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isHasExposure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v4, ""

    .line 9
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    const-string v4, "101"

    .line 10
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 11
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setHasExposure(Z)V

    .line 14
    iget-object v4, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v4}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->expSmallGameAdPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/papa/sim/statistic/p;->h0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v2, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/h5$h;

    .line 3
    iget-object v2, v2, Lcom/join/mgps/adapter/h5$h;->b:Ljava/lang/Object;

    instance-of v3, v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    if-eqz v3, :cond_7

    .line 4
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isModGameVm()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7
    iget-object v4, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 9
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 17
    :cond_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-nez v4, :cond_5

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_7

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 21
    :cond_6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void
.end method

.method private m0(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->isModGameVm()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6
    iget-object v4, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v8, :cond_4

    .line 9
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 10
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 11
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 13
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 14
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 15
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_7
    iget-object v4, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v4, :cond_8

    .line 17
    iget-object v4, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_8
    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 20
    :cond_9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private n0(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/h5$h;

    .line 4
    iget-object v1, v1, Lcom/join/mgps/adapter/h5$h;->b:Ljava/lang/Object;

    instance-of v2, v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    if-eqz v2, :cond_2

    .line 5
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    :cond_1
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->setRequestStatus(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private o0()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/q4;->C:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/join/mgps/fragment/q4;->B:I

    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/q4;->C:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/q4;->B:I

    if-gt v0, v1, :cond_7

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/h5$h;

    invoke-virtual {v2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object v2

    .line 4
    const-class v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget v5, p0, Lcom/join/mgps/fragment/q4;->C:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10
    iget-object v5, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 11
    instance-of v5, v2, Lcom/join/mgps/base/b;

    if-eqz v5, :cond_6

    .line 12
    check-cast v2, Lcom/join/mgps/base/b;

    .line 13
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_3

    return-void

    .line 14
    :cond_3
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 15
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v10, 0x0

    const-string v12, "/"

    const v13, 0x7f0900ea

    cmp-long v14, v8, v10

    if-nez v14, :cond_4

    .line 16
    :try_start_2
    invoke-virtual {v2, v13}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v2, v13}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_5

    const v3, 0x7f090c60

    .line 19
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    :cond_5
    const v3, 0x7f090c59

    .line 20
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 21
    :goto_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_6

    const v1, 0x7f0909b2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public J()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/q4;->m:I

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/q4;->o:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/join/mgps/activity/SearchListActivity1;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v1}, Lcom/join/mgps/activity/SearchListActivity1;->M0()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/fragment/q4;->k:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    check-cast v1, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v1}, Lcom/join/mgps/activity/SearchListActivity1;->L0()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/fragment/q4;->l:I

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    check-cast v1, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v1}, Lcom/join/mgps/activity/SearchListActivity1;->getGameId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->showLoadingView()V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->W()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/q4;->j:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->r:Z

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->s:Z

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->u1()V

    :cond_1
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/fragment/q4;->Z(IZ)V

    return-void
.end method

.method M(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/GameDetailActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromid"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x2b5e

    const-string v1, "_from"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_1
    const-string p3, "groupuid"

    .line 5
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "gameid"

    .line 6
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "company_id"

    .line 7
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method S()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/d;->b(I)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->g0()V

    return-void
.end method

.method T(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method U(Ljava/util/List;Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setAdInfo(Z)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getPosition()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method V(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->R0(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method W()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->S0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method X(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->M0()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/q4;->k:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->L0()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/q4;->l:I

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/q4;->r:Z

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/q4;->Z(IZ)V

    return-void
.end method

.method Z(IZ)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/q4;->o:I

    if-eq p1, v0, :cond_f

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_10

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/q4;->o:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->showLoadingView()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v3, 0x0

    .line 6
    :try_start_0
    new-instance v4, Lcom/join/mgps/dto/RequestSearchGameArgs;

    invoke-direct {v4}, Lcom/join/mgps/dto/RequestSearchGameArgs;-><init>()V

    .line 7
    iget-object v5, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setGameId(Ljava/lang/String;)V

    .line 8
    iget v5, p0, Lcom/join/mgps/fragment/q4;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setLangId(Ljava/lang/Integer;)V

    .line 9
    iget v5, p0, Lcom/join/mgps/fragment/q4;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPc(Ljava/lang/Integer;)V

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPn(Ljava/lang/Integer;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->W()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setKeyword(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setUid(Ljava/lang/Integer;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setUid(Ljava/lang/Integer;)V

    .line 14
    :goto_0
    iget v0, p0, Lcom/join/mgps/fragment/q4;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPluginNum(Ljava/lang/Integer;)V

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 15
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setIsRecommend(Ljava/lang/Integer;)V

    .line 16
    new-instance p2, Lcom/join/mgps/dto/RequestModel;

    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p2, v4}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->e:Lcom/join/mgps/rpc/j;

    invoke-virtual {p2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/join/mgps/rpc/j;->f(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 21
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SearchGameListBean;

    .line 22
    iget-boolean v4, p0, Lcom/join/mgps/fragment/q4;->r:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_3

    .line 23
    :try_start_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, v3}, Lcom/join/mgps/fragment/q4;->i0(Ljava/util/List;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_7

    .line 26
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 27
    :goto_3
    :try_start_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {p0, v4, p1}, Lcom/join/mgps/fragment/q4;->h0(Lcom/join/mgps/dto/SearchGameListBean;I)V

    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    if-ne p1, v1, :cond_7

    .line 30
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    .line 31
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/q4;->j0(Z)V

    .line 32
    :cond_7
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 33
    iput-boolean v1, p0, Lcom/join/mgps/fragment/q4;->r:Z

    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v0, :cond_9

    if-gtz v4, :cond_9

    goto :goto_6

    .line 35
    :cond_9
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/SearchGameListBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_a

    if-ne p1, v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0, v4, v1}, Lcom/join/mgps/fragment/q4;->i0(Ljava/util/List;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    move v1, v0

    goto :goto_8

    :catchall_0
    move-exception p2

    move v1, v0

    goto :goto_e

    :catch_0
    move-exception p2

    move v1, v0

    goto :goto_9

    :cond_b
    :goto_7
    const/4 v1, 0x0

    .line 36
    :cond_c
    :goto_8
    :try_start_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->hideLoading()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_a

    :catch_1
    move-exception p2

    goto :goto_9

    :catch_2
    move-exception p2

    const/4 v1, 0x0

    .line 37
    :goto_9
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->showLoadFailed()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_a
    if-eqz v1, :cond_d

    goto :goto_c

    :catch_3
    move-exception p2

    goto :goto_b

    :catchall_1
    move-exception p2

    const/4 v1, 0x0

    goto :goto_e

    :catch_4
    move-exception p2

    const/4 v1, 0x0

    .line 39
    :goto_b
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_d

    .line 40
    :goto_c
    iput v2, p0, Lcom/join/mgps/fragment/q4;->o:I

    goto :goto_d

    .line 41
    :cond_d
    iput p1, p0, Lcom/join/mgps/fragment/q4;->m:I

    .line 42
    iput v3, p0, Lcom/join/mgps/fragment/q4;->o:I

    .line 43
    :goto_d
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->k0()V

    goto :goto_11

    :catchall_2
    move-exception p2

    :goto_e
    if-eqz v1, :cond_e

    .line 44
    iput v2, p0, Lcom/join/mgps/fragment/q4;->o:I

    goto :goto_f

    .line 45
    :cond_e
    iput p1, p0, Lcom/join/mgps/fragment/q4;->m:I

    .line 46
    iput v3, p0, Lcom/join/mgps/fragment/q4;->o:I

    .line 47
    :goto_f
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->k0()V

    .line 48
    throw p2

    :cond_f
    :goto_10
    return-void

    :cond_10
    if-ne p1, v1, :cond_11

    .line 49
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->showLoadFailed()V

    .line 50
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    if-eqz p1, :cond_12

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110206

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/q4;->T(Ljava/lang/String;)V

    :cond_12
    :goto_11
    return-void
.end method

.method a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h5;->P(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->M()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->e:Lcom/join/mgps/rpc/j;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/join/android/app/component/video/d;

    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    const-string v2, "SearchGameListFragmentVideoHelper"

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/d;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    .line 5
    new-instance v0, Lcom/join/mgps/adapter/h5;

    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/h5;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/d;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    .line 6
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/h5;->M(Lcom/join/mgps/adapter/h5$e;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h5;->P(Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 11
    instance-of v1, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    new-instance v1, Lcom/join/mgps/fragment/q4$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q4$a;-><init>(Lcom/join/mgps/fragment/q4;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    new-instance v1, Lcom/join/mgps/fragment/q4$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q4$b;-><init>(Lcom/join/mgps/fragment/q4;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_1

    .line 16
    new-instance v1, Lcom/join/mgps/fragment/q4$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q4$c;-><init>(Lcom/join/mgps/fragment/q4;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$f;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setPreLoadCount(I)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->f0()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->J()V

    .line 21
    iput-boolean v2, p0, Lcom/join/mgps/fragment/q4;->q:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method f0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/q4;->h:I

    if-nez v0, :cond_0

    const-string v0, "searchTotalList"

    goto :goto_0

    :cond_0
    const-string v0, "searchGameList"

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/papa/sim/statistic/p;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method h0(Lcom/join/mgps/dto/SearchGameListBean;I)V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "1"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/SearchGameListBean;->setKeyword(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/i0;->t1(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/join/mgps/fragment/q4;->U(Ljava/util/List;Lcom/join/mgps/dto/CommonGameInfoBean;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/4 v6, 0x7

    const-string v7, "2"

    const/16 v8, 0x70

    if-eqz v3, :cond_7

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    .line 6
    invoke-virtual {p0, v9}, Lcom/join/mgps/fragment/q4;->j0(Z)V

    .line 7
    invoke-direct {p0, v3}, Lcom/join/mgps/fragment/q4;->m0(Ljava/util/List;)V

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 9
    invoke-virtual {v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo()Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x93

    .line 10
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 11
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 13
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 14
    :goto_1
    iget v10, p0, Lcom/join/mgps/fragment/q4;->h:I

    if-nez v10, :cond_3

    .line 15
    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-ne v10, v1, :cond_4

    .line 16
    invoke-virtual {v9, v7}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 17
    :cond_4
    :goto_2
    invoke-virtual {v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 18
    new-instance v10, Lcom/join/mgps/adapter/h5$h;

    invoke-virtual {v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0xc

    goto :goto_3

    :cond_5
    const/16 v11, 0xb

    :goto_3
    invoke-direct {v10, v11, v9}, Lcom/join/mgps/adapter/h5$h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_6
    new-instance v10, Lcom/join/mgps/adapter/h5$h;

    invoke-direct {v10, v6, v9}, Lcom/join/mgps/adapter/h5$h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/q4;->j0(Z)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_c

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/join/mgps/fragment/q4;->m0(Ljava/util/List;)V

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 24
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 25
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 26
    iget v10, p0, Lcom/join/mgps/fragment/q4;->h:I

    if-nez v10, :cond_8

    .line 27
    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-ne v10, v1, :cond_9

    .line 28
    invoke-virtual {v9, v7}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 29
    :cond_9
    :goto_5
    invoke-virtual {v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 30
    new-instance v10, Lcom/join/mgps/adapter/h5$h;

    invoke-virtual {v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0xc

    goto :goto_6

    :cond_a
    const/16 v11, 0xb

    :goto_6
    invoke-direct {v10, v11, v9}, Lcom/join/mgps/adapter/h5$h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 31
    :cond_b
    new-instance v10, Lcom/join/mgps/adapter/h5$h;

    invoke-direct {v10, v6, v9}, Lcom/join/mgps/adapter/h5$h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    if-ne p2, v1, :cond_f

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/join/mgps/fragment/q4;->n:I

    if-ge p1, p2, :cond_d

    .line 33
    new-instance p1, Lcom/join/mgps/adapter/h5$h;

    const/16 p2, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/join/mgps/adapter/h5$h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_d
    new-instance p1, Lcom/join/mgps/adapter/h5;

    iget-object p2, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    invoke-direct {p1, p2, v0}, Lcom/join/mgps/adapter/h5;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/d;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    .line 35
    iget-object p2, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz p2, :cond_e

    .line 36
    invoke-virtual {p2, p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {p1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->S()V

    goto :goto_7

    .line 39
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {p1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :goto_7
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->u:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/q4;->h:I

    if-nez v0, :cond_0

    const-string v0, "searchTotalList"

    goto :goto_0

    :cond_0
    const-string v0, "searchGameList"

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/papa/sim/statistic/p;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method i0(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->m0(Ljava/util/List;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    const/16 v3, 0x67

    .line 5
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    const/16 v3, 0x70

    .line 6
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 7
    iget v3, p0, Lcom/join/mgps/fragment/q4;->h:I

    if-nez v3, :cond_1

    const-string v3, "1"

    .line 8
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "2"

    .line 9
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    new-instance v3, Lcom/join/mgps/adapter/h5$h;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc

    goto :goto_2

    :cond_3
    const/16 v4, 0xb

    :goto_2
    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/h5$h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    new-instance v3, Lcom/join/mgps/adapter/h5$h;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v2}, Lcom/join/mgps/adapter/h5$h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_5
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->m0(Ljava/util/List;)V

    :cond_6
    if-eqz p2, :cond_8

    .line 14
    new-instance p1, Lcom/join/mgps/adapter/h5;

    iget-object p2, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    invoke-direct {p1, p2, v1}, Lcom/join/mgps/adapter/h5;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/d;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    .line 15
    iget-object p2, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz p2, :cond_7

    .line 16
    invoke-virtual {p2, p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->S()V

    goto :goto_3

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    invoke-virtual {p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    :goto_3
    return-void
.end method

.method j0(Z)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f0806f3

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const-string v0, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u5b83\u6e38\u620f"

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->b:Landroid/view/View;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method k0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/join/mgps/fragment/q4;->o:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setNoMore()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->z1()V

    :goto_0
    return-void
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fromSearchP2"

    goto :goto_0

    :cond_0
    const-string v0, "fromSearchP3"

    .line 2
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/q4;->h:I

    if-nez v1, :cond_1

    const-string v0, "fromSearchP4"

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/join/mgps/fragment/q4;->M(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, v0, p2, p3}, Lcom/papa/sim/statistic/p;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/android/app/component/video/d;->l()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v4, 0x6

    if-eq v1, v4, :cond_3

    const/4 v4, 0x7

    if-eq v1, v4, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/join/mgps/fragment/q4;->n0(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/q4;->p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/q4;->p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_3
    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/fragment/q4;->p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->A:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->o0()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 10
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/q4;->p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/fragment/q4;->p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_4
    :pswitch_4
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/q4;->p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/q4;->p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/q4;->p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/d;->m()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/d;->r()V

    :cond_0
    return-void
.end method

.method protected onVisible()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/d;->onVisible()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/fragment/q4;->q:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/q4;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->J()V

    :cond_0
    return-void
.end method

.method p0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->J()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/d;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/android/app/component/video/d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/android/app/component/video/d;->r()V

    :cond_0
    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/q4;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->u:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadingView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/adapter/h5;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->u:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
