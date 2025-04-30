.class public Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;
.super Landroid/app/Activity;
.source "InstallAppFirstNoticeDialog.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05fc
.end annotation


# instance fields
.field appshow:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field checkbox:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field checkboxischecked:Z

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field goH5:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field img:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field imgUrl:Ljava/lang/String;

.field message:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field moreSelecter:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef_:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field startButn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->checkboxischecked:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->imgUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0807b1

    invoke-static {v1, v2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->gameName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->appshow:Landroid/widget/TextView;

    const-string v1, "\u5141\u8bb8\u201c\u609f\u996d\u6e38\u620f\u5385\u201d\u5b89\u88c5\u5e94\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog$1;-><init>(Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showApkInstall:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/upload/images/20190625/hw.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/upload/images/20190625/xm.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/upload/images/20190625/oppo.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/upload/images/20190625/vivo.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/upload/images/20190625/Google.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 15
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xiaomi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 17
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->imgUrl:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x3f88f5c3    # 1.07f

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    goto/16 :goto_1

    .line 19
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "oppo"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    iput-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->imgUrl:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x3f67ae14    # 0.905f

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vivo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    iput-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->imgUrl:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x3f9f3b64    # 1.244f

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "honor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x3f91eb85    # 1.14f

    if-eqz v0, :cond_5

    .line 27
    iput-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->imgUrl:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    goto :goto_1

    .line 29
    :cond_5
    iput-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->imgUrl:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    goto :goto_1

    .line 31
    :cond_6
    :goto_0
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->imgUrl:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    .line 33
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->imgUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method close()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->checkboxischecked:Z

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->exitApkInstall:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public installAPK(Landroid/app/Activity;Ljava/io/File;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const-string v3, "application/vnd.android.package-archive"

    const/16 v4, 0x18

    if-lt v1, v4, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v1, "com.join.android.app.mgsim.wufun.fileprovider"

    .line 6
    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 7
    :goto_0
    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method startButn()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->checkboxischecked:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickApkInstall:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p0, v0}, Lcom/join/mgps/activity/mygame/dialog/InstallAppFirstNoticeDialog;->installAPK(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method
