.class public Lcom/join/mgps/fragment/s4;
.super Lcom/join/mgps/fragment/d;
.source "SearchListFragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/m5$g;
.implements Ll1/i;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c022c
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/rpc/d;

.field c:Lcom/join/mgps/adapter/m5;

.field d:I
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m5$o;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field private m:Landroid/content/Context;

.field private n:Z

.field o:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->f:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/s4;->k:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s4;->n:Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/s4;->w:I

    .line 9
    iput v0, p0, Lcom/join/mgps/fragment/s4;->x:I

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/s4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/s4;->w:I

    return p1
.end method

.method static synthetic O(Lcom/join/mgps/fragment/s4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/s4;->x:I

    return p1
.end method

.method private a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/m5$o;

    .line 8
    iget v3, v2, Lcom/join/mgps/adapter/m5$o;->a:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, v2, Lcom/join/mgps/adapter/m5$o;->b:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 11
    iget-object v3, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    iget-object v5, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v3, :cond_3

    if-nez v5, :cond_3

    .line 13
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {v2, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 15
    invoke-virtual {v2, v5}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v2, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->Z()V

    return-void
.end method

.method private b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->Z()V
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

.method private c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s4;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->Z()V

    return-void
.end method

.method private d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s4;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->Z()V

    :cond_3
    :goto_0
    return-void
.end method

.method private i0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v2, v1, p1}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->setShowDivider(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/adapter/m5$o;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/adapter/m5$o;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/m5$o;

    .line 2
    iget v2, v1, Lcom/join/mgps/adapter/m5$o;->a:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, v1, Lcom/join/mgps/adapter/m5$o;->b:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 8
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_7
    if-nez v2, :cond_8

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 21
    :cond_9
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 23
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/m5;->I(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private m0(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

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
    iget-object v8, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 10
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    .line 14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 17
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    :cond_9
    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 21
    :cond_a
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private n0()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/s4;->x:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/join/mgps/fragment/s4;->w:I

    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/s4;->x:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/s4;->w:I

    if-gt v0, v1, :cond_7

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    const-class v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;
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
    invoke-virtual {v1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    iget v5, p0, Lcom/join/mgps/fragment/s4;->x:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/join/mgps/adapter/m5$t;

    if-eqz v5, :cond_6

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/m5$t;

    .line 12
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 14
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_4

    .line 15
    :try_start_2
    iget-object v8, v2, Lcom/join/mgps/adapter/m5$t;->j:Landroid/widget/TextView;

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

    .line 16
    :cond_4
    iget-object v8, v2, Lcom/join/mgps/adapter/m5$t;->j:Landroid/widget/TextView;

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

    .line 17
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_5

    .line 18
    iget-object v3, v2, Lcom/join/mgps/adapter/m5$t;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    .line 19
    :cond_5
    iget-object v3, v2, Lcom/join/mgps/adapter/m5$t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 20
    :goto_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 21
    iget-object v1, v2, Lcom/join/mgps/adapter/m5$t;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 22
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
    iput v0, p0, Lcom/join/mgps/fragment/s4;->j:I

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lcom/join/mgps/fragment/s4$d;

    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/s4$d;-><init>(Lcom/join/mgps/fragment/s4;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    new-instance v2, Lcom/join/mgps/fragment/s4$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/s4$e;-><init>(Lcom/join/mgps/fragment/s4;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->M0()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/s4;->h:I

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->L0()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/s4;->i:I

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->getGameId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->e:Ljava/lang/String;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadingView()V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->X()V

    .line 16
    iget v0, p0, Lcom/join/mgps/fragment/s4;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/s4;->W(I)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/s4;->V(I)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/s4;->U(I)V

    :goto_0
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

.method P(Ljava/util/List;Lcom/join/mgps/dto/SearchResultAdinfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;",
            "Lcom/join/mgps/dto/SearchResultAdinfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    invoke-virtual {v0, p2}, Lcom/join/mgps/adapter/m5;->G(Lcom/join/mgps/dto/SearchResultAdinfo;)V

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_9

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchResultAdinfo;->getPosition()I

    move-result p1

    new-instance v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchResultAdinfo;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 8
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_9

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchResultAdinfo;->getPosition()I

    move-result v3

    if-ne p1, v3, :cond_5

    .line 10
    new-instance v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-direct {v3, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/4 v4, 0x2

    .line 11
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/CollectionBeanSub;->setViewType(I)V

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/CollectionBeanSub;->setAd(Z)V

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 16
    :cond_4
    new-instance v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-direct {v3, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 17
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/CollectionBeanSub;->setViewType(I)V

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_7

    :cond_6
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 21
    :cond_7
    new-instance v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-direct {v3, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 22
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/CollectionBeanSub;->setViewType(I)V

    .line 23
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_9
    :goto_3
    return-object v0
.end method

.method Q(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

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

.method R()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

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

.method S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/join/mgps/activity/SearchListActivity1;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->M0()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/s4;->h:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    check-cast v0, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->L0()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/s4;->i:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/s4;->d:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/join/mgps/fragment/s4;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s4;->W(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Lcom/join/mgps/fragment/s4;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s4;->V(I)V

    goto :goto_0

    .line 7
    :cond_3
    iget v0, p0, Lcom/join/mgps/fragment/s4;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s4;->U(I)V

    :goto_0
    return-void
.end method

.method T(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method U(I)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/s4;->l:I

    if-eq p1, v0, :cond_2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadingView()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/join/mgps/fragment/s4;->k:I

    iget v7, p0, Lcom/join/mgps/fragment/s4;->h:I

    iget v8, p0, Lcom/join/mgps/fragment/s4;->i:I

    iget-object v9, p0, Lcom/join/mgps/fragment/s4;->e:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v3, p0, Lcom/join/mgps/fragment/s4;->b:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/d;->D1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SearchIntegratedBean;

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s4;->g0(Lcom/join/mgps/dto/SearchIntegratedBean;I)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->hideLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :goto_0
    iput v2, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->k0()V

    goto :goto_3

    .line 16
    :goto_1
    iput v2, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->k0()V

    .line 18
    throw p1

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-ne p1, v1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadFailed()V

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110206

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/s4;->T(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method V(I)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/s4;->l:I

    if-eq p1, v0, :cond_8

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadingView()V

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v4

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Lcom/join/mgps/fragment/s4;->k:I

    iget v8, p0, Lcom/join/mgps/fragment/s4;->h:I

    iget v9, p0, Lcom/join/mgps/fragment/s4;->i:I

    iget-object v10, p0, Lcom/join/mgps/fragment/s4;->e:Ljava/lang/String;

    move v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/fragment/s4;->b:Lcom/join/mgps/rpc/d;

    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/d;->r(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ne p1, v1, :cond_3

    .line 10
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/fragment/s4;->f0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/fragment/s4;->f0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 12
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->hideLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    const/4 v4, 0x0

    .line 13
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadFailed()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v4, :cond_6

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_8

    :catch_3
    move-exception v1

    const/4 v4, 0x0

    .line 15
    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_6

    .line 16
    :goto_6
    iput v2, p0, Lcom/join/mgps/fragment/s4;->l:I

    goto :goto_7

    .line 17
    :cond_6
    iput p1, p0, Lcom/join/mgps/fragment/s4;->j:I

    .line 18
    iput v0, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 19
    :goto_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->k0()V

    goto :goto_b

    :catchall_1
    move-exception v1

    :goto_8
    if-eqz v4, :cond_7

    .line 20
    iput v2, p0, Lcom/join/mgps/fragment/s4;->l:I

    goto :goto_9

    .line 21
    :cond_7
    iput p1, p0, Lcom/join/mgps/fragment/s4;->j:I

    .line 22
    iput v0, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 23
    :goto_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->k0()V

    .line 24
    throw v1

    :cond_8
    :goto_a
    return-void

    :cond_9
    if-ne p1, v1, :cond_b

    .line 25
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadFailed()V

    .line 26
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    if-eqz p1, :cond_c

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110206

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/s4;->T(Ljava/lang/String;)V

    :cond_c
    :goto_b
    return-void
.end method

.method W(I)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 2
    iget v0, p0, Lcom/join/mgps/fragment/s4;->l:I

    if-eq p1, v0, :cond_8

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadingView()V

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v4

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Lcom/join/mgps/fragment/s4;->k:I

    iget v8, p0, Lcom/join/mgps/fragment/s4;->h:I

    iget v9, p0, Lcom/join/mgps/fragment/s4;->i:I

    iget-object v10, p0, Lcom/join/mgps/fragment/s4;->e:Ljava/lang/String;

    move v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchIntegratedRequestBean(Ljava/lang/String;IIIILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/fragment/s4;->b:Lcom/join/mgps/rpc/d;

    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/d;->o1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchPostsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchPostsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchPostsBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ne p1, v1, :cond_3

    .line 12
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SearchPostsBean;

    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/fragment/s4;->h0(Lcom/join/mgps/dto/SearchPostsBean;I)V

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SearchPostsBean;

    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/fragment/s4;->h0(Lcom/join/mgps/dto/SearchPostsBean;I)V

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->hideLoading()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    const/4 v4, 0x0

    .line 15
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadFailed()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v4, :cond_6

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_8

    :catch_3
    move-exception v1

    const/4 v4, 0x0

    .line 17
    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_6

    .line 18
    :goto_6
    iput v2, p0, Lcom/join/mgps/fragment/s4;->l:I

    goto :goto_7

    .line 19
    :cond_6
    iput p1, p0, Lcom/join/mgps/fragment/s4;->j:I

    .line 20
    iput v0, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 21
    :goto_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->k0()V

    goto :goto_b

    :catchall_1
    move-exception v1

    :goto_8
    if-eqz v4, :cond_7

    .line 22
    iput v2, p0, Lcom/join/mgps/fragment/s4;->l:I

    goto :goto_9

    .line 23
    :cond_7
    iput p1, p0, Lcom/join/mgps/fragment/s4;->j:I

    .line 24
    iput v0, p0, Lcom/join/mgps/fragment/s4;->l:I

    .line 25
    :goto_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->k0()V

    .line 26
    throw v1

    :cond_8
    :goto_a
    return-void

    :cond_9
    if-ne p1, v1, :cond_b

    .line 27
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->showLoadFailed()V

    .line 28
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    if-eqz p1, :cond_c

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110206

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/s4;->T(Ljava/lang/String;)V

    :cond_c
    :goto_b
    return-void
.end method

.method X()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/fragment/s4;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/join/mgps/fragment/s4;->d:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v3, Lcom/join/mgps/dto/SearchIntegratedBean;

    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SearchIntegratedBean;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchIntegratedBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchIntegratedBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/s4;->g0(Lcom/join/mgps/dto/SearchIntegratedBean;I)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->hideLoading()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v3, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SearchGameFavoriteListBean;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/s4;->f0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->hideLoading()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 12
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v3, Lcom/join/mgps/dto/SearchPostsBean;

    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SearchPostsBean;

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchPostsBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchPostsBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/s4;->h0(Lcom/join/mgps/dto/SearchPostsBean;I)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->hideLoading()V

    :cond_3
    :goto_0
    return-void
.end method

.method Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/m5;->L(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->b:Lcom/join/mgps/rpc/d;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/m5;

    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/m5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/m5;->F(Lcom/join/mgps/adapter/m5$g;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/m5;->L(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/s4$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s4$a;-><init>(Lcom/join/mgps/fragment/s4;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->e0()V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->J()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s4;->n:Z

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
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method e0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method f0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/m5$o;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->R()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->setKeyword(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "2"

    invoke-static {v0, p2}, Lcom/join/mgps/Util/i0;->t1(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x6

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v2, v0, p2}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/adapter/m5$o;

    const/16 v2, 0xb

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v2, v0, p2}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/m5;->I(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->Z()V

    :cond_5
    return-void
.end method

.method g0(Lcom/join/mgps/dto/SearchIntegratedBean;I)V
    .locals 16
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v4, p2

    if-ne v4, v2, :cond_1

    .line 2
    iget-object v4, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_0

    .line 3
    iget-object v4, v0, Lcom/join/mgps/fragment/s4;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/SearchIntegratedBean;->setKeyword(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v5, v4}, Lcom/join/mgps/Util/i0;->t1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_3

    .line 5
    iget-object v1, v0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/m5;->I(Ljava/util/List;)V

    .line 6
    iget-object v1, v0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/s4;->Z()V

    :cond_2
    return-void

    .line 7
    :cond_3
    iget-object v4, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v5, Lcom/join/mgps/adapter/m5$o;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v3}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v4

    const/16 v5, 0xc

    const/4 v7, 0x5

    const/16 v8, 0xb

    if-eqz v4, :cond_11

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v4

    const/4 v9, 0x7

    const-string v10, "2"

    const-string v11, "1"

    if-eqz v4, :cond_a

    .line 10
    iget-object v4, v0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/join/mgps/adapter/m5;->G(Lcom/join/mgps/dto/SearchResultAdinfo;)V

    .line 11
    new-instance v4, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/mgps/dto/SearchResultAdinfo;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v12

    invoke-direct {v4, v12}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 12
    iget v12, v0, Lcom/join/mgps/fragment/s4;->d:I

    if-nez v12, :cond_4

    .line 13
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne v12, v2, :cond_5

    .line 14
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 15
    :cond_5
    :goto_0
    iget-object v12, v0, Lcom/join/mgps/fragment/s4;->u:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 17
    invoke-virtual {v4, v13}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    :cond_7
    const/16 v12, 0x93

    .line 18
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 19
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 20
    iget-object v12, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v13, Lcom/join/mgps/adapter/m5$o;

    const/16 v14, 0x9

    invoke-direct {v13, v14, v4}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v12, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v13, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v13, v9, v4}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_9

    :cond_8
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 23
    :cond_9
    new-instance v12, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v12, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 24
    invoke-virtual {v12, v2}, Lcom/join/mgps/dto/CollectionBeanSub;->setViewType(I)V

    .line 25
    iget-object v12, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v13, Lcom/join/mgps/adapter/m5$o;

    const/16 v14, 0x8

    invoke-direct {v13, v14, v4}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    move-result-object v4

    const/16 v12, 0x70

    const/16 v13, 0x67

    if-eqz v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_e

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/join/mgps/fragment/s4;->m0(Ljava/util/List;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_d

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 30
    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 31
    invoke-virtual {v14, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 32
    iget v15, v0, Lcom/join/mgps/fragment/s4;->d:I

    if-nez v15, :cond_b

    .line 33
    invoke-virtual {v14, v11}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    if-ne v15, v2, :cond_c

    .line 34
    invoke-virtual {v14, v10}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 35
    :cond_c
    :goto_3
    iget-object v15, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v6, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v6, v9, v14}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v2}, Lcom/join/mgps/adapter/m5$o;->a(Z)Lcom/join/mgps/adapter/m5$o;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xa

    goto :goto_2

    .line 36
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v7, :cond_11

    .line 37
    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v4, v5, v3}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 38
    :cond_e
    iget-object v4, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v6, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v6, v8, v3}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getRecommend_list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getRecommend_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_11

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getRecommend_list()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/join/mgps/fragment/s4;->m0(Ljava/util/List;)V

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/SearchIntegratedGameBean;->getRecommend_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 42
    invoke-virtual {v4, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 43
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 44
    iget v6, v0, Lcom/join/mgps/fragment/s4;->d:I

    if-nez v6, :cond_f

    .line 45
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    if-ne v6, v2, :cond_10

    .line 46
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 47
    :cond_10
    :goto_5
    iget-object v6, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v14, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v14, v9, v4}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v2}, Lcom/join/mgps/adapter/m5$o;->a(Z)Lcom/join/mgps/adapter/m5$o;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 48
    :cond_11
    :goto_6
    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v3, Lcom/join/mgps/adapter/m5$o;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v9, 0xa

    invoke-direct {v3, v9, v6}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_13

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 52
    iget-object v9, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v10, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v10, v3, v6}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 53
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v7, :cond_14

    .line 54
    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v3, Lcom/join/mgps/adapter/m5$o;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 55
    :cond_13
    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v6, Lcom/join/mgps/adapter/m5$o;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v8, v4}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getRecommend_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getRecommend_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_14

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->getRecommend_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 58
    iget-object v6, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v9, Lcom/join/mgps/adapter/m5$o;

    invoke-direct {v9, v3, v4}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 59
    :cond_14
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v2, :cond_15

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 61
    :cond_16
    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/m5$o;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0xa

    invoke-direct {v4, v8, v6}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 63
    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/m5$o;

    const/4 v6, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    move-result-object v8

    invoke-direct {v4, v6, v8}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 66
    invoke-direct {v0, v4}, Lcom/join/mgps/fragment/s4;->i0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    goto :goto_a

    .line 67
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v7, :cond_1a

    .line 68
    iget-object v1, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/adapter/m5$o;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 69
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 70
    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/m5$o;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    invoke-direct {v4, v6, v5}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v4, Lcom/join/mgps/adapter/m5$o;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v8, v3}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/SearchIntegratedBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 73
    invoke-direct {v0, v2}, Lcom/join/mgps/fragment/s4;->i0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    goto :goto_b

    .line 74
    :cond_1a
    :goto_c
    iget-object v1, v0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    iget-object v2, v0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/m5;->I(Ljava/util/List;)V

    .line 75
    iget-object v1, v0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/s4;->Z()V

    .line 76
    :cond_1b
    iget-object v1, v0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/widget/ListView;->requestLayout()V

    :cond_1c
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/s4;->d:I

    if-nez v0, :cond_0

    const-string v0, "searchTotalList"

    goto :goto_0

    :cond_0
    const-string v0, "searchGameList"

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/papa/sim/statistic/p;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method h0(Lcom/join/mgps/dto/SearchPostsBean;I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/SearchPostsBean;->setKeyword(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-static {v2, v1}, Lcom/join/mgps/Util/i0;->t1(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    move-result-object v1

    if-eqz v1, :cond_4

    if-ne p2, v0, :cond_4

    .line 7
    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/m5$o;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getTop_area()Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 10
    invoke-direct {p0, p2}, Lcom/join/mgps/fragment/s4;->i0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    goto :goto_0

    .line 11
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/m5$o;

    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/m5$o;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchPostsBean;->getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean;->getRecommend_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    .line 14
    invoke-direct {p0, p2}, Lcom/join/mgps/fragment/s4;->i0(Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;)V

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    iget-object p2, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/m5;->I(Ljava/util/List;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->c:Lcom/join/mgps/adapter/m5;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->Z()V

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    :cond_8
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->o:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/s4;->d:I

    if-nez v0, :cond_0

    const-string v0, "searchTotalList"

    goto :goto_0

    :cond_0
    const-string v0, "searchGameList"

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/papa/sim/statistic/p;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j0(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/s4;->d:I

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->d()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    new-instance v0, Lcom/join/mgps/fragment/s4$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/s4$b;-><init>(Lcom/join/mgps/fragment/s4;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    new-instance v0, Lcom/join/mgps/fragment/s4$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/s4$c;-><init>(Lcom/join/mgps/fragment/s4;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->J()V

    return-void
.end method

.method k0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/join/mgps/fragment/s4;->l:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    :goto_0
    return-void
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fromSearchP2"

    goto :goto_0

    :cond_0
    const-string v0, "fromSearchP3"

    .line 2
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/s4;->d:I

    if-nez v1, :cond_1

    const-string v0, "fromSearchP4"

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/join/mgps/fragment/s4;->M(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

.method o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s4;->b0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s4;->d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s4;->a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s4;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

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

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v3, 0x6

    if-eq p1, v3, :cond_3

    const/4 v3, 0x7

    if-eq p1, v3, :cond_2

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v4, 0x30

    if-eq p1, v4, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/s4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/s4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->v:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/fragment/s4;->n0()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 9
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/s4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/s4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_4
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/s4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/s4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s4;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisible()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/d;->onVisible()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/fragment/s4;->n:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s4;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->J()V

    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->J()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s4;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->o:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->p:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->o:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->o:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s4;->p:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
