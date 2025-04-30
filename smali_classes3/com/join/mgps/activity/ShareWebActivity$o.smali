.class public Lcom/join/mgps/activity/ShareWebActivity$o;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ShareWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/ShareWebActivity$o;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/ShareWebActivity$o;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.emu.realName.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity;->B:Lcom/join/mgps/Util/IntentDateBean;

    const-string v2, "0"

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExt3()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 7
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/va/overmind/e;->f0(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public changeAccount(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public checkAppHasInstall(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkAppInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkLiveRes()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public checkNetWork()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkWufunPapaPlatform()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "wufun"

    return-object v0
.end method

.method public checkin(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$e;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$e;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u590d\u5236\u6210\u529f\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public creatVipOrder(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$y;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$y;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public downloadApkGameByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    iget-wide v2, v2, Lcom/join/mgps/activity/ShareWebActivity;->u0:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p4}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    const-string p1, "46"

    .line 8
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDtype(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance p3, Lcom/join/mgps/dto/TipBean;

    invoke-direct {p3}, Lcom/join/mgps/dto/TipBean;-><init>()V

    const-string p4, "7"

    .line 13
    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/TipBean;->setId(Ljava/lang/String;)V

    const-string v1, "\u7f51\u6e38"

    .line 14
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/TipBean;->setName(Ljava/lang/String;)V

    const-string v1, "#8dbbec"

    .line 15
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/TipBean;->setColor(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTips(Ljava/lang/String;)V

    .line 18
    new-instance p1, Lcom/join/mgps/dto/TipNew;

    invoke-direct {p1}, Lcom/join/mgps/dto/TipNew;-><init>()V

    .line 19
    new-instance p3, Lcom/join/mgps/dto/TipBean;

    invoke-direct {p3}, Lcom/join/mgps/dto/TipBean;-><init>()V

    const-string v1, "\u5b89\u5353"

    .line 20
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/TipBean;->setName(Ljava/lang/String;)V

    const-string v1, "#f47500"

    .line 21
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/TipBean;->setColor(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/TipBean;->setId(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/TipNew;->setModel(Lcom/join/mgps/dto/TipBean;)V

    .line 24
    new-instance p4, Lcom/join/mgps/dto/TipBean;

    invoke-direct {p4}, Lcom/join/mgps/dto/TipBean;-><init>()V

    const-string v2, "\u5916\u90e8"

    .line 25
    invoke-virtual {p4, v2}, Lcom/join/mgps/dto/TipBean;->setName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p4, v1}, Lcom/join/mgps/dto/TipBean;->setColor(Ljava/lang/String;)V

    const-string v1, "1024"

    .line 27
    invoke-virtual {p4, v1}, Lcom/join/mgps/dto/TipBean;->setId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/TipNew;->setModel(Lcom/join/mgps/dto/TipBean;)V

    .line 29
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/TipNew;->setOut_game(Lcom/join/mgps/dto/TipBean;)V

    .line 30
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p3, Lcom/papa/sim/statistic/Event;->tencentArena:Lcom/papa/sim/statistic/Event;

    new-instance p4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p4, p2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/join/mgps/Util/UtilsMy;->E0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public downloadGame(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void
.end method

.method public downloadGameByGameId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ShareWebActivity;->F1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public downloadGameByGameIdAndUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity;->F1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public downloadGameByGameIdIfNoGame(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ShareWebActivity;->F1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public findAllGames()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getAccount()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$q0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$q0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAccountVer2()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/WebAccountDataBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/WebAccountDataBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/activity/ShareWebActivity;->K0(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setAccountBean(Lcom/join/mgps/dto/AccountBean;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllH5game()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppversionName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNowVersion()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPapaUIDAndToken()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->K0(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/dto/PaOpenBean;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity;->J0(Lcom/join/mgps/activity/ShareWebActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dto/PaOpenBean;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;II)V

    const-string v0, ""

    return-object v0
.end method

.method public getPhoneModle()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkIntentData()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity;->C:Lcom/join/mgps/dto/IntentDataMain;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/IntentDataMain;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSdkIntentData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const-string v1, "Papa_Stat_SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "papasdk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSingleGameADCount()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesHasSeeCount()I

    move-result v0

    return v0
.end method

.method public getStringByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Papa_Stat_SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "papaH5_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goAccountCenter()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$q;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$q;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goAccountDetial()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$a0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$a0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goBackUrl(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$b;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$b;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goChoiceUploadImage()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$c0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$c0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goCodesBoxActivity()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$s;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$s;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goDownloadCenter()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$t;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$t;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goGameDetail(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    const/16 v1, 0x78

    invoke-direct {p1, v1}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public goHandShark()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$r;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$r;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goMainLabel(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$d0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$d0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goMainLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$e0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/join/mgps/activity/ShareWebActivity$o$e0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goProfileMessage()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$b0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$b0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goQQGroup(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$m0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$m0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goSearchLabel()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$f0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$f0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public goStartLive()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public inquiryGameStatus(Ljava/lang/String;)I
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->E(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    sget-object v6, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x5

    if-eqz v6, :cond_2

    .line 5
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v3

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v8, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v4, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v6, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v8, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_8

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :cond_8
    :goto_1
    if-nez p1, :cond_9

    const/4 p1, -0x1

    return p1

    .line 14
    :cond_9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    return p1
.end method

.method public inquiryGameStatusByPackage(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public instalApk(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public instalApkByPackageName(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public intentQQ(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$h;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$h;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public intentToCompletAccount()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$g;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public joinAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$g0;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity$o$g0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public jumpGameMatch(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$l0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$l0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public liveIntentTo(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public login()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$r0;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$r0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$v;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity$o$v;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public papaLiveCropImage()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$z;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$z;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public payByPapa(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v14, p0

    .line 1
    iget-object v0, v14, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v15

    new-instance v13, Lcom/join/mgps/activity/ShareWebActivity$o$j;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v14, v13

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/join/mgps/activity/ShareWebActivity$o$j;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public payByPapa(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    .line 2
    iget-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 p1, v1

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$l;

    move-object v0, v1

    move-object/from16 v18, p1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/join/mgps/activity/ShareWebActivity$o$l;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public payGameFinish(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const/16 v0, 0x271b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    const/16 v0, 0x271a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity$o$f;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public rechargePabiFrom(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v13, p0

    .line 1
    iget-object v0, v13, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/join/mgps/activity/ShareWebActivity$o$m;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/join/mgps/activity/ShareWebActivity$o$m;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveStringByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Papa_Stat_SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "papaH5_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFullScreenJs(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$o$j0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$j0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setQuitFullScreenJs(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/ShareWebActivity$o$k0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareWebActivity$o$k0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setScreenLandOrPort(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$c;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$c;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$n0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$n0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shareFromJson(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$k;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$k;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shareToOne(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$a;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shareToOneImageOrText(ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$i;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/join/mgps/activity/ShareWebActivity$o$i;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showBackNew(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$w;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$w;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDownLiveDialog()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public showDownload(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$o;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$o;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showFinish(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$u;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$u;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showRefresh(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$n;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$n;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showSearch(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$p;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$p;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showShareButn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$h0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$h0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showTitle(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$d;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$d;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$o0;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/ShareWebActivity$o$o0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startGameFromJson(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$i0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$i0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startH5Game(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->h2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startIntent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$p0;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$p0;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startWechatApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 3
    new-instance p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;-><init>()V

    .line 4
    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->userName:Ljava/lang/String;

    .line 5
    iput-object p3, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->path:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    iput p2, p1, Lcom/tencent/mm/opensdk/modelbiz/WXLaunchMiniProgram$Req;->miniprogramType:I

    .line 7
    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void
.end method

.method public stopDown(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 p1, 0x1

    return p1
.end method

.method public stopDownByPackageName(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg1/f;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public toastText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/ShareWebActivity$o$x;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareWebActivity$o$x;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAccount()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ShareWebActivity;->I1()V

    return-void
.end method

.method public updateRealNameState()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->q1(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/t2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/t2;-><init>(Lcom/join/mgps/activity/ShareWebActivity$o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateVip()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ShareWebActivity;->checkToken()V

    return-void
.end method
