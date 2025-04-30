.class Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;
.super Ljava/lang/Object;
.source "DownloadNotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->a:Landroid/content/Intent;

    const-string v2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v4, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->a:Landroid/content/Intent;

    const-string v4, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 5
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->a:Landroid/content/Intent;

    const-string v5, "DOWNLOAD_NOTIFICATION_EXTRA_STATUS"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v1, :cond_10

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->isDownloading(I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_10

    .line 9
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canNotifyProgress()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_10

    .line 10
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v4, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 11
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLastNotifyProgressTime()V

    goto/16 :goto_3

    :cond_1
    if-eqz v3, :cond_10

    .line 12
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canNotifyProgress()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 13
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v4, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 14
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLastNotifyProgressTime()V

    goto/16 :goto_3

    :cond_2
    const/4 v4, -0x2

    if-eq v3, v4, :cond_5

    const/4 v5, -0x3

    if-ne v3, v5, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v3, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_3

    .line 17
    :cond_4
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v3, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_3

    .line 18
    :cond_5
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 19
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v3, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto/16 :goto_3

    .line 20
    :cond_6
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;)Lcom/ss/android/socialbase/downloader/h/g;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 21
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;)Lcom/ss/android/socialbase/downloader/h/g;

    move-result-object v5

    new-instance v6, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1$1;

    invoke-direct {v6, p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1$1;-><init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    if-ne v3, v4, :cond_7

    const-wide/16 v0, 0x32

    goto :goto_1

    :cond_7
    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {v5, v6, v0, v1}, Lcom/ss/android/socialbase/downloader/h/g;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    .line 22
    :cond_8
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v3, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_10

    .line 23
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v2, v0, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V

    goto/16 :goto_3

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_a

    return-void

    .line 27
    :cond_a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    .line 29
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 31
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v1, "mime_type_plg"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 34
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restartAllFailedDownloadTasks(Ljava/util/List;)V

    .line 35
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restartAllPauseReserveOnWifiDownloadTasks(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_d
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 37
    :cond_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->b:Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 41
    :cond_f
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;->c:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->pauseAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_3
    return-void
.end method
