.class public Lcom/join/mgps/fragment/k0;
.super Landroidx/fragment/app/Fragment;
.source "FindMiniGameFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/k0$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0203
.end annotation


# instance fields
.field a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/fragment/k0$d;

.field d:Landroid/content/Context;

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/j;

.field i:I

.field j:Lcom/join/android/app/component/video/d;

.field private k:Z

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/k0;->i:I

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/k0;->k:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/k0;->l:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/fragment/k0;->n:Z

    return-void
.end method

.method static synthetic O(Lcom/join/mgps/fragment/k0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/k0;->k:Z

    return p1
.end method

.method static synthetic P(Lcom/join/mgps/fragment/k0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/k0;->a0()V

    return-void
.end method

.method private U(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

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
    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

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

    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isGame()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isModGameVm()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 11
    iget-object v4, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    iget-object v6, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v4, :cond_2

    if-nez v6, :cond_2

    .line 13
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    if-eqz p1, :cond_7

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method private V(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/k0;->T(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method private W(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k0;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method private X(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/k0;->T(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method private a0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->getFirstCompletelyVisiblePosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->getLastCompletelyVisiblePosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isMiniGame()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isHasExposure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v4, ""

    .line 7
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    const-string v4, "104"

    .line 8
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->setHasExposure(Z)V

    .line 11
    iget-object v4, p0, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

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

.method private e0(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->l:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->l:Ljava/util/List;

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
    iget-object v4, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

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
    iget-object v8, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

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
    iget-object v4, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v4, :cond_8

    .line 17
    iget-object v4, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

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

.method private f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2
    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v2, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 3
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isModGameVm()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 7
    :goto_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v7

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 15
    :cond_4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getMod_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-nez v4, :cond_5

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_7

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void
.end method

.method private g0(Ljava/lang/String;I)V
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
    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
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

    .line 6
    :cond_1
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->setRequestStatus(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method M()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/k0;->h:Lcom/join/mgps/rpc/j;

    .line 4
    new-instance v0, Lcom/join/mgps/fragment/k0$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k0$d;-><init>(Lcom/join/mgps/fragment/k0;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setPreLoadCount(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 9
    new-instance v0, Lcom/join/android/app/component/video/d;

    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    const-string v2, "FindMiniGameFragmentVideoHelper"

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/d;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/k0;->j:Lcom/join/android/app/component/video/d;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    new-instance v1, Lcom/join/mgps/fragment/k0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/k0$a;-><init>(Lcom/join/mgps/fragment/k0;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$f;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 12
    instance-of v1, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    new-instance v1, Lcom/join/mgps/fragment/k0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/k0$b;-><init>(Lcom/join/mgps/fragment/k0;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    new-instance v1, Lcom/join/mgps/fragment/k0$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/k0$c;-><init>(Lcom/join/mgps/fragment/k0;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->Z()V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k0;->R(I)V

    return-void
.end method

.method N()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->S()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method Q()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->j:Lcom/join/android/app/component/video/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/d;->a(I)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/k0;->a0()V

    return-void
.end method

.method R(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/fragment/k0;->k:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->showLoding()V

    .line 4
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Lcom/join/mgps/dto/RequestMiniGameArgs;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestMiniGameArgs;-><init>()V

    .line 6
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestMiniGameArgs;->setPage(I)V

    const/16 v3, 0x14

    .line 7
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestMiniGameArgs;->setPageSize(I)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->h:Lcom/join/mgps/rpc/j;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/j;->r(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->S()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->d0()V

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/k0;->c0(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->N()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->b0()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->showLodingFailed()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method S()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->g:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method T(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method Z()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/k0;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->l:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/k0;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method b0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->setNoMore()V

    :cond_0
    return-void
.end method

.method c0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->S()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->c:Lcom/join/mgps/fragment/k0$d;

    if-eqz v0, :cond_2

    .line 3
    iget v1, p0, Lcom/join/mgps/fragment/k0;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->Q()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 7
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k0;->e0(Ljava/util/List;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->r1()V

    .line 10
    :cond_3
    iget-boolean p1, p0, Lcom/join/mgps/fragment/k0;->n:Z

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->b0()V

    :cond_4
    return-void
.end method

.method d0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k0;->V(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k0;->X(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k0;->U(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k0;->W(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method public i0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->j:Lcom/join/android/app/component/video/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/d;->o()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->j:Lcom/join/android/app/component/video/d;

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

    if-eq v1, v2, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/join/mgps/fragment/k0;->g0(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/k0;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/k0;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/fragment/k0;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/k0;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/fragment/k0;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_2
    :pswitch_4
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/k0;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/k0;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/k0;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->j:Lcom/join/android/app/component/video/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/d;->m()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->i0()V

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->showLoding()V

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/k0;->i:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k0;->R(I)V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k0;->i0()V

    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k0;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
