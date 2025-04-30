.class Lcom/join/mgps/activity/ShareWebActivity$o$o0;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->startGame(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/f;->E(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    sget-object v7, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x5

    if-eqz v7, :cond_2

    .line 5
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/join/mgps/va/overmind/e;->D(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    if-ne v4, v9, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v5, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v5, v5, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v5}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v5

    iget-object v7, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v7, v7, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-ne v5, v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 9
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 10
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 11
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-nez v1, :cond_7

    .line 13
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    :cond_7
    :goto_1
    if-nez v1, :cond_8

    return-void

    :cond_8
    const-string v0, "login"

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->f3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$o0;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
