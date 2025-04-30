.class public Lcom/join/mgps/activity/LinkProxyActivity;
.super Lcom/BaseAppCompatActivity;
.source "LinkProxyActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c004b
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/rpc/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private G0()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/LinkProxyActivity;->J0(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/y0;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/LinkProxyActivity;->J0(Z)V

    return-void

    :cond_0
    :try_start_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    :try_start_2
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0, v0, v3, v1}, Lcom/join/mgps/activity/LinkProxyActivity;->I0(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 9
    :catch_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/LinkProxyActivity;->J0(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method D0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9\u54e6~"

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity$b;-><init>(Lcom/join/mgps/activity/LinkProxyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/LinkProxyActivity$a;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/LinkProxyActivity$a;-><init>(Lcom/join/mgps/activity/LinkProxyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/LinkProxyActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity$c;-><init>(Lcom/join/mgps/activity/LinkProxyActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method E0(Lcom/join/mgps/dto/GameVerByBg;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVerByBg;->getGame_id()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVerByBg;->getTpl_type()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameVerByBg;->getJump_type()I

    move-result p1

    .line 4
    new-instance v2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 6
    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 9
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v0, "updateFromMarket"

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMGMainActivity2Front(Landroid/content/Context;)V

    return-void
.end method

.method H0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/LinkProxyActivity;->G0()V

    return-void
.end method

.method I0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity;->b:Lcom/join/mgps/rpc/d;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity;->b:Lcom/join/mgps/rpc/d;

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameVerByBgArgs(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/LinkProxyActivity;->b:Lcom/join/mgps/rpc/d;

    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/d;->z0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u8be5\u6e38\u620f"

    if-eqz v0, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GameVerByBg;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameVerByBg;->getGame_id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameVerByBg;

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->E0(Lcom/join/mgps/dto/GameVerByBg;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->showMessage(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/LinkProxyActivity;->F0()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getError_info()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getError_info()Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->showMessage(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/LinkProxyActivity;->F0()V

    .line 20
    :goto_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/LinkProxyActivity;->J0(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getError_info()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, "\u670d\u52a1\u8bbf\u95ee\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->showMessage(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/LinkProxyActivity;->J0(Z)V

    goto :goto_2

    :cond_6
    const p1, 0x7f110206

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->showMessage(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/LinkProxyActivity;->J0(Z)V

    :goto_2
    return-void
.end method

.method J0(Z)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->D0(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/LinkProxyActivity;->D0(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity;->b:Lcom/join/mgps/rpc/d;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/LinkProxyActivity;->D0(I)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/LinkProxyActivity;->G0()V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
