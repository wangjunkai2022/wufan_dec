.class public Lcom/join/mgps/activity/GameDetialGiftMoreActivity;
.super Lcom/BaseFragmentActivity;
.source "GameDetialGiftMoreActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c00ab
.end annotation


# instance fields
.field private A:Lcom/join/mgps/dto/AccountBean;

.field private B:Lcom/join/mgps/dto/CollectionBeanSub;

.field C:Landroid/os/Handler;

.field private D:Lcom/join/mgps/customview/t;

.field private E:Lcom/join/mgps/customview/t;

.field private F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Z

.field J:Lcom/join/mgps/customview/t;

.field K:Lcom/join/mgps/customview/t;

.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/s0;

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

.field n:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field o:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field private p:I

.field q:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->s:I

    .line 4
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->t:Ljava/util/Map;

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    const-string v2, ""

    .line 7
    iput-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->w:Ljava/lang/String;

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->x:I

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->y:Z

    .line 10
    iput v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->z:I

    .line 11
    new-instance v2, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V

    iput-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->C:Landroid/os/Handler;

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->H:Z

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->I:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->J:Lcom/join/mgps/customview/t;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->K:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->A:Lcom/join/mgps/dto/AccountBean;

    return-object p1
.end method

.method static synthetic E0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->N0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->y:Z

    return p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    return p1
.end method

.method static synthetic I0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->I:Z

    return p0
.end method

.method static synthetic J0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic K0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/customview/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    return-object p0
.end method

.method static synthetic L0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic M0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    return-object p0
.end method

.method private N0(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    const v2, 0x7f11043c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    const-string v3, "6"

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->Z0()V

    goto :goto_1

    :cond_2
    const-string v3, "7"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->Y0()V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->J:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->J:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->K:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->K:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method Q0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u9886\u53d6\u5931\u8d25"

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->A:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->m:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->f0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getFlag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getError_info()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getMessages()Lcom/join/mgps/dto/GiftPackageOperationMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationMessageBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->b:Ljava/util/List;

    .line 12
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v4

    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    .line 15
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_overdue(I)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_code(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->W0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showToast(Ljava/lang/String;)V

    .line 22
    throw p1

    .line 23
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showToast(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method R0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->y:Z

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->A:Lcom/join/mgps/dto/AccountBean;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->A:Lcom/join/mgps/dto/AccountBean;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->q:Ljava/lang/String;

    iget v4, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->S0(Ljava/lang/String;III)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->m:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->X(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GamedetialMoreGiftData;

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreGiftData;->getGift_list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreGiftData;->getGift_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->U0()V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreGiftData;->getGift_list()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialMoreGiftData;->getGift_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 15
    iget v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->X0(Lcom/join/mgps/dto/GamedetialMoreGiftData;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c1()V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->U0()V

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c1()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 21
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c1()V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->y:Z

    goto :goto_4

    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->y:Z

    .line 25
    throw v0

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c1()V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showLodingFailed()V

    :goto_4
    return-void
.end method

.method public S0(Ljava/lang/String;III)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialImfMore(Ljava/lang/String;III)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method T0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->R0()V

    return-void
.end method

.method U0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method V0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c0563

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v3, 0x7f090886

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v3, 0x7f090876

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v4, 0x7f09100a

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v5, 0x7f090db2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 14
    iget-object v5, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v6, 0x7f090db1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 15
    iget-object v6, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v7, 0x7f090371

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 16
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v8, 0x7f090a6f

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "\u9886\u53f7\u6210\u529f"

    .line 17
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5173\u95ed"

    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u4e0b\u8f7d\u6e38\u620f"

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/x;->u(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    new-instance v5, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;

    invoke-direct {v5, p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$f;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance p1, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$g;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$g;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x2b

    if-lez v1, :cond_2

    const/16 p1, 0x2b

    :cond_2
    if-eqz p1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_4

    const-string p1, "\u4e0b\u8f7d\u4e2d.."

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string p1, "\u542f\u52a8\u6e38\u620f"

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 28
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result p1

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->D2(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 34
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_6
    new-instance p1, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$h;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$h;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_8

    .line 39
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 40
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_8
    return-void
.end method

.method W0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c0563

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v3, 0x7f09100a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v4, 0x7f090db2

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v5, 0x7f090db1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 11
    iget-object v5, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    const v6, 0x7f090a6f

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u9886\u53f7\u6210\u529f"

    .line 12
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5173\u95ed"

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u4e0b\u8f7d\u6e38\u620f"

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v4, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$i;

    invoke-direct {v4, p0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$i;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v3, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$j;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$j;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v4

    const/16 v6, 0x2b

    if-eqz v4, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    const/16 v1, 0x2b

    :cond_2
    if-eqz v1, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/16 v4, 0x9

    if-eq v1, v4, :cond_4

    if-eq v1, v6, :cond_4

    const-string p1, "\u4e0b\u8f7d\u4e2d.."

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string p1, "\u542f\u52a8\u6e38\u620f"

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/join/mgps/Util/UtilsMy;->D2(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 29
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 30
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p1, "\u5373\u5c06\u5f00\u653e"

    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_6
    new-instance p1, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c:Lcom/join/mgps/adapter/s0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_8

    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 36
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_8
    return-void
.end method

.method X0(Lcom/join/mgps/dto/GamedetialMoreGiftData;)V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialMoreGiftData;->getGift_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialMoreGiftData;->getGift_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialMoreGiftData;->getGame_info()Lcom/join/mgps/dto/DetialMoreGameInfo;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 9
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->B:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u793c\u5305"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->G:Landroid/view/View;

    const v4, 0x7f0900d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->G:Landroid/view/View;

    const v5, 0x7f0900e1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 12
    iget-object v5, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->G:Landroid/view/View;

    const v6, 0x7f09100c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/LinearLayout;

    .line 13
    iget-object v5, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->G:Landroid/view/View;

    const v6, 0x7f0900ea

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u793c\u5305\u603b\u6570\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialMoreGameInfo;->getGift_package_count()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v7

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v9

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v12, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static/range {v6 .. v12}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 18
    iget-boolean v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->H:Z

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->I:Z

    .line 22
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->H:Z

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialMoreGiftData;->getGift_list()Ljava/util/List;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    if-ne p1, v2, :cond_2

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c:Lcom/join/mgps/adapter/s0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c:Lcom/join/mgps/adapter/s0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method Y0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->J:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->Z(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->J:Lcom/join/mgps/customview/t;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->J:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method Z0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->K:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->b0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->K:Lcom/join/mgps/customview/t;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->K:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method a1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->m:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->getDownloadTaskInfo()V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0297

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->G:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/join/mgps/adapter/s0;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->C:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/s0;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c:Lcom/join/mgps/adapter/s0;

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/adapter/s0;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->b:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u793c\u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showLoding()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$c;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$d;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$e;-><init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->c:Lcom/join/mgps/adapter/s0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->R0()V

    return-void
.end method

.method b1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->modufour:Lcom/papa/sim/statistic/Where;

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

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

.method c1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

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
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->updateDownloadView()V

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
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->updateDownloadView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0x30

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->A:Lcom/join/mgps/dto/AccountBean;

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->s:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->x:I

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
    iput v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->p:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->R0()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method updateDownloadView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    if-lez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->l:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    :goto_0
    return-void
.end method
