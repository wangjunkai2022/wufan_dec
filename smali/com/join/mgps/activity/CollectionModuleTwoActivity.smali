.class public Lcom/join/mgps/activity/CollectionModuleTwoActivity;
.super Lcom/BaseFragmentActivity;
.source "CollectionModuleTwoActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00aa
.end annotation


# static fields
.field private static final n0:Ljava/lang/String; = "CollectionModuleTwoActivity"


# instance fields
.field private A:Lcom/join/mgps/dto/BreakBeanMain;

.field private B:I

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:Z

.field I:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field J:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field K:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private a:Landroid/content/Context;

.field b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091030
    .end annotation
.end field

.field j:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field private k:Lcom/join/mgps/dto/CollectionBean;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/join/mgps/adapter/i;

.field private n:Lcom/join/mgps/dto/CollectionDataBean;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field r:Lcom/join/mgps/rpc/d;

.field s:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field t:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field private u:I

.field private v:I

.field w:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field x:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private y:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->v:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->B:I

    .line 5
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->G:I

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->H:Z

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->H:Z

    return p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/CollectionModuleTwoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    return p1
.end method

.method static synthetic F0(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    return-object p0
.end method

.method private R0(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->F:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v8

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, p0, v5}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 9
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    if-ne v8, v6, :cond_4

    .line 11
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v6

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v7

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    .line 12
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v7, :cond_6

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v5, :cond_7

    .line 16
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 19
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_9

    .line 20
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    :cond_9
    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    .line 23
    :cond_a
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 24
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_0

    :cond_b
    return-object p1
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->F:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->l:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

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
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->F:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->D3(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
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
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

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

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v7, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

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

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
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

    goto/16 :goto_2

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

    goto :goto_2

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

    goto :goto_2

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

    goto :goto_2

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

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->G:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->B:I

    if-gt v0, v1, :cond_6

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    iget v5, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->G:I

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
.method H0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goCollectionCommentActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method I0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->H:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->w:Ljava/lang/String;

    iget v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->J0(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->r:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->G1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CollectionBean;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->k:Lcom/join/mgps/dto/CollectionBean;

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBean;->getMessages()Lcom/join/mgps/dto/CollectionMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionMessageBean;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->k:Lcom/join/mgps/dto/CollectionBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBean;->getMessages()Lcom/join/mgps/dto/CollectionMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionMessageBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->k:Lcom/join/mgps/dto/CollectionBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBean;->getMessages()Lcom/join/mgps/dto/CollectionMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionMessageBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionDataBean;

    iput-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->n:Lcom/join/mgps/dto/CollectionDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBean;->getComment_switch()I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->n:Lcom/join/mgps/dto/CollectionDataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionDataBean;->getComment_count()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->O0(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->n:Lcom/join/mgps/dto/CollectionDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->n:Lcom/join/mgps/dto/CollectionDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getSub()Ljava/util/List;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->n:Lcom/join/mgps/dto/CollectionDataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionDataBean;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->A:Lcom/join/mgps/dto/BreakBeanMain;

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getCollection_title()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->o:Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->A:Lcom/join/mgps/dto/BreakBeanMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getTpl_pic()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->p:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->A:Lcom/join/mgps/dto/BreakBeanMain;

    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getInfo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->q:Ljava/lang/String;

    .line 15
    :cond_0
    iget v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->x:Lcom/join/mgps/dto/ExtBean;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    move-result v4

    const/16 v5, 0x86

    if-ne v4, v5, :cond_1

    const/16 v4, 0x3459

    .line 19
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 20
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    goto :goto_2

    :cond_1
    const/16 v4, 0x6f

    .line 21
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    const/16 v4, 0x79

    .line 22
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 23
    :goto_2
    new-instance v4, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v4, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_2
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->R0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->N0(Ljava/util/List;)V

    goto :goto_3

    .line 25
    :cond_3
    iget v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    if-ne v2, v0, :cond_4

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->S0()V

    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->L0()V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->S0()V

    goto :goto_3

    .line 30
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->S0()V

    goto :goto_3

    .line 32
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->S0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 34
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->S0()V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->H:Z

    goto :goto_5

    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->H:Z

    .line 38
    throw v0

    .line 39
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->S0()V

    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLodingFailed()V

    :goto_5
    return-void
.end method

.method public J0(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v4, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->v:I

    iget-object v7, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->x:Lcom/join/mgps/dto/ExtBean;

    const-string v5, ""

    const-string v6, ""

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getCollectionRequestBean(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method K0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->s:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

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

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->x:Lcom/join/mgps/dto/ExtBean;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    if-ne v0, v1, :cond_5

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->y:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f080168

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 16
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->L0()V

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->S0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method O0(II)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->I:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->K:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->K:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->I:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->K:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->modetwo:Lcom/papa/sim/statistic/Where;

    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->r:Lcom/join/mgps/rpc/d;

    .line 2
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->F:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->C:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->getDownloadTaskInfo()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLoding()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090710

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->y:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090fc5

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->z:Landroid/widget/TextView;

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 16
    new-instance v0, Lcom/join/mgps/adapter/i;

    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/adapter/i;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->l:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->I0()V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/CollectionModuleTwoActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity$a;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/CollectionModuleTwoActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity$b;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/CollectionModuleTwoActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity$c;-><init>(Lcom/join/mgps/activity/CollectionModuleTwoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
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
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownloadView()V

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
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateDownloadView()V

    return-void
.end method

.method protected onDestroy()V
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

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateProgressPartly()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->B:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->G:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    const-string v0, "onstop"

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->u:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->I0()V

    return-void
.end method

.method serverConnectionException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->t:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
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
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->l:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->D:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v2, v1}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->c:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleTwoActivity;->m:Lcom/join/mgps/adapter/i;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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
