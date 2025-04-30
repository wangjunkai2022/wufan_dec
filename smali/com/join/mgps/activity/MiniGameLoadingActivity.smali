.class public Lcom/join/mgps/activity/MiniGameLoadingActivity;
.super Lcom/BaseActivity;
.source "MiniGameLoadingActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0056
.end annotation


# instance fields
.field a:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/customview/PictureHProgress;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic E0(Lcom/join/mgps/activity/MiniGameLoadingActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->G0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic G0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->I0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method private H0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->a(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Lcom/join/mgps/activity/k1;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/k1;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    invoke-static {p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->I0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    return-void

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u8fde\u63a5\u7f51\u7edc\u540e\u91cd\u8bd5!"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method private I0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ModInfoBean;

    .line 3
    new-instance v2, Lcom/join/mgps/mod/bean/ModMeta;

    invoke-direct {v2}, Lcom/join/mgps/mod/bean/ModMeta;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setPackageName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setModPath(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/mod/bean/ModMeta;->setModVersion(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setModCode(I)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setGameId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v1}, Lcom/join/mgps/mod/bean/ModMeta;->setModType(I)V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/va/overmind/e;->Z(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/join/mgps/va/overmind/e;->T(Landroid/content/Context;Lcom/join/mgps/mod/bean/ModMeta;ILjava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 15
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    move-result v7

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    move-result v8

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/p;->d1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->y3(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->y3(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_4
    return v1
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u5df2\u5220\u9664"

    .line 2
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_1
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->f:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->h:Lcom/join/mgps/customview/PictureHProgress;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    :cond_1
    return-void
.end method

.method private setStatusBar()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 3
    invoke-virtual {v3, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x500

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 5
    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v3, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    if-lt v0, v3, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-lt v0, v2, :cond_2

    .line 9
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->v(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProgressPartly()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->h:Lcom/join/mgps/customview/PictureHProgress;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->h:Lcom/join/mgps/customview/PictureHProgress;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6e38\u620f\u52a0\u8f7d\u4e2d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "% \n\u4f53\u9a8c\u540e\u53ef\u5bf9\u6e38\u620f\u8fdb\u884c\u8bc4\u4ef7\u54e6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u7f51\u901f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0910dc
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->setStatusBar()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6e38\u620f\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 4
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_1

    const-string v0, "\u6e38\u620f\u6570\u636e\u83b7\u53d6\u9519\u8bef"

    .line 7
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090913
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

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

    if-eq p1, v4, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_7

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->e:Landroid/widget/TextView;

    const-string v0, "\u6e38\u620f\u5b89\u88c5\u4e2d...\n\u4f53\u9a8c\u540e\u53ef\u5bf9\u6e38\u620f\u8fdb\u884c\u8bc4\u4ef7\u54e6"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->f:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->h:Lcom/join/mgps/customview/PictureHProgress;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateProgressPartly()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->H0()V

    .line 15
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_7
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

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
