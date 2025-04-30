.class public Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;
.super Lcom/BaseFragmentActivity;
.source "DownloadHighSpeedingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;,
        Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c015e
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090e9f
    .end annotation
.end field

.field b:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:I

.field k:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;

.field private m:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->h:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->i:Z

    .line 4
    iput v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->j:I

    .line 5
    new-instance v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$a;-><init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->m:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->getNavigationBarHeight()I

    move-result p0

    return p0
.end method

.method public static F0(Landroid/content/Context;)I
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

.method public static G0(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static K0(Landroid/app/Activity;I)V
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
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->G0(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 6
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->F0(Landroid/content/Context;)I

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

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->m:Landroid/database/ContentObserver;

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

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->m:Landroid/database/ContentObserver;

    .line 7
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 10

    const-string v0, "KB"

    const-string v1, "M"

    const-wide/16 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    if-eqz v6, :cond_1

    const-wide/32 v8, 0x100000

    .line 4
    :try_start_1
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    :goto_0
    mul-long v0, v0, v8

    :goto_1
    add-long/2addr v0, v2

    goto :goto_2

    .line 5
    :cond_1
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v8, 0x400

    .line 6
    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-string v0, "B"

    .line 7
    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .line 8
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->L0(J)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 10
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v0, 0xb

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method E0()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->finish()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method H0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->registerContentResolver()V

    .line 2
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->getNavigationBarHeight()I

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
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->k:Landroid/view/View;

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

.method I0(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.ad.result"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x15

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->e:Z

    :cond_1
    :goto_0
    return-void
.end method

.method J0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method L0(J)V
    .locals 5

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "B"

    const-wide/16 v2, 0x400

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    long-to-double p1, p1

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    move-object p2, v1

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    long-to-double p1, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KB"

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v4, p1, v2

    if-gez v4, :cond_2

    long-to-double p1, p1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "M"

    goto :goto_0

    :cond_2
    long-to-double p1, p1

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "G"

    :goto_0
    const-string v0, ".0"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p2

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "0"

    .line 7
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07113b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->j:I

    .line 8
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 9
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    new-instance p1, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/S "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0711c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    new-instance p1, Landroid/text/SpannableString;

    const-string v0, "\u56fe"

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 15
    new-instance v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;

    const v1, 0x7f080603

    invoke-direct {v0, p0, p0, v1, v3}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$c;-><init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;Landroid/content/Context;II)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 16
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->H0()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->updateProgressPartly()V

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->h:Z

    return-void
.end method

.method close()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u540e\u53f0\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->finish()V

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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    sput-boolean v0, Lcom/join/mgps/service/CommonService;->H:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->l:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->d:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->e:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->finish()V

    .line 7
    :cond_3
    iget-boolean p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->f:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->g:Z

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->finish()V

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->f:Z

    .line 3
    sput-boolean v0, Lcom/join/mgps/service/CommonService;->H:Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->E0()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->f:Z

    .line 4
    iget-boolean v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->h:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->i:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->h:Z

    .line 6
    iget-object v2, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->i:Z

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_2

    .line 10
    sput-boolean v0, Lcom/join/mgps/service/CommonService;->H:Z

    .line 11
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDownloadRecomedData"

    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v2, "downloadTask"

    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->h:Z

    :cond_2
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
    new-instance v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;-><init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->l:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->l:Lcom/join/mgps/dialog/DownloadHighSpeedingDialog$b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->registerNavigationBarObserver()V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

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

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->updateProgressPartly()V

    :cond_0
    return-void
.end method
