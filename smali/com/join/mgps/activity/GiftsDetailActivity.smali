.class public Lcom/join/mgps/activity/GiftsDetailActivity;
.super Lcom/BaseActivity;
.source "GiftsDetailActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02b6
.end annotation


# instance fields
.field a:Lcom/join/mgps/rpc/d;

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
        value = ""
    .end annotation
.end field

.field n:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private p:Landroid/content/Context;

.field private q:Landroid/app/Dialog;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private u:Lcom/join/mgps/dto/DetailResultBean;

.field private v:Lcom/join/mgps/dialog/x0;

.field private w:Lcom/join/mgps/customview/t;

.field private x:Lcom/join/mgps/customview/t;

.field y:Lcom/join/mgps/customview/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->y:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    return-object p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    return-object p0
.end method

.method private I0(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    const v2, 0x7f11043c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->Z0()V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->Y0()V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private J0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->y:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->y:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method K0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->V0()V

    :cond_4
    return-void
.end method

.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->N0()Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->a:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->P0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageInfoBean;->getMessages()Lcom/join/mgps/dto/GiftPackageInfoMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageInfoMessageBean;->getData()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->X0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->P0()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->P0()V

    :cond_1
    :goto_0
    return-void
.end method

.method M0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u9886\u53d6\u5931\u8d25"

    if-eqz v0, :cond_5

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->n:I

    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v3

    iget-object v4, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->a:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->f0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getFlag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getError_info()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->O0()V

    return-void

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getMessages()Lcom/join/mgps/dto/GiftPackageOperationMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationMessageBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->U0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->R0(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->O0()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->O0()V

    .line 19
    throw v0

    .line 20
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V

    .line 21
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->O0()V

    return-void
.end method

.method public N0()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->n:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->n:I

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageInfoRequestBean(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    return-object v0
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->v:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->v:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method P0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->d:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method

.method Q0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8be5\u793c\u5305\u5df2\u8fc7\u671f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_type()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->I0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->n:I

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->v:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->M0()V

    :cond_3
    :goto_0
    return-void
.end method

.method R0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    const-string v0, "\u590d\u5236"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method S0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receivedOemDetail"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method T0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    move-result v0

    const v1, 0x7f080a6e

    const v2, -0x577e7

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8fc7\u671f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    const v1, -0x767677

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f080a6a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    const-string v3, "\u590d\u5236"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    const-string v3, "\u9886\u53d6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method U0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_overdue(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_code(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f080a6e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    const v1, 0x7f0c0563

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->r:Landroid/widget/Button;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    const v1, 0x7f09036b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    const v2, 0x7f09100a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    const v3, 0x7f090db2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    const v4, 0x7f090a6f

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->s:Landroid/widget/TextView;

    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    const v4, 0x7f090db1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u9886\u53d6"

    .line 14
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "\u9886\u53f7\u6210\u529f"

    .line 15
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5173\u95ed"

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->r:Landroid/widget/Button;

    new-instance v3, Lcom/join/mgps/activity/GiftsDetailActivity$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GiftsDetailActivity$a;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance v1, Lcom/join/mgps/activity/GiftsDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GiftsDetailActivity$b;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance v1, Lcom/join/mgps/activity/GiftsDetailActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GiftsDetailActivity$c;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    new-instance v1, Lcom/join/mgps/activity/GiftsDetailActivity$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GiftsDetailActivity$d;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->K0()V

    return-void
.end method

.method V0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2b

    if-lez v1, :cond_1

    const/16 v0, 0x2b

    :cond_1
    if-eqz v0, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_3

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->r:Landroid/widget/Button;

    const-string v1, "\u4e0b\u8f7d\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->r:Landroid/widget/Button;

    const-string v1, "\u542f\u52a8\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->r:Landroid/widget/Button;

    const-string v1, "\u4e0b\u8f7d\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->D2(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->u:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->s:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 10
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_6
    return-void
.end method

.method W0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method X0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->d:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    const v3, 0x7f080168

    invoke-static {v0, v3, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_begin()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u81f3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_explain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->T0()V

    return-void
.end method

.method Y0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->w:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->Z(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->w:Lcom/join/mgps/customview/t;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->w:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method Z0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->y:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->b0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->y:Lcom/join/mgps/customview/t;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->y:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->a:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u793c\u5305\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_begin()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u81f3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->o:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    const v3, 0x7f080168

    invoke-static {v0, v3, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->T0()V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->W0()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->v:Lcom/join/mgps/dialog/x0;

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->S0()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->S0()V

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->J0()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

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

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0x30

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->t:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->L0()V

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->W0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->L0()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
