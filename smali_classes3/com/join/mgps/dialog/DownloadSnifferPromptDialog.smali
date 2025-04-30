.class public Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;
.super Lcom/BaseActivity;
.source "DownloadSnifferPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c01a9
.end annotation


# instance fields
.field a:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field e:I

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/Button;

.field i:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$b;

.field private k:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    .line 3
    new-instance v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$a;-><init>(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->k:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->getNavigationBarHeight()I

    move-result p0

    return p0
.end method

.method public static I0(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static J0(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static M0(Landroid/app/Activity;I)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->J0(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 6
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->I0(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v2, v3, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x50

    .line 7
    iput p0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
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

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->k:Landroid/database/ContentObserver;

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

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->k:Landroid/database/ContentObserver;

    .line 7
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method


# virtual methods
.method F0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->e(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->finish()V

    return-void
.end method

.method G0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/WebViewSearchActivity_;->A1(Landroid/content/Context;)Lcom/join/mgps/activity/WebViewSearchActivity_$z;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/WebViewSearchActivity_$z;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity_$z;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/WebViewSearchActivity_$z;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->finish()V

    return-void
.end method

.method H0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/WebViewSearchActivity_;->A1(Landroid/content/Context;)Lcom/join/mgps/activity/WebViewSearchActivity_$z;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity_$z;->b(Ljava/lang/String;)Lcom/join/mgps/activity/WebViewSearchActivity_$z;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WebViewSearchActivity_$z;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/activity/WebViewSearchActivity_$z;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->finish()V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->registerContentResolver()V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->getNavigationBarHeight()I

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
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->i:Landroid/view/View;

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

.method L0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->finish()V

    return-void
.end method

.method public N0(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    and-int/lit8 v0, p1, 0x2

    shr-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    and-int/lit8 p1, p1, 0x4

    shr-int/lit8 p1, p1, 0x2

    if-ne p1, v3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->h:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const v0, 0x7f090197

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->f:Landroid/widget/Button;

    const v0, 0x7f0901ac

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->g:Landroid/widget/Button;

    const v0, 0x7f0901aa

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->h:Landroid/widget/Button;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->d:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    and-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    goto :goto_1

    .line 9
    :cond_1
    iget v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    and-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    goto :goto_2

    .line 12
    :cond_2
    iget v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    .line 13
    :goto_2
    iget v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->e:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->N0(I)V

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->K0()V

    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->finish()V

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

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->j:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->k:Landroid/database/ContentObserver;

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

.method registerContentResolver()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$b;-><init>(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->j:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$b;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->j:Lcom/join/mgps/dialog/DownloadSnifferPromptDialog$b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->registerNavigationBarObserver()V

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
