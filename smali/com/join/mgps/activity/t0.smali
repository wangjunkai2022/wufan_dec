.class public Lcom/join/mgps/activity/t0;
.super Lcom/join/mgps/basefragment/a;
.source "MGFightFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c03ef
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field d:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/rpc/d;

.field private f:Lcom/join/mgps/adapter/t;

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

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/join/mgps/dto/LoadWarCenterBean;

.field private r:J

.field private s:Z

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/WarMatchAndLocalTable;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/FightMainTable;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->c:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->i:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->j:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->k:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->l:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->m:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->n:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->o:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->p:Ljava/util/List;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/t0;->s:Z

    .line 13
    iput v0, p0, Lcom/join/mgps/activity/t0;->x:I

    return-void
.end method

.method static synthetic W(Lcom/join/mgps/activity/t0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/t0;->s:Z

    return p0
.end method

.method private X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCdn_down_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCdn_down_switch(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getOther_down_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOther_down_switch(I)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getPay_game_amount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/db/tables/DownloadUrlTable;

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/DownloadUrlTable;->getDownUrlBean()Lcom/join/mgps/dto/DownloadUrlBean;

    move-result-object v3

    .line 13
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTp_down_url(Ljava/util/List;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/join/mgps/helper/MGFightUtils;->warDataToTask(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object p1
.end method

.method private c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->f:Lcom/join/mgps/adapter/t;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/t0;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->f:Lcom/join/mgps/adapter/t;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method private e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/LoadWarCenterBean;->setDownloadTasksMap(Ljava/util/Map;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->f:Lcom/join/mgps/adapter/t;

    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/t;->h(Lcom/join/mgps/dto/LoadWarCenterBean;)V

    return-void
.end method

.method private f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->f:Lcom/join/mgps/adapter/t;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_6
    :goto_1
    return-void
.end method

.method private k0()V
    .locals 24

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Lcom/join/mgps/activity/t0;->x:I

    if-ltz v0, :cond_11

    iget v0, v1, Lcom/join/mgps/activity/t0;->w:I

    iget-object v2, v1, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_11

    .line 2
    iget v0, v1, Lcom/join/mgps/activity/t0;->x:I

    move v2, v0

    :goto_0
    iget v0, v1, Lcom/join/mgps/activity/t0;->w:I

    if-gt v2, v0, :cond_11

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstVisiblePosition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/join/mgps/activity/t0;->x:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, v1, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_10

    const-string v4, "Left"

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v5, "Mid"

    .line 6
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v6, "Right"

    .line 7
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v7, "/S"

    const-string v8, "progress="

    const-string v11, ";status="

    const-string v12, ",name="

    const-string v13, "/"

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    const/16 v9, 0xc

    const/4 v10, 0x2

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v10, :cond_0

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, v1, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    iget v10, v1, Lcom/join/mgps/activity/t0;->x:I

    sub-int v10, v2, v10

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/join/mgps/adapter/t$n;

    if-eqz v10, :cond_4

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/t$n;

    .line 13
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v10

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v9

    if-nez v9, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    mul-double v18, v18, v14

    move-object/from16 v20, v11

    mul-double v10, v18, v14

    double-to-long v10, v10

    .line 15
    :try_start_1
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v18

    const-wide/16 v16, 0x0

    cmp-long v21, v18, v16

    if-nez v21, :cond_2

    .line 16
    iget-object v14, v0, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v6

    :try_start_2
    invoke-static/range {v21 .. v22}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move-object/from16 v23, v6

    .line 17
    iget-object v6, v0, Lcom/join/mgps/adapter/t$n;->s:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    const/16 v10, 0xc

    if-ne v6, v10, :cond_3

    .line 20
    iget-object v6, v0, Lcom/join/mgps/adapter/t$n;->y:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 21
    :cond_3
    iget-object v6, v0, Lcom/join/mgps/adapter/t$n;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 22
    :goto_2
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 23
    iget-object v0, v0, Lcom/join/mgps/adapter/t$n;->v:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v23, v6

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v20, v11

    .line 24
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    move-object/from16 v23, v6

    move-object/from16 v20, v11

    :cond_5
    :goto_4
    if-eqz v5, :cond_a

    .line 25
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_a

    .line 26
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, v1, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    iget v6, v1, Lcom/join/mgps/activity/t0;->x:I

    sub-int v6, v2, v6

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/join/mgps/adapter/t$n;

    if-eqz v6, :cond_b

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/t$n;

    .line 30
    :try_start_3
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    if-nez v6, :cond_7

    return-void

    .line 31
    :cond_7
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    mul-double v9, v9, v14

    mul-double v9, v9, v14

    double-to-long v9, v9

    .line 32
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_8

    .line 33
    iget-object v11, v0, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 34
    :cond_8
    iget-object v11, v0, Lcom/join/mgps/adapter/t$n;->t:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_9

    .line 37
    iget-object v9, v0, Lcom/join/mgps/adapter/t$n;->z:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v9, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_6

    .line 38
    :cond_9
    iget-object v9, v0, Lcom/join/mgps/adapter/t$n;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v9, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 39
    :goto_6
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/4 v9, 0x2

    if-ne v5, v9, :cond_b

    .line 40
    iget-object v0, v0, Lcom/join/mgps/adapter/t$n;->w:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_a
    move-object/from16 v4, v20

    :cond_b
    :goto_7
    if-eqz v23, :cond_10

    .line 42
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_c

    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v5, 0xc

    if-ne v0, v5, :cond_10

    .line 43
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, v1, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    iget v3, v1, Lcom/join/mgps/activity/t0;->x:I

    sub-int v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/join/mgps/adapter/t$n;

    if-eqz v3, :cond_10

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/t$n;

    .line 47
    :try_start_4
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-nez v3, :cond_d

    return-void

    .line 48
    :cond_d
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    mul-double v4, v4, v9

    mul-double v4, v4, v9

    double-to-long v4, v4

    .line 49
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-nez v6, :cond_e

    .line 50
    iget-object v6, v0, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 51
    :cond_e
    iget-object v6, v0, Lcom/join/mgps/adapter/t$n;->u:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_f

    .line 54
    iget-object v4, v0, Lcom/join/mgps/adapter/t$n;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_9

    .line 55
    :cond_f
    iget-object v4, v0, Lcom/join/mgps/adapter/t$n;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 56
    :goto_9
    invoke-virtual/range {v23 .. v23}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 57
    iget-object v0, v0, Lcom/join/mgps/adapter/t$n;->x:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method


# virtual methods
.method protected N()I
    .locals 1

    const v0, 0x7f0c03ef

    return v0
.end method

.method protected O()I
    .locals 1

    const v0, 0x7f0902ea

    return v0
.end method

.method protected P()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public Z(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->loadWarIndexRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method a0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ln1/o0;->n()Ln1/o0;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    .line 2
    invoke-static {}, Ln1/r;->n()Ln1/r;

    move-result-object v0

    invoke-virtual {v0}, Lg1/b;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWarType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 18
    :pswitch_0
    iget-object v2, p0, Lcom/join/mgps/activity/t0;->p:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :pswitch_1
    iget-object v2, p0, Lcom/join/mgps/activity/t0;->o:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :pswitch_2
    iget-object v2, p0, Lcom/join/mgps/activity/t0;->n:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :pswitch_3
    iget-object v2, p0, Lcom/join/mgps/activity/t0;->m:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :pswitch_4
    iget-object v2, p0, Lcom/join/mgps/activity/t0;->l:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :pswitch_5
    iget-object v2, p0, Lcom/join/mgps/activity/t0;->k:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :pswitch_6
    iget-object v2, p0, Lcom/join/mgps/activity/t0;->j:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->i0()V

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->b0()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->e:Lcom/join/mgps/rpc/d;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->v:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->b:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->i2(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/p;->n2(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v2, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/LoadWarCenterBean;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    .line 11
    new-instance v0, Lcom/join/mgps/adapter/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/t;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/join/mgps/activity/t0;->f:Lcom/join/mgps/adapter/t;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->f:Lcom/join/mgps/adapter/t;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/t;->h(Lcom/join/mgps/dto/LoadWarCenterBean;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/t0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/t0$a;-><init>(Lcom/join/mgps/activity/t0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->loadData()V

    return-void
.end method

.method b0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/t0;->s:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/t0;->Z(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/t0;->e:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->i(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/WarIndexResultMainBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/WarIndexResultMainBean;->getMessages()Lcom/join/mgps/dto/WarIndexMessageMainBean;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/WarIndexMessageMainBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/WarIndexDataBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/t0;->j0(Lcom/join/mgps/dto/WarIndexDataBean;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->h0()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->h0()V

    .line 13
    :goto_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/t0;->s:Z

    goto :goto_2

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->h0()V

    .line 15
    iput-boolean v1, p0, Lcom/join/mgps/activity/t0;->s:Z

    .line 16
    throw v0

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->h0()V

    :goto_2
    return-void
.end method

.method g0(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/FightDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FightDataBean;->getMain()Lcom/join/mgps/dto/FightMainDataBean;

    move-result-object v2

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/FightDataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/FightDataBean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/FightSubDataBean;

    if-nez p2, :cond_2

    .line 5
    new-instance v4, Lcom/join/mgps/db/tables/FightMainTable;

    invoke-direct {v4}, Lcom/join/mgps/db/tables/FightMainTable;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setTitle(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setLabel(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setPic_remote(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setIco_remote(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getTitle_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setTitle_type(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getMargin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setMargin(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getSub_title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setSub_title(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getModel_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setModel_type(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getLink_type()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setLink_type(I)V

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getJump_type()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setJump_type(I)V

    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setTpl_type(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setLink_type_val(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getDown_status()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setDown_status(I)V

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 22
    :goto_1
    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/FightMainTable;->setPay_game_amount(I)V

    .line 23
    invoke-static {}, Ln1/r;->n()Ln1/r;

    move-result-object v5

    invoke-virtual {v5, v4}, Lg1/b;->k(Ljava/lang/Object;)I

    .line 24
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/helper/MGFightUtils;->warDataToTable(Lcom/join/mgps/dto/FightSubGameInfoDataBean;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v4

    .line 26
    invoke-virtual {v4, p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setWarType(I)V

    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPic_remote(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPay_game_amount(I)V

    .line 30
    :cond_1
    invoke-static {}, Ln1/o0;->n()Ln1/o0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lg1/b;->k(Ljava/lang/Object;)I

    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/helper/MGFightUtils;->warDataToTable(Lcom/join/mgps/dto/FightSubGameInfoDataBean;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object v4

    .line 32
    invoke-virtual {v4, p2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setWarType(I)V

    .line 33
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPic_remote(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setMain_title(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/FightMainDataBean;->getSub_title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setMain_sub_title(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 37
    invoke-virtual {v3}, Lcom/join/mgps/dto/FightSubDataBean;->getGame_info()Lcom/join/mgps/dto/FightSubGameInfoDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->setPay_game_amount(I)V

    .line 38
    :cond_3
    invoke-static {}, Ln1/o0;->n()Ln1/o0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lg1/b;->k(Ljava/lang/Object;)I

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method h0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const v1, 0x7f110206

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method i0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->Q()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setDownloadTasksMap(Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setFightMainTables(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setWaradInfoDataBeans(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setHotGameInfoDataBeans(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkGameInfoDataBeans(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkPassInfoDataBeans(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkMatchingInfoDataBeans(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkLocalInfoDataBeans(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/LoadWarCenterBean;->setPkRoomInfoDataBeans(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->f:Lcom/join/mgps/adapter/t;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->q:Lcom/join/mgps/dto/LoadWarCenterBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/t;->h(Lcom/join/mgps/dto/LoadWarCenterBean;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->f:Lcom/join/mgps/adapter/t;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method j0(Lcom/join/mgps/dto/WarIndexDataBean;)V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/t0;->r:J

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getWarad()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getHotgame()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPkgame()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPkpass()Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPkmatching()Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPklocal()Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/WarIndexDataBean;->getPkroom()Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-static {}, Ln1/o0;->n()Ln1/o0;

    move-result-object v6

    invoke-virtual {v6}, Lg1/b;->a()I

    .line 10
    invoke-static {}, Ln1/r;->n()Ln1/r;

    move-result-object v6

    invoke-virtual {v6}, Lg1/b;->a()I

    const/4 v6, 0x0

    .line 11
    invoke-virtual {p0, v0, v6}, Lcom/join/mgps/activity/t0;->g0(Ljava/util/List;I)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/t0;->g0(Ljava/util/List;I)V

    const/4 v0, 0x2

    .line 13
    invoke-virtual {p0, v2, v0}, Lcom/join/mgps/activity/t0;->g0(Ljava/util/List;I)V

    const/4 v0, 0x3

    .line 14
    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/activity/t0;->g0(Ljava/util/List;I)V

    const/4 v0, 0x4

    .line 15
    invoke-virtual {p0, v4, v0}, Lcom/join/mgps/activity/t0;->g0(Ljava/util/List;I)V

    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0, v5, v0}, Lcom/join/mgps/activity/t0;->g0(Ljava/util/List;I)V

    const/4 v0, 0x6

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/t0;->g0(Ljava/util/List;I)V

    .line 18
    invoke-static {}, Ln1/o0;->n()Ln1/o0;

    move-result-object p1

    invoke-virtual {p1}, Lg1/b;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    .line 19
    invoke-static {}, Ln1/r;->n()Ln1/r;

    move-result-object p1

    invoke-virtual {p1}, Lg1/b;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/activity/t0;->u:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 32
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v6, p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->t:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/WarMatchAndLocalTable;->getWarType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->p:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->o:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->n:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->m:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->l:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :pswitch_5
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->k:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->j:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->X(Lcom/join/mgps/db/tables/WarMatchAndLocalTable;)Lcom/join/mgps/db/tables/WarMatchAndLocalTable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->i0()V

    goto :goto_2

    .line 43
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->h0()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/t0;->h:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/t0;->k0()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/t0;->e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_2
    :goto_0
    return-void

    nop

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
    .end packed-switch
.end method

.method protected loadData()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->a0()V

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
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_4
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/t0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/t0;->r:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/t0;->b0()V

    :cond_0
    return-void
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
    iput p3, p0, Lcom/join/mgps/activity/t0;->w:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/t0;->x:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
