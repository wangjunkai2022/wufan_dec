.class public Lcom/join/mgps/activity/DownloadSettingActivity;
.super Lcom/BaseActivity;
.source "DownloadSettingActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c01c6
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/ImageView;
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

.field k:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o:Landroid/content/Context;

.field p:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field s:Lcom/join/mgps/rpc/d;

.field private t:Lcom/join/mgps/dialog/f;

.field private u:Ljava/lang/String;

.field v:Landroid/app/Dialog;

.field w:Landroidx/appcompat/app/AlertDialog$Builder;

.field x:Lcom/join/mgps/dto/AccountBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->q:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->r:Z

    .line 4
    const-class v0, Lcom/join/mgps/activity/DownloadSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->u:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->w:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/MYAccountDetialActivity_;->r1(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method F0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/d;->j(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->e:Landroid/widget/ImageView;

    const v1, 0x7f08055e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->e:Landroid/widget/ImageView;

    const v2, 0x7f080560

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method G0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->F0()V

    return-void
.end method

.method H0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->v:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    const v3, 0x7f12000c

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->w:Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->w:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->w:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v2, "\u8be5\u8bbe\u7f6e\u5e94\u7528\u4e8e\u6e38\u620f\u4e0b\u8f7d\u540e\u7684\u63a8\u8350\uff0c\u5efa\u8bae\u60a8\u4fdd\u7559\u5f00\u542f\u3002"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->w:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v2, Lcom/join/mgps/activity/DownloadSettingActivity$a;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/DownloadSettingActivity$a;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity;Z)V

    const-string v0, "\u4ecd\u8981\u5173\u95ed"

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->w:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity$b;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity;)V

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->w:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->v:Landroid/app/Dialog;

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/join/mgps/pref/h;->k0(Z)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f080631

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method I0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->J0()V

    return-void
.end method

.method public J0()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "_"

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "\u7f51\u7edc\u4f3c\u4e4e\u4e0d\u901a\u54e6~"

    if-eqz v1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/join/mgps/Util/RequestBeanUtil;->getApkVersion(III)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->s:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v1}, Lcom/join/mgps/rpc/d;->r1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/APKVersionMainBean;

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/APKVersionMainBean;->getApp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ApkVersionbean;

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/j;->A()[Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 14
    aget-object v9, v1, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "\u65e0\u9700\u66f4\u65b0,\u5df2\u662f\u6700\u65b0\u7248\u672c"

    if-gt v9, v7, :cond_2

    .line 15
    :try_start_1
    new-instance v9, Lcom/join/mgps/dto/VersionDto;

    invoke-direct {v9}, Lcom/join/mgps/dto/VersionDto;-><init>()V

    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/join/mgps/dto/VersionDto;->setAndroidUrl(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setVersionNo(F)V

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setInfo(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getHead_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setHead_pic(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getTow_tpl_back_ground_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setTow_tpl_back_ground_pic(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getTpl_type()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setTpl_type(I)V

    .line 23
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v7, :cond_1

    .line 24
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v8

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 25
    invoke-virtual {p0, v9, v4}, Lcom/join/mgps/activity/DownloadSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, v9, v5}, Lcom/join/mgps/activity/DownloadSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, v10}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, v10}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method L0()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getLocalUserIcon()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method M0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method N0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->R0()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->x:Lcom/join/mgps/dto/AccountBean;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->L0()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->K0()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/broadcast/a;->a(Landroid/content/Context;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u9000\u51fa\u767b\u5f55\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method O0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f090d5b
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/DeveloperActivity_;->X0(Landroid/content/Context;)Lcom/join/mgps/activity/DeveloperActivity_$q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method P0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->w(Landroid/content/Context;)Lcom/join/mgps/dialog/t0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity$c;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->j(Lcom/join/mgps/dialog/t0$f;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/t0;->k(Lcom/join/mgps/pref/PrefDef_;)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dialog/t0;->show()V

    return-void
.end method

.method Q0(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_out"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method R0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccoutLoginOutRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccoutLoginOutRequest;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->x:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->setUid(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->setSign(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->b(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DownloadSettingActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method S0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageSettingActivity_;->Q0(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageSettingActivity_$j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method

.method T0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/VideoSettingActivity_;->L0(Landroid/content/Context;)Lcom/join/mgps/activity/VideoSettingActivity_$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method afterview()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->u:Ljava/lang/String;

    const-string v1, "afterview"

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->f:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->s:Lcom/join/mgps/rpc/d;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f080631

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f080630

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/16 v0, 0x8

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    if-nez v1, :cond_2

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v2, "\u6c38\u4e0d\u63d0\u9192"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v2, "\u5927\u4e8e100M\u63d0\u9192"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v2, "\u5927\u4e8e50M\u63d0\u9192"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v2, "\u5927\u4e8e30M\u63d0\u9192"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const-string v2, "\u6bcf\u6b21\u90fd\u63d0\u9192"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/q1;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/q1;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 22
    iget-object v6, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u53ef\u7528\u7a7a\u95f4\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5b58\u50a8\u4f4d\u7f6e\uff1a"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->e:Landroid/widget/ImageView;

    const v2, 0x7f080560

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 25
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->e:Landroid/widget/ImageView;

    const v2, 0x7f08055e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->u:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "VersionXML"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Mandatory"

    .line 3
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VersionDto"

    .line 5
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->t:Lcom/join/mgps/dialog/f;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/join/mgps/dialog/f;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/join/mgps/dialog/f;-><init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->t:Lcom/join/mgps/dialog/f;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->t:Lcom/join/mgps/dialog/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->t:Lcom/join/mgps/dialog/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
