.class public Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;
.super Landroid/app/Activity;
.source "DownloadTaskDeleteActivity.java"


# instance fields
.field private a:Lcom/ss/android/socialbase/appdownloader/c/k;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V
    .locals 3

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadNotificationEventListener(I)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    const-string v2, ""

    .line 9
    invoke-interface {v0, v1, p1, v2, v2}, Lcom/ss/android/socialbase/downloader/depend/z;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(I)V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v1, "extra_click_download_ids"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    const-string v4, "tt_appdownloader_notification_download_delete"

    .line 6
    invoke-static {p0, v4}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {v4, p0}, Lcom/ss/android/socialbase/appdownloader/c/c;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v6

    :cond_3
    if-nez v6, :cond_4

    .line 10
    new-instance v6, Lcom/ss/android/socialbase/appdownloader/d/a;

    invoke-direct {v6, p0}, Lcom/ss/android/socialbase/appdownloader/d/a;-><init>(Landroid/content/Context;)V

    :cond_4
    const-string v4, "tt_appdownloader_tip"

    .line 11
    invoke-static {p0, v4}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v7, "tt_appdownloader_label_ok"

    .line 12
    invoke-static {p0, v7}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const-string v8, "tt_appdownloader_label_cancel"

    .line 13
    invoke-static {p0, v8}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 14
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v9

    invoke-static {v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v9

    const-string v10, "cancel_with_net_opt"

    invoke-virtual {v9, v10, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_5

    .line 15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->h()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 16
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-eqz v13, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    const-string v3, "tt_appdownloader_label_reserve_wifi"

    .line 17
    invoke-static {p0, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const-string v3, "tt_appdownloader_label_cancel_directly"

    .line 18
    invoke-static {p0, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "tt_appdownloader_resume_in_wifi"

    invoke-static {p0, v5}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    :cond_6
    invoke-interface {v6, v4}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(I)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v3

    new-instance v4, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 21
    invoke-interface {v3, v7, v4}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v3

    new-instance v4, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$2;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$2;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;I)V

    .line 22
    invoke-interface {v3, v8, v4}, Lcom/ss/android/socialbase/appdownloader/c/l;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;)V

    .line 23
    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    .line 24
    invoke-interface {v6}, Lcom/ss/android/socialbase/appdownloader/c/l;->a()Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b:Landroid/content/Intent;

    .line 4
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b()V

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/k;->a()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
