.class public Lcom/join/mgps/fragment/t2;
.super Lcom/join/mgps/basefragment/a;
.source "GameOlOpenTestFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
.end annotation


# instance fields
.field b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/rpc/d;

.field private e:Landroid/app/Activity;

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcom/join/mgps/adapter/a2;

.field o:I

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/t2;->f:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/join/mgps/fragment/t2;->i:I

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/t2;->m:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/join/mgps/fragment/t2;->o:I

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/fragment/t2;->p:Z

    return-void
.end method

.method static synthetic W(Lcom/join/mgps/fragment/t2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/t2;->f:Z

    return p0
.end method

.method static synthetic X(Lcom/join/mgps/fragment/t2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/t2;->i:I

    return p1
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/t2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/t2;->p:Z

    return p1
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/t2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/t2;->e:Landroid/app/Activity;

    return-object p0
.end method

.method private h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->g:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk1/a;

    .line 8
    invoke-virtual {v1}, Lk1/a;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 11
    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    iget-object v5, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v3, :cond_3

    if-nez v5, :cond_3

    .line 13
    invoke-virtual {v1, v4}, Lk1/a;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {v1, v3}, Lk1/a;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 15
    invoke-virtual {v1, v5}, Lk1/a;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v1, v4}, Lk1/a;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v1, v4}, Lk1/a;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/t2;->n:Lcom/join/mgps/adapter/a2;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private i0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/t2;->n:Lcom/join/mgps/adapter/a2;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
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

.method private j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->g:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk1/a;

    .line 5
    invoke-virtual {v1}, Lk1/a;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1, p1}, Lk1/a;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/t2;->n:Lcom/join/mgps/adapter/a2;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk1/a;

    .line 5
    invoke-virtual {v1}, Lk1/a;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v1}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1, p1}, Lk1/a;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_5

    return-void

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/t2;->n:Lcom/join/mgps/adapter/a2;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_6
    :goto_1
    return-void
.end method

.method private m0()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/t2;->l:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/t2;->k:I

    if-gt v0, v1, :cond_6

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk1/a;

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v1}, Lk1/a;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    iget v6, p0, Lcom/join/mgps/fragment/t2;->l:I

    sub-int v6, v0, v6

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/join/mgps/adapter/a2$d;

    if-eqz v6, :cond_5

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/adapter/a2$d;

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lk1/a;->d()I

    move-result v1

    if-eq v1, v5, :cond_1

    goto/16 :goto_3

    .line 9
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v1

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 11
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_3

    .line 12
    :try_start_1
    iget-object v8, v3, Lcom/join/mgps/adapter/a2$d;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

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

    goto :goto_1

    .line 13
    :cond_3
    iget-object v8, v3, Lcom/join/mgps/adapter/a2$d;->j:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

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

    .line 14
    :goto_1
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 15
    iget-object v4, v3, Lcom/join/mgps/adapter/a2$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v4, v3, Lcom/join/mgps/adapter/a2$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    :goto_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 18
    iget-object v2, v3, Lcom/join/mgps/adapter/a2$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/S"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method protected N()I
    .locals 1

    const v0, 0x7f0c0221

    return v0
.end method

.method protected O()I
    .locals 1

    const v0, 0x7f090593

    return v0
.end method

.method b0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/t2;->d:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/t2;->e:Landroid/app/Activity;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :try_start_0
    const-string v1, "intentTo"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/t2;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/t2;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tasksiz     mapsize  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "infoo"

    invoke-static {v3, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/a2;

    iget-object v1, p0, Lcom/join/mgps/fragment/t2;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/a2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/t2;->n:Lcom/join/mgps/adapter/a2;

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/adapter/a2;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/t2$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t2$a;-><init>(Lcom/join/mgps/fragment/t2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/t2$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t2$b;-><init>(Lcom/join/mgps/fragment/t2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/t2$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t2$c;-><init>(Lcom/join/mgps/fragment/t2;)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->loadData()V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/t2;->n:Lcom/join/mgps/adapter/a2;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method c0()V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/t2;->f:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget v2, p0, Lcom/join/mgps/fragment/t2;->i:I

    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/t2;->d0(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/join/mgps/fragment/t2;->o:I

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    .line 5
    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->Y(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->j(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->p1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->i1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->z1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/fragment/t2;->d:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->Y(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_15

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v3

    if-ne v3, v0, :cond_15

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameOLDataBean;

    if-eqz v2, :cond_13

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameOLDataBean;->getHead_ad()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget v7, p0, Lcom/join/mgps/fragment/t2;->i:I

    if-ne v7, v0, :cond_5

    .line 16
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GameOLHeadAdBean;

    if-eqz v6, :cond_5

    .line 17
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v8, "1"

    .line 18
    invoke-virtual {v7}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getAd_switch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    new-instance v7, Lk1/a;

    invoke-direct {v7}, Lk1/a;-><init>()V

    .line 20
    invoke-virtual {v7, v1}, Lk1/a;->i(I)V

    .line 21
    invoke-virtual {v7, v6}, Lk1/a;->g(Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    .line 22
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameOLDataBean;->getGame_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/GameOLFirstBean;

    .line 26
    invoke-virtual {v8}, Lcom/join/mgps/dto/GameOLFirstBean;->getGame_open_time()Ljava/lang/String;

    move-result-object v9

    .line 27
    iget v10, p0, Lcom/join/mgps/fragment/t2;->o:I

    if-ne v10, v5, :cond_e

    .line 28
    invoke-static {v9}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 29
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "000"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 30
    invoke-static {v9, v10}, Lcom/join/android/app/common/utils/c;->g(J)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 31
    iput-boolean v0, p0, Lcom/join/mgps/fragment/t2;->p:Z

    .line 32
    iget v9, p0, Lcom/join/mgps/fragment/t2;->o:I

    if-eq v9, v5, :cond_6

    if-nez v9, :cond_8

    .line 33
    :cond_6
    iget v9, p0, Lcom/join/mgps/fragment/t2;->i:I

    if-ne v9, v0, :cond_8

    if-nez v7, :cond_8

    .line 34
    new-instance v7, Lk1/a;

    invoke-direct {v7}, Lk1/a;-><init>()V

    .line 35
    invoke-virtual {v7, v0}, Lk1/a;->i(I)V

    .line 36
    iget v9, p0, Lcom/join/mgps/fragment/t2;->o:I

    if-ne v9, v5, :cond_7

    const-string v9, "\u4eca\u65e5\u5f00\u6d4b"

    .line 37
    invoke-virtual {v7, v9}, Lk1/a;->j(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v9, "\u4eca\u65e5\u4e0a\u65b0"

    .line 38
    invoke-virtual {v7, v9}, Lk1/a;->j(Ljava/lang/String;)V

    .line 39
    :goto_2
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    .line 40
    :cond_8
    new-instance v9, Lk1/a;

    invoke-direct {v9}, Lk1/a;-><init>()V

    .line 41
    invoke-virtual {v9, v4}, Lk1/a;->i(I)V

    .line 42
    invoke-virtual {v9, v8}, Lk1/a;->h(Ljava/lang/Object;)V

    .line 43
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_9
    iget v9, p0, Lcom/join/mgps/fragment/t2;->o:I

    if-eq v9, v5, :cond_a

    if-nez v9, :cond_b

    .line 45
    :cond_a
    iget-boolean v9, p0, Lcom/join/mgps/fragment/t2;->p:Z

    if-eqz v9, :cond_b

    .line 46
    new-instance v9, Lk1/a;

    invoke-direct {v9}, Lk1/a;-><init>()V

    .line 47
    invoke-virtual {v9, v0}, Lk1/a;->i(I)V

    const-string v10, "\u8fc7\u53bb\u4e24\u5468"

    .line 48
    invoke-virtual {v9, v10}, Lk1/a;->j(Ljava/lang/String;)V

    .line 49
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iput-boolean v1, p0, Lcom/join/mgps/fragment/t2;->p:Z

    .line 51
    :cond_b
    new-instance v9, Lk1/a;

    invoke-direct {v9}, Lk1/a;-><init>()V

    .line 52
    invoke-virtual {v9, v4}, Lk1/a;->i(I)V

    .line 53
    invoke-virtual {v9, v8}, Lk1/a;->h(Ljava/lang/Object;)V

    .line 54
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 55
    :cond_c
    iget v8, p0, Lcom/join/mgps/fragment/t2;->i:I

    if-ne v8, v0, :cond_d

    .line 56
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->showLodingFailed()V

    goto/16 :goto_1

    .line 57
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->f0()V

    goto/16 :goto_1

    .line 58
    :cond_e
    new-instance v9, Lk1/a;

    invoke-direct {v9}, Lk1/a;-><init>()V

    .line 59
    invoke-virtual {v9, v4}, Lk1/a;->i(I)V

    .line 60
    invoke-virtual {v9, v8}, Lk1/a;->h(Ljava/lang/Object;)V

    .line 61
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 62
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_12

    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->f0()V

    goto :goto_3

    .line 64
    :cond_10
    iget v2, p0, Lcom/join/mgps/fragment/t2;->i:I

    if-ne v2, v0, :cond_11

    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->showLodingFailed()V

    goto :goto_3

    .line 66
    :cond_11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->f0()V

    .line 67
    :cond_12
    :goto_3
    iget v2, p0, Lcom/join/mgps/fragment/t2;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/join/mgps/fragment/t2;->i:I

    .line 68
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/t2;->showMain(Ljava/util/List;)V

    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->l0()V

    goto :goto_4

    .line 70
    :cond_13
    iget v2, p0, Lcom/join/mgps/fragment/t2;->i:I

    if-ne v2, v0, :cond_14

    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->showLodingFailed()V

    goto :goto_4

    .line 72
    :cond_14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->f0()V

    goto :goto_4

    .line 73
    :cond_15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->l0()V

    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 75
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->l0()V

    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/fragment/t2;->f:Z

    goto :goto_6

    :goto_5
    iput-boolean v1, p0, Lcom/join/mgps/fragment/t2;->f:Z

    .line 79
    throw v0

    .line 80
    :cond_16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->l0()V

    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->showLodingFailed()V

    :goto_6
    return-void
.end method

.method public d0(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameOLRequest(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method e0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/t2;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->c0()V

    return-void
.end method

.method f0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method g0(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/t2;->n:Lcom/join/mgps/adapter/a2;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method l0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected loadData()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t2;->c0()V

    return-void
.end method

.method public n0(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk1/a;

    .line 4
    invoke-virtual {v2}, Lk1/a;->d()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameOLFirstBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Lk1/a;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/t2;->i0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/t2;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/t2;->h0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/t2;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/t2;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/t2;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x7

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/t2;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/fragment/t2;->h:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/join/mgps/fragment/t2;->m:Z

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/fragment/t2;->m0()V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/t2;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x6

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/t2;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/t2;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/t2;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/t2;->o0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/fragment/t2;->k:I

    .line 2
    iput p2, p0, Lcom/join/mgps/fragment/t2;->l:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/fragment/t2;->m:Z

    return-void
.end method

.method showLodingFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    :cond_1
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->Q()V

    .line 3
    iget v0, p0, Lcom/join/mgps/fragment/t2;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->g:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/t2;->n0(Ljava/util/List;Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget p1, p0, Lcom/join/mgps/fragment/t2;->i:I

    if-ne p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_2
    const-string p1, "infoo"

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/fragment/t2;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   showMain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/t2;->n:Lcom/join/mgps/adapter/a2;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
