.class public Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;
.super Landroid/app/Activity;
.source "NewArenaDownloadActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c014f
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Lcom/join/mgps/db/tables/EMUApkTable;

.field E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field a:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field b:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field e:Lcom/join/mgps/rpc/d;

.field f:Lcom/join/mgps/dto/DetailResultBean;

.field g:Lcom/facebook/drawee/view/SimpleDraweeView;
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

.field j:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field v:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field w:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field x:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field y:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->z:I

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->A:I

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->B:I

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->C:I

    return-void
.end method

.method private j(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method a()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->e:Lcom/join/mgps/rpc/d;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gameId"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    const-string v1, "hasPlug"

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    const-string v1, "hasRom"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 10
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->i()V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p()V

    return-void
.end method

.method b()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->H1(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->y1(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "SO_SIMULATOR"

    goto :goto_0

    :cond_2
    const-string v0, "RAW_SIMULATOR"

    goto :goto_0

    :cond_3
    const-string v0, ""

    .line 8
    :goto_0
    :try_start_0
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v3

    const-class v4, Ljava/util/List;

    invoke-virtual {v3, v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 11
    sget-object v3, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    return-void

    :catch_0
    nop

    .line 13
    :cond_4
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {v2, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    new-instance v3, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$a;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;)V

    invoke-static {p0, v1, v2, v0, v3}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c()V

    :goto_1
    return-void
.end method

.method c()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->C:I

    iget v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->z:I

    if-ne v0, v1, :cond_14

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDisableShowSpeedUpPrompt(Z)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    if-eqz v1, :cond_4

    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_switch_v2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_source_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    const/4 v3, 0x5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 11
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->S0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->y:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u5173\u95ed\u6309\u94ae\u540e\uff0c\u6e38\u620f\u4f1a\u5728\u540e\u53f0\n\u7ee7\u7eed\u4e0b\u8f7d\u54e6~"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->A:I

    iput v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->C:I

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080186

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    if-nez v0, :cond_13

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    .line 17
    :cond_6
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 18
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 19
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v4}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xb

    const/4 v5, 0x2

    if-eqz v1, :cond_b

    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVerCode()I

    move-result v1

    iget-object v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    move-result v6

    if-ne v1, v6, :cond_b

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/join/android/app/common/utils/h;->A(Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 23
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v1, v2

    .line 24
    :goto_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-eq v5, v3, :cond_9

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v4, :cond_12

    :cond_9
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 25
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/h;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkArenaTable;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 26
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->g2(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_5

    .line 27
    :cond_a
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_5

    .line 28
    :cond_b
    :goto_2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v3, :cond_d

    const/16 v1, 0x9

    .line 29
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_type()I

    move-result v1

    if-ne v1, v5, :cond_c

    .line 31
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->A0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    :cond_c
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->update(Ljava/lang/Object;)I

    goto :goto_5

    .line 33
    :cond_d
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {v1}, Lcom/join/android/app/common/utils/h;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    move-result v1

    if-ne v1, v5, :cond_e

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v4, :cond_e

    goto :goto_4

    .line 34
    :cond_e
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_f

    goto :goto_3

    .line 35
    :cond_f
    invoke-static {v0}, Lcom/php25/PDownload/d;->h(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 36
    invoke-static {v0}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->delete(Ljava/lang/Object;)I

    goto :goto_5

    :cond_10
    :goto_3
    return-void

    .line 38
    :cond_11
    :goto_4
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void

    .line 39
    :cond_12
    :goto_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->e()V

    .line 40
    :cond_13
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    if-nez v0, :cond_15

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f()V

    goto :goto_6

    .line 42
    :cond_14
    iget v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->B:I

    if-ne v0, v1, :cond_15

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    const-string v2, "gameId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 45
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d:Ljava/lang/String;

    const-string v1, "MGMainActivity_10004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 48
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->O()V

    :cond_15
    :goto_6
    return-void
.end method

.method d(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 5
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    if-eqz p1, :cond_2

    new-array v2, v1, [Ljava/lang/String;

    .line 6
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o()V

    goto/16 :goto_2

    .line 21
    :cond_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g()V

    goto/16 :goto_2

    :cond_4
    const/16 v2, 0x78

    .line 23
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getGame_name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->J:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->I:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSize()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->K:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 28
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPlugin_num()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz p1, :cond_7

    new-array v2, v1, [Ljava/lang/String;

    .line 29
    invoke-static {p0, p1, v1, v2}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    goto :goto_1

    .line 36
    :cond_5
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    goto :goto_1

    .line 37
    :cond_6
    iput-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getLogo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    .line 42
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o()V

    :goto_2
    return-void
.end method

.method e()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {v0, p0}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    return-void
.end method

.method f()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x320L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDisableShowSpeedUpPrompt(Z)V

    .line 5
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    return-void
.end method

.method g()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->e:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DetailResultBean;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->f:Lcom/join/mgps/dto/DetailResultBean;

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->d(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n()V

    :cond_4
    :goto_1
    return-void
.end method

.method h()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    :cond_0
    return-void
.end method

.method i()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->v:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity$b;-><init>(Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method k()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method l()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->i()V

    return-void
.end method

.method m()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method n()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->v:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method o()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->v:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->q:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u4f60\u9700\u8981\u4e0b\u8f7d\u6e38\u620f "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    const-string v4, "M"

    const/4 v5, 0x1

    const v6, 0x7f0808fe

    if-nez v3, :cond_5

    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->I:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p0, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->E(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v8

    invoke-static {v3, v6, v7, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v7, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p0}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v8

    invoke-static {v7, v6, v3, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->u(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 13
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 14
    iget-object v7, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->J:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->K:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    const/4 v7, 0x5

    if-ne v3, v7, :cond_4

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->j:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 19
    iput-boolean v5, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/TextView;

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 22
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    if-nez v0, :cond_a

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-nez v0, :cond_6

    return-void

    .line 25
    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->F:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v6}, Lcom/join/android/app/common/utils/MyImageLoader;->E(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v2, v6, v0, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_2

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p0}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v3

    invoke-static {v0, v6, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->u(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 29
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v0

    .line 32
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 33
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v3, 0x30

    const/16 v4, 0x64

    if-ne v0, v3, :cond_8

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/Button;

    const-string v2, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    .line 37
    :cond_8
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_9

    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/Button;

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    .line 40
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 41
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->h()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 12
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_8

    const/16 v1, 0x30

    if-eq v0, v1, :cond_8

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "/"

    const-string v1, ""

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    if-nez p1, :cond_5

    .line 7
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/join/mgps/db/tables/EMUApkTable;->getDown_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    .line 9
    :cond_4
    iget-object v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    double-to-long v6, v6

    .line 12
    iget-object v8, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-boolean v6, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    if-nez v6, :cond_7

    .line 14
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    double-to-long v3, v6

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    move v2, p1

    :goto_1
    if-eqz v2, :cond_c

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->y:Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u5173\u95ed\u6309\u94ae\u540e\uff0c\u6e38\u620f\u4f1a\u5728\u540e\u53f0\n\u7ee7\u7eed\u4e0b\u8f7d\u54e6~"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->A:I

    iput p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->C:I

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 22
    :cond_8
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 25
    :cond_9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    if-eqz v0, :cond_a

    .line 26
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->b:Z

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 29
    :cond_a
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 30
    iput-boolean v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->c:Z

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 33
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p()V

    :cond_c
    :goto_3
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p()V

    return-void
.end method

.method p()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Ln1/o;->o()Ln1/o;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ln1/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 7
    invoke-static {p0, v1, v2, v3}, Lcom/join/android/app/common/utils/h;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->D:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-static {p0, v1}, Lcom/join/mgps/Util/UtilsMy;->q0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 9
    iget v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->B:I

    iput v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->C:I

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080180

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/Button;

    const-string v1, "\u8fdb\u5165\u623f\u95f4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v2, "\u63d2\u4ef6\u6b63\u5728\u5b89\u88c5..."

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/servcie/a;->q(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method
