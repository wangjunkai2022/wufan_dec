.class public Lcom/join/mgps/dialog/DownloadMethodPromptDialog;
.super Lcom/BaseActivity;
.source "DownloadMethodPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c015f
.end annotation


# instance fields
.field a:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/view/View;
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

.field k:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field l:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field n:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field o:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field p:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field r:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field s:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field t:Lcom/join/mgps/rpc/j;

.field u:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

.field private w:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->w:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->getNavigationBarHeight()I

    move-result p0

    return p0
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_showNavigationBar"

    const-string v1, "bool"

    const-string v2, "android"

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 5
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "qemu.hw.mainkeys"

    aput-object v5, v4, v1

    .line 6
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "0"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, p0

    :goto_1
    move p0, v1

    :catch_0
    return p0
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private registerNavigationBarObserver()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "navigationbar_is_min"

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->w:Landroid/database/ContentObserver;

    .line 4
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->w:Landroid/database/ContentObserver;

    .line 7
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method


# virtual methods
.method E0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method G0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-nez v1, :cond_0

    const-string v0, "\u83b7\u53d6\u4fe1\u606f\u5931\u8d25"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->E0(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "\u8bf7\u5148\u540c\u610f\u7528\u6237\u534f\u8bae"

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->E0(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "open"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->M0()V

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "down"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->downloadCopyright:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getActualSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 21
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 23
    iget-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->o:Z

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 24
    iget-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->p:Z

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDisableShowSpeedUpPrompt(Z)V

    .line 25
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    const-string v2, "downGameId"

    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->m:Ljava/lang/String;

    const-string v2, "ext"

    .line 28
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    const-string v2, "data"

    .line 29
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    iget v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->r:I

    const-string v2, "_from"

    .line 30
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    iget v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->s:I

    const-string v2, "_from_type"

    .line 31
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    iget-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->o:Z

    const-string v2, "fromRecomDown"

    .line 32
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    iget-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->p:Z

    const-string v2, "disableShowSpeedUpPrompt"

    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    .line 34
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    move-result-wide v1

    goto :goto_0

    :cond_5
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "resourceSize"

    invoke-virtual {v0, v3, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;J)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    const/4 v1, 0x1

    const-string v2, "uncheckSelfSupport"

    .line 35
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 36
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->finish()V

    :cond_7
    :goto_2
    return-void
.end method

.method H0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->registerContentResolver()V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->getNavigationBarHeight()I

    move-result v1

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/i1;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    const/4 v1, 0x0

    .line 6
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->u:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method I0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 5
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 6
    new-instance v3, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 7
    iget-object v4, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setUid(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->t:Lcom/join/mgps/rpc/j;

    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/j;->j(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const v0, 0x7f110206

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->E0(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method J0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->N0(Z)V

    return-void
.end method

.method K0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->closeCopyright:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->finish()V

    return-void
.end method

.method L0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getUserProtocolURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method M0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->openSourceUrl:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadHTML()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method N0(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "\u8bf7\u5148\u540c\u610f\u7528\u6237\u534f\u8bae"

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->E0(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->k:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->noPromptDownload()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method O0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->J0()V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->t:Lcom/join/mgps/rpc/j;

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->showCopyright:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->finish()V

    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->n:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->j:Landroid/widget/TextView;

    const-string v1, "\u300a\u609f\u996d\u6e38\u620f\u5385\u4e0b\u8f7d\u534f\u8bae\u300b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->H0()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->I0()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

    :goto_0
    return-void
.end method

.method close()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->closeCopyright:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/p;->V0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->finish()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f010019

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public isNavigationBarShow()Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_4

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/i1;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/join/mgps/Util/i1;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "force_fsg_nav_bar"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return v2

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 9
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 11
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 12
    iget v0, v4, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 13
    :cond_4
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    const/4 v3, 0x4

    .line 14
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    if-nez v0, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    :goto_2
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->v:Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->w:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
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

.method protocolCheckPlaceholder()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->a:Landroid/view/View;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f080b9c

    goto :goto_0

    :cond_0
    const v2, 0x7f080b9d

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->N0(Z)V

    :cond_1
    return-void
.end method

.method registerContentResolver()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->v:Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->v:Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->registerNavigationBarObserver()V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p1, 0xffffff

    const/4 v0, 0x1

    .line 6
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    return-void
.end method

.method update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->g:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "down"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->g:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-boolean v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->n:Z

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->isSelectedNextTips()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->isSelectedUserProtocol()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->k:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->noPromptDownload()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getUserProtocolTxt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadHTML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->a:Landroid/view/View;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->isSelectedUserProtocol()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080b9c

    goto :goto_2

    :cond_4
    const v0, 0x7f080b9d

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method
