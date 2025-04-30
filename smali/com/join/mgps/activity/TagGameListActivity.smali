.class public Lcom/join/mgps/activity/TagGameListActivity;
.super Lcom/BaseFragmentActivity;
.source "TagGameListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00ab
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

.field B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Z

.field F:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field G:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field H:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/i;

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091030
    .end annotation
.end field

.field l:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field m:Lcom/join/mgps/rpc/d;

.field n:Lcom/join/mgps/rpc/j;

.field o:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field p:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field private q:I

.field r:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field s:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field t:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field u:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field v:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field w:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->y:I

    .line 4
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->C:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->D:I

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->E:Z

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/TagGameListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/TagGameListActivity;->E:Z

    return p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/TagGameListActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    return p1
.end method

.method static synthetic F0(Lcom/join/mgps/activity/TagGameListActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/TagGameListActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    return-object p0
.end method

.method private R0(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

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
    iget-object v4, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

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
    iget-object v8, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

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

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v1, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v1, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

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

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagGameListActivity;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagGameListActivity;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 10
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

    .line 11
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 19
    :cond_8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->D:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->y:I

    if-gt v0, v1, :cond_6

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget v5, p0, Lcom/join/mgps/activity/TagGameListActivity;->D:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/join/mgps/adapter/i$b;

    if-eqz v5, :cond_5

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/i$b;

    .line 8
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 10
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_3

    .line 11
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/adapter/i$b;->j:Landroid/widget/TextView;

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

    goto :goto_1

    .line 12
    :cond_3
    iget-object v8, v2, Lcom/join/mgps/adapter/i$b;->j:Landroid/widget/TextView;

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

    .line 13
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_4

    .line 14
    iget-object v3, v2, Lcom/join/mgps/adapter/i$b;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v3, v2, Lcom/join/mgps/adapter/i$b;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 16
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 17
    iget-object v1, v2, Lcom/join/mgps/adapter/i$b;->k:Landroid/widget/TextView;

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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public H0()Lcom/join/mgps/dto/ResponseModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    iget v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/join/mgps/activity/TagGameListActivity;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/TagGameListActivity;->t:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/activity/TagGameListActivity;->u:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->n:Lcom/join/mgps/rpc/j;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/j;->d(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    return-object v0
.end method

.method I0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->E:Z

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->r:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->goGameListPage:Lcom/papa/sim/statistic/Event;

    new-instance v5, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v6, "2"

    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->H0()Lcom/join/mgps/dto/ResponseModel;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->J0()Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    :goto_0
    if-eqz v3, :cond_1

    .line 10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 11
    new-instance v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v5, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 13
    iget v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->L0()V

    .line 15
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    const/16 v4, 0x6f

    .line 17
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    const/16 v4, 0x79

    .line 18
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 19
    new-instance v4, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v4, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/TagGameListActivity;->N0(Ljava/util/List;)V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->S0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 22
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->S0()V

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_4
    iput-boolean v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->E:Z

    goto :goto_6

    :goto_5
    iput-boolean v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->E:Z

    .line 26
    throw v0

    .line 27
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->S0()V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->showLodingFailed()V

    :goto_6
    return-void
.end method

.method public J0()Lcom/join/mgps/dto/ResultMainBean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->r:I

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->w:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->m:Lcom/join/mgps/rpc/d;

    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    iget v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->s:I

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getTagGameListData(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->q1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->m:Lcom/join/mgps/rpc/d;

    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    iget v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->s:I

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getTagGameListData(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->p(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->m:Lcom/join/mgps/rpc/d;

    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    iget-object v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getCompanyGameListData(ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->z(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method K0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->I0()V

    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method M0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method N0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-static {p0, p1, v0, v2}, Lcom/join/mgps/helper/MGFightUtils;->updateStatus(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    if-ne p1, v1, :cond_5

    .line 10
    iget p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->r:I

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->t:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->v:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->t:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method O0(II)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->F:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->H:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->H:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->F:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->H:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method P0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method Q0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->modufour:Lcom/papa/sim/statistic/Where;

    iget-object v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    return-void
.end method

.method S0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->m:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->n:Lcom/join/mgps/rpc/j;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    iput-object p0, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->getDownloadTaskInfo()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/i;

    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/i;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->showLoding()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->I0()V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/TagGameListActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagGameListActivity$a;-><init>(Lcom/join/mgps/activity/TagGameListActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/TagGameListActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagGameListActivity$b;-><init>(Lcom/join/mgps/activity/TagGameListActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/TagGameListActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/TagGameListActivity$c;-><init>(Lcom/join/mgps/activity/TagGameListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->c:Lcom/join/mgps/adapter/i;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    const/4 v1, 0x5

    if-eq p2, v1, :cond_6

    const/4 v1, 0x6

    if-eq p2, v1, :cond_5

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 p1, 0xb

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->updateDownloadView()V

    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->r()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->updateDownloadView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

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

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/TagGameListActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v4, 0x30

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/TagGameListActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/TagGameListActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/TagGameListActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/TagGameListActivity;->z:Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/TagGameListActivity;->updateProgressPartly()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/TagGameListActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/TagGameListActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/TagGameListActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/TagGameListActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/TagGameListActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_6
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

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/TagGameListActivity;->y:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/TagGameListActivity;->D:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->q:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagGameListActivity;->I0()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
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

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
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

.method updateDownloadView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->A:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/TagGameListActivity;->B:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/TagGameListActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    if-lez v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/TagGameListActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagGameListActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagGameListActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagGameListActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagGameListActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
