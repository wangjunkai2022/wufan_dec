.class public Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;
.super Landroid/app/Activity;
.source "UnzipFailedDialog.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05fd
.end annotation


# instance fields
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

.field llReUnzip:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field message:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field moreSelecter:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field needFinish:Z

.field prefDef_:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field startButn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewx:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->openAssignFolder(Ljava/lang/String;)V

    return-void
.end method

.method private initGoInstall()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c05c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090687

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080ab5

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f09100f

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u6743\u9650\u662f\u5426\u5141\u8bb8"

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090eff

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f090a26

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u524d\u5f80\u6743\u9650\u7ba1\u7406\uff0c\u627e\u5230\u609f\u996d\u6e38\u620f\u5385-\u5e94\u7528\u5185\u5b89\u88c5\u5176\u4ed6\u5e94\u7528\uff0c\u9009\u62e9\u5141\u8bb8"

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0909eb

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$5;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$5;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private openAssignFolder(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    const-string v0, "com.android.filemanager"

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    const-string v0, "com.android.fileexplorer"

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    const-string v0, "com.coloros.filemanager"

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    const-string v0, "com.sec.android.app.myfiles"

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    const-string v0, "com.google.android.documentsui"

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11
    :cond_4
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    const-string v0, "com.huawei.hidisk"

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 12
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 13
    invoke-static {}, Lcom/join/mgps/Util/UtilsMy;->E1()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    const-string v2, "com.huawei.filemanager"

    invoke-virtual {v1, p0, v2}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string v1, "com.huawei.hidisk.filemanager.FileManager"

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_6

    .line 17
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 18
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 19
    :cond_7
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/android/app/common/utils/APKUtils;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "myfiles"

    const-string v2, "myfile"

    const-string v3, "filemanager"

    const-string v4, "fileexplorer"

    const-string v5, "  "

    if-eqz v0, :cond_a

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/common/utils/APKUtils$a;

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    :cond_9
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_a
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/android/app/common/utils/APKUtils;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/common/utils/APKUtils$a;

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 28
    :cond_c
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->M(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_1
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 20
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const-string v1, "unzipfailedxx"

    const-string v3, "show"

    .line 2
    invoke-static {v1, v3}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v3, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    iget-object v3, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0807b1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-ne v1, v4, :cond_1

    .line 8
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->message:Landroid/widget/TextView;

    const-string v6, "<font color=#ff001c>\u89e3\u538b\u5931\u8d25\uff1a</font>\u8bf7\u786e\u8ba4\u4e0b\u65b9\u51e0\u9879\u662f\u5426\u6b63\u5e38\u540e\u89e3\u538b"

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->startButn:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->llReUnzip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->showFailUnzip:Lcom/papa/sim/statistic/Event;

    new-instance v6, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->message:Landroid/widget/TextView;

    const-string v6, "\u5982\u679c\u5b89\u88c5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u4ee5\u4e0b\u95ee\u9898\u540e\u5b89\u88c5\u3002"

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->llReUnzip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->startButn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-static/range {p0 .. p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->showFailApkInstall:Lcom/papa/sim/statistic/Event;

    new-instance v6, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 16
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/q1;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/Filepath;

    .line 18
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 19
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 20
    :cond_2
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 21
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v2

    .line 22
    :goto_2
    iget-object v8, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 23
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "\u4e0b\u8f7d\u4f4d\u7f6e\u4e3aSD\u5361\u65f6\u53ef\u80fd\u4f1a\u5bfc\u81f4\u89e3\u538b\u5931\u8d25\uff0c\u70b9\u51fb\u6b64\u5904\u53ef\u5207\u6362\u4e0b\u8f7d\u4f4d\u7f6e"

    const-string v9, "\u4e0b\u8f7d\u4f4d\u7f6e\u8bbe\u7f6e\u4e3a\u624b\u673a\u5185\u5b58"

    const-string v11, "\u524d\u5f80\u624b\u673a\u6587\u4ef6\u5939\uff0c\u67e5\u770b\u624b\u673a\u5b58\u50a8\u7a7a\u95f4\u662f\u5426\u4e0d\u8db3\uff0c\u82e5\u4e0d\u8db3\u8bf7\u6e05\u9664\u591a\u4f59\u6587\u4ef6"

    const-string v12, "#ff001c"

    const-string v13, "\u5185\u5b58\u662f\u5426\u5145\u8db3"

    const v14, 0x7f080ab5

    const v4, 0x7f09100f

    const v15, 0x7f090687

    const/4 v5, 0x0

    const v10, 0x7f0c05c8

    if-eqz v7, :cond_5

    .line 24
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    .line 25
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 26
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 27
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 29
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    const v3, 0x7f090eff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\uff08\u53ef\u7528\u7a7a\u95f4"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\uff09"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    move-result-wide v13

    iget-object v3, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v16

    const-wide/16 v18, 0x2

    mul-long v16, v16, v18

    cmp-long v3, v13, v16

    if-gez v3, :cond_4

    .line 33
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_4
    const-string v3, "#00c81e"

    .line 34
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    :goto_3
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    const v3, 0x7f090a26

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    const v3, 0x7f0909eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;

    invoke-direct {v3, v0, v6}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Lcom/join/mgps/dto/Filepath;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v6}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 40
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f080ab4

    .line 42
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090eff

    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f090a26

    .line 46
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0909eb

    .line 48
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$2;

    invoke-direct {v4, v0, v1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$2;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 50
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    .line 51
    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 54
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    const v13, 0x7f090eff

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v13, "\uff08\u53ef\u7528\u7a7a\u95f40)"

    .line 56
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    const v12, 0x7f090a26

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 59
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    const v11, 0x7f0909eb

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v11, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$3;

    invoke-direct {v11, v0, v6}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$3;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Lcom/join/mgps/dto/Filepath;)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v6, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->viewx:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget v6, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 63
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 64
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v10, 0x7f080ab4

    .line 65
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090eff

    .line 68
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090a26

    .line 69
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 70
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0909eb

    .line 71
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v8, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;

    invoke-direct {v8, v0, v1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;-><init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/util/List;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v4, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->moreSelecter:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    const/16 v6, 0x8

    :goto_4
    const/4 v4, 0x1

    const/16 v5, 0x8

    goto/16 :goto_1

    .line 73
    :cond_7
    :goto_5
    iget v1, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->from:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_8

    .line 75
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->initGoInstall()V

    :cond_8
    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method goH5()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goFeedback(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->prefDef_:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method startButn()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->reApkInstall:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    return-void
.end method

.method tvReDownload()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/servcie/a;->c(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->n(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->close()V

    :cond_0
    return-void
.end method

.method tvReUnzip()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->reUnzip:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p0, v0}, Lcom/php25/PDownload/d;->k(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->needFinish:Z

    return-void
.end method
