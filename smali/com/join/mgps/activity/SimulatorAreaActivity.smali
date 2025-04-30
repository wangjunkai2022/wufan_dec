.class public Lcom/join/mgps/activity/SimulatorAreaActivity;
.super Lcom/BaseAppCompatActivity;
.source "SimulatorAreaActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c006c
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field h:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/join/mgps/rpc/impl/c;

.field private o:Lcom/join/mgps/adapter/p5;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/p5$g;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I

.field private u:I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    .line 3
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->q:I

    const-string v0, "m1"

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->r:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->s:Z

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->t:I

    .line 13
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->u:I

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->v:Ljava/util/List;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->w:Ljava/util/List;

    .line 16
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->x:I

    .line 17
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->y:I

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/SimulatorAreaActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->s:Z

    return p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/SimulatorAreaActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/SimulatorAreaActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic G0(Lcom/join/mgps/activity/SimulatorAreaActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->q:I

    return p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/SimulatorAreaActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->q:I

    return p1
.end method

.method private P0(Lcom/join/mgps/dto/SimulatorAreaDataBean;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getTop_5()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 10
    :goto_1
    iget-object v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v5, :cond_8

    .line 16
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_9
    if-nez v4, :cond_a

    .line 20
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_a
    if-eqz v4, :cond_3

    .line 21
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 22
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 23
    :cond_b
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 24
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 25
    :cond_c
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getThe_new_release()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 30
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_3

    .line 31
    :cond_f
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getCollection_recommend()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->getGame_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 39
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_4

    :cond_13
    :goto_5
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/p5$g;

    .line 8
    iget v2, v1, Lcom/join/mgps/adapter/p5$g;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 9
    iget-object v1, v1, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v1, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v1, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

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
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/p5$g;

    .line 7
    iget v2, v1, Lcom/join/mgps/adapter/p5$g;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 8
    iget-object v1, v1, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/p5$g;

    .line 5
    iget v2, v1, Lcom/join/mgps/adapter/p5$g;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v1, v1, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_4

    return-void

    .line 11
    :cond_4
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

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method I0(Ljava/lang/String;I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->s:Z

    .line 3
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->n:Lcom/join/mgps/rpc/impl/c;

    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/c;->K1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->n:Lcom/join/mgps/rpc/impl/c;

    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/c;->N1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->n:Lcom/join/mgps/rpc/impl/c;

    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/c;->L1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    iget v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->n:Lcom/join/mgps/rpc/impl/c;

    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/c;->M1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->n:Lcom/join/mgps/rpc/impl/c;

    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getSimulatorIndexRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/rpc/impl/c;->K1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p2

    if-ne p2, v0, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SimulatorAreaDataBean;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->M0(Lcom/join/mgps/dto/SimulatorAreaDataBean;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->L0()V

    goto :goto_1

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/p5;->getCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->L0()V

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->Q0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->L0()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->L0()V

    :goto_1
    return-void
.end method

.method J0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->q:I

    const-string v1, "m1"

    .line 5
    iput-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->r:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->I0(Ljava/lang/String;I)V

    return-void
.end method

.method K0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->Q0(Z)V

    return-void
.end method

.method M0(Lcom/join/mgps/dto/SimulatorAreaDataBean;)V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->P0(Lcom/join/mgps/dto/SimulatorAreaDataBean;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->r:Ljava/lang/String;

    const-string v3, "m1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x6

    const-string v7, ""

    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getTop_5()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSubject_list()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getThe_new_release()Ljava/util/List;

    move-result-object v8

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    if-ne v9, v10, :cond_0

    const/16 v9, 0x71

    .line 11
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->x:I

    const/16 v9, 0x7b

    .line 12
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->y:I

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_fba_encyclopedias()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .line 14
    :cond_0
    iget v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    if-ne v9, v10, :cond_1

    const/16 v9, 0x73

    .line 15
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->x:I

    const/16 v9, 0x7d

    .line 16
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->y:I

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_fc_encyclopedias()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .line 18
    :cond_1
    iget v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    if-ne v9, v10, :cond_2

    const/16 v9, 0x74

    .line 19
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->x:I

    const/16 v9, 0x7e

    .line 20
    iput v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->y:I

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_gba_encyclopedias()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .line 22
    :cond_2
    iget v9, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_psp_encyclopedias()Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x72

    .line 24
    iput v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->x:I

    const/16 v10, 0x7c

    .line 25
    iput v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->y:I

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getSimulator_fba_encyclopedias()Ljava/util/List;

    move-result-object v9

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getGame_type()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->w:Ljava/util/List;

    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v10, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v10, v7, v6}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v10, Lcom/join/mgps/adapter/p5$g;

    const-string v11, "\u6392\u884c\u699c"

    invoke-direct {v10, v11, v5}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 33
    iget v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->x:I

    invoke-virtual {v0, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 34
    iget v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->y:I

    invoke-virtual {v0, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 35
    iget-object v10, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v11, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v11, v0, v3}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    const/4 v10, 0x3

    invoke-direct {v0, v7, v10}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v0, v7, v6}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v2, :cond_7

    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    const-string v10, "\u7cbe\u9009\u4e13\u9898"

    invoke-direct {v0, v10, v4}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v0, v7, v1}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;

    .line 42
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v10, Lcom/join/mgps/adapter/p5$g;

    const/4 v11, 0x7

    invoke-direct {v10, v0, v11}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v2, v7, v1}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 44
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v0, v7, v6}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v8, :cond_9

    .line 45
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    const-string v2, "\u6700\u65b0\u4e0a\u67b6"

    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 48
    iget v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->x:I

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 49
    iget v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->y:I

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v8, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v8, v0, v3}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 51
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v0, v7, v6}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v9, :cond_b

    .line 52
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    const-string v2, "\u6a21\u62df\u5668\u767e\u79d1"

    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v0, v7, v1}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;

    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v3, Lcom/join/mgps/adapter/p5$g;

    const/16 v4, 0x9

    invoke-direct {v3, v0, v4}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v2, v7, v1}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 58
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v0, v7, v6}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 61
    :cond_c
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorAreaDataBean;->getCollection_recommend()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 63
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 64
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->getGame_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean;->getCollection_info()Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;

    move-result-object v1

    .line 67
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v9, Lcom/join/mgps/adapter/p5$g;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorAreaDataBean$CollectionRecommendBean$CollectionInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1, v4}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 69
    iget v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->x:I

    invoke-virtual {v1, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 70
    iget v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->y:I

    invoke-virtual {v1, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 71
    iget-object v8, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v9, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v9, v1, v3}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 72
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v1, Lcom/join/mgps/adapter/p5$g;

    invoke-direct {v1, v7, v6}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    :goto_7
    const/4 v2, 0x1

    .line 73
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->r:Ljava/lang/String;

    const-string v0, "m2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 74
    iget p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->q:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->q:I

    .line 75
    :cond_11
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SimulatorAreaActivity;->Q0(Z)V

    return-void
.end method

.method N0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method Q0(Z)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->s:Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/p5;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->w:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v0, Lcom/join/mgps/adapter/p5$g;

    const/4 v1, 0x4

    const-string v2, "\u6e38\u620f\u5206\u7c7b"

    invoke-direct {v0, v2, v1}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->w:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    new-instance v2, Lcom/join/mgps/adapter/p5$g;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/join/mgps/adapter/p5$g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method afterviews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->n:Lcom/join/mgps/rpc/impl/c;

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->g:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->e:Landroid/widget/TextView;

    const-string v2, "\u8857\u673a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->getDownloadTaskInfo()V

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->m:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/SimulatorAreaActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorAreaActivity$a;-><init>(Lcom/join/mgps/activity/SimulatorAreaActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/SimulatorAreaActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SimulatorAreaActivity$b;-><init>(Lcom/join/mgps/activity/SimulatorAreaActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 17
    new-instance v0, Lcom/join/mgps/adapter/p5;

    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    iget v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->h:I

    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/adapter/p5;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/adapter/p5;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->r:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->I0(Ljava/lang/String;I)V

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
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownloadView()V

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
    iget-object v3, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateDownloadView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 16
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/event/l;->c()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/event/l;->c()I

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-ne v0, v3, :cond_7

    .line 4
    iget v0, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->t:I

    move v5, v0

    :goto_0
    iget v0, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->u:I

    if-gt v5, v0, :cond_b

    .line 5
    iget-object v0, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/p5$g;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget v6, v0, Lcom/join/mgps/adapter/p5$g;->b:I

    if-eq v6, v4, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    iget-object v0, v0, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v4, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 9
    :cond_2
    iget-object v6, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->d:Lcom/join/mgps/customview/XListView2;

    iget v8, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->t:I

    sub-int v8, v5, v8

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/join/mgps/adapter/i$b;

    if-eqz v8, :cond_6

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/adapter/i$b;

    .line 12
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v8

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double v8, v8, v10

    mul-double v8, v8, v10

    double-to-long v8, v8

    .line 14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v12, 0x0

    const-string v14, "/"

    cmp-long v15, v10, v12

    if-nez v15, :cond_4

    .line 15
    :try_start_1
    iget-object v10, v6, Lcom/join/mgps/adapter/i$b;->j:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v10, v6, Lcom/join/mgps/adapter/i$b;->j:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_1
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v7, :cond_5

    .line 18
    iget-object v7, v6, Lcom/join/mgps/adapter/i$b;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v7, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v7, v6, Lcom/join/mgps/adapter/i$b;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v7, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 20
    :goto_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 21
    iget-object v6, v6, Lcom/join/mgps/adapter/i$b;->k:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 23
    :goto_4
    iget-object v5, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 24
    iget-object v5, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/adapter/p5$g;

    if-nez v5, :cond_8

    goto :goto_5

    .line 25
    :cond_8
    iget v6, v5, Lcom/join/mgps/adapter/p5$g;->b:I

    if-eq v6, v4, :cond_9

    goto :goto_5

    .line 26
    :cond_9
    iget-object v5, v5, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 27
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 28
    iget-object v5, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->p:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/adapter/p5$g;

    iget-object v5, v5, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v5, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 29
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/event/l;->c()I

    move-result v0

    if-eq v0, v4, :cond_10

    const/4 v5, 0x3

    if-eq v0, v5, :cond_f

    const/4 v4, 0x5

    if-eq v0, v4, :cond_e

    const/4 v6, 0x6

    if-eq v0, v6, :cond_d

    const/4 v6, 0x7

    if-eq v0, v6, :cond_c

    const/16 v5, 0x30

    if-eq v0, v5, :cond_e

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const/16 v0, 0x9

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_6

    .line 31
    :pswitch_1
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_6

    .line 32
    :pswitch_2
    invoke-virtual {v1, v2, v6}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_6

    .line 33
    :cond_c
    invoke-virtual {v1, v2, v5}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_6

    .line 34
    :cond_d
    invoke-virtual {v1, v2, v6}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_6

    .line 35
    :cond_e
    :pswitch_3
    invoke-virtual {v1, v2, v4}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_6

    .line 36
    :cond_f
    invoke-virtual {v1, v2, v4}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_6

    :cond_10
    const/4 v0, 0x1

    .line 37
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/activity/SimulatorAreaActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 38
    :goto_6
    iget-object v0, v1, Lcom/join/mgps/activity/SimulatorAreaActivity;->o:Lcom/join/mgps/adapter/p5;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->u:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->t:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method updateDownloadView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->g:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    if-lez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->g:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorAreaActivity;->g:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SimulatorAreaActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
