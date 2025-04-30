.class public Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;
.super Lcom/BaseActivity;
.source "PlugDownDialogAcitivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0532
.end annotation


# instance fields
.field appSize:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cancle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field downloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field gameid:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field info:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field lodingInfo:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ok:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field plugNumber:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field progressBarZip:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V

    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2}, Lg1/f;->d()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 2
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v4

    cmp-long v6, v4, v0

    .line 7
    iput-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V

    return-void
.end method

.method private updateProgressPartly()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    mul-double v1, v1, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v3

    const-string v5, ")"

    const-string v6, "/"

    const-string v7, "\u6b63\u5728\u4e0b\u8f7d\uff08"

    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-nez v10, :cond_0

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/MApplication;->n0:Z

    const-string v1, "PlugDownDialogAcitivity"

    const-string v2, "PlugDownDialogAcitivity oncreate"

    .line 2
    invoke-static {v1, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lg1/f;->V(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->d()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->info:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u6b21\u52a0\u8f7d\u6e38\u620f\u9700\u521d\u59cb\u5316"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u8d44\u6e90\u6587\u4ef6\uff0c\u8bf7\u7a0d\u540e\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    const-wide/16 v3, 0x0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 13
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v6

    cmp-long v8, v6, v3

    .line 14
    iput-object v5, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v1, :cond_4

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->showEmuLoadFininsh:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 21
    :cond_5
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->showEmuLoading:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 22
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x404

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_6

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 26
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_6
    return-void
.end method

.method cancle()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->EmuLoadingBackground:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method notifyUi()V
    .locals 13
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double v2, v2, v4

    mul-double v2, v2, v4

    double-to-long v2, v2

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statues="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "plugDownDialog"

    invoke-static {v6, v4}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const-wide/16 v6, 0x0

    const-string v8, ")"

    const-string v9, "\u6b63\u5728\u4e0b\u8f7d\uff08"

    const-string v10, "/"

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    const/16 v4, 0x64

    const/4 v11, 0x5

    if-eq v0, v11, :cond_2

    const/4 v12, 0x6

    if-eq v0, v12, :cond_7

    const/16 v12, 0x2a

    if-eq v0, v12, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 4
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_7

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_7

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->cancle:Landroid/widget/TextView;

    const-string v1, "\u53bb\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->ok:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 15
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 22
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_3

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v11, :cond_4

    .line 27
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    move-result-wide v3

    cmp-long v8, v3, v6

    .line 28
    iput-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_2

    .line 29
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p0, v0, v1, v5}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->StartgameLoadFininsh:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 32
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_9

    .line 34
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-nez v4, :cond_8

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 36
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 40
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-nez v4, :cond_b

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 44
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_6
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method ok()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->v(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    :cond_3
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startAfterEmuLoad:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateProgressPartly()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    const/16 v2, 0xa

    if-eq p1, v2, :cond_4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez p1, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 14
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 15
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/MApplication;->n0:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/MApplication;->n0:Z

    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
