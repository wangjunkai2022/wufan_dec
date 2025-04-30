.class public Lcom/ss/android/socialbase/appdownloader/e/a;
.super Lcom/ss/android/socialbase/downloader/notification/a;
.source "AppNotificationItem.java"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/res/Resources;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->e:Ljava/lang/String;

    .line 3
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->d:Ljava/lang/String;

    .line 4
    iput-object p6, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 24
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "enable_notification_ui"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 25
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->h()I

    move-result p1

    return p1

    .line 26
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->g()I

    move-result p1

    return p1
.end method

.method private a(II)I
    .locals 1

    .line 13
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p2

    const-string v0, "notification_opt_2"

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 14
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->v()I

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 15
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->u()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 16
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->v()I

    move-result p2

    goto :goto_1

    .line 17
    :cond_3
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->t()I

    move-result p2

    :cond_4
    :goto_1
    return p2
.end method

.method private a(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 3

    .line 18
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    const-class v2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_click_download_ids"

    .line 20
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_click_download_type"

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_from_notification"

    const/4 p2, 0x1

    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    const/high16 p2, 0xc000000

    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x3f5

    if-eq v2, v3, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p1

    const/16 v2, 0x419

    if-ne p1, v2, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string p3, "application/vnd.android.package-archive"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "notification_text_opt"

    .line 12
    invoke-virtual {p2, p1, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)Landroid/app/Notification;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v2

    .line 2
    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/c;->a(I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->k()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->f()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v5

    .line 6
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v6

    .line 7
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lt v7, v8, :cond_1

    const-string v7, "set_notification_group"

    .line 8
    invoke-virtual {v6, v7, v10}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_1

    const-string v7, "com.ss.android.socialbase.APP_DOWNLOADER"

    .line 9
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 10
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 11
    :cond_1
    invoke-direct {v0, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(II)I

    move-result v7

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    const/4 v11, -0x4

    const/4 v12, 0x3

    const-string v13, "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT"

    const/4 v14, 0x4

    const/4 v15, -0x1

    const/4 v8, 0x2

    if-eq v3, v9, :cond_8

    if-eq v3, v14, :cond_8

    if-ne v3, v8, :cond_3

    goto :goto_2

    :cond_3
    if-ne v3, v12, :cond_b

    .line 13
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    invoke-virtual {v4, v9}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-string v17, "android.ss.intent.action.DOWNLOAD_OPEN"

    if-eq v2, v15, :cond_7

    if-ne v2, v11, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, -0x3

    if-ne v2, v11, :cond_6

    const-string v2, "notification_click_install_auto_cancel"

    .line 15
    invoke-virtual {v6, v2, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    .line 16
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->h()I

    move-result v2

    if-lez v2, :cond_5

    .line 18
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v4, v9}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_6
    :goto_0
    move-object/from16 v13, v17

    .line 20
    :cond_7
    :goto_1
    invoke-direct {v0, v13, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "android.ss.intent.action.DOWNLOAD_HIDE"

    .line 21
    invoke-direct {v0, v2, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_5

    .line 22
    :cond_8
    :goto_2
    invoke-direct {v0, v13, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-eq v3, v9, :cond_a

    if-ne v3, v14, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v2, 0x1

    .line 23
    :goto_4
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 24
    invoke-virtual {v4, v10}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 25
    :cond_b
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v18

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v2, v20, v22

    if-lez v2, :cond_c

    const-wide/16 v22, 0x64

    mul-long v18, v18, v22

    .line 27
    div-long v12, v18, v20

    long-to-int v11, v12

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    .line 28
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->d()Ljava/lang/String;

    move-result-object v12

    .line 29
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v12, "tt_appdownloader_download_unknown_title"

    .line 30
    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v12

    .line 31
    iget-object v13, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 32
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/appdownloader/e/a;->j()Landroid/widget/RemoteViews;

    move-result-object v13

    .line 33
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v2

    .line 34
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v8

    const-string v14, "notification_opt_2"

    invoke-virtual {v8, v14}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_e

    const-string v8, "android.ss.intent.action.DOWNLOAD_CLICK_BTN"

    .line 35
    invoke-direct {v0, v8, v3, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 36
    :cond_e
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v8

    const-string v10, "enable_notification_ui"

    invoke-virtual {v8, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v8

    const-string v15, "setBackgroundResource"

    if-lt v8, v9, :cond_f

    .line 37
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->s()I

    move-result v8

    .line 38
    invoke-virtual {v13, v2, v15, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 v8, -0x1

    .line 39
    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 40
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->m()I

    move-result v2

    .line 41
    invoke-virtual {v13, v2, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 42
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v2

    const/4 v8, 0x0

    .line 43
    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v8, 0x64

    move/from16 v12, p2

    .line 44
    invoke-virtual {v13, v2, v8, v11, v12}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 45
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->l()I

    move-result v2

    if-eqz v7, :cond_10

    .line 46
    invoke-virtual {v13, v2, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 47
    :cond_10
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v7

    if-lt v7, v9, :cond_12

    .line 48
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/c;->a()Lcom/ss/android/socialbase/appdownloader/e/c;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_11

    const-string v8, "setBackgroundColor"

    const/4 v12, 0x0

    .line 49
    invoke-virtual {v13, v2, v8, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 50
    invoke-virtual {v13, v2, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_7

    .line 51
    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->s()I

    move-result v7

    .line 52
    invoke-virtual {v13, v2, v15, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_12
    :goto_7
    const-string v2, ""

    const-string v7, "/"

    const/16 v8, 0x8

    if-eq v3, v9, :cond_2f

    const/4 v12, 0x4

    if-ne v3, v12, :cond_13

    goto/16 :goto_14

    :cond_13
    const-string v12, "tt_appdownloader_notification_download_resume"

    const/4 v15, 0x2

    if-ne v3, v15, :cond_19

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tt_appdownloader_notification_pausing"

    .line 55
    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v2

    .line 56
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v3

    .line 58
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v6, v14}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v9, :cond_15

    const/16 v12, 0x46

    const-string v15, "noti_progress_show_th"

    .line 60
    invoke-virtual {v6, v15, v12}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v12

    if-lt v11, v12, :cond_14

    .line 61
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v5

    const/4 v11, 0x0

    .line 62
    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 63
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v5

    .line 64
    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v5

    .line 66
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_9

    :cond_14
    const/4 v11, 0x0

    .line 67
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v2

    .line 68
    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 69
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v2

    .line 70
    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 71
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v2

    .line 72
    invoke-virtual {v13, v2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 73
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->o()I

    move-result v2

    .line 74
    invoke-virtual {v13, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v2, "tt_appdownloader_notification_download_continue"

    .line 75
    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v2

    .line 76
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_15
    const/4 v11, 0x0

    .line 77
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v12

    .line 78
    invoke-virtual {v13, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 79
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v5

    .line 80
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x2

    if-lt v12, v15, :cond_16

    .line 81
    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_8

    .line 82
    :cond_16
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    :goto_8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v5

    .line 84
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 85
    :goto_9
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v5

    .line 86
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->f:Ljava/lang/String;

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 87
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_a

    :cond_17
    const/4 v11, 0x0

    .line 88
    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x2

    if-lt v5, v10, :cond_18

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v8

    invoke-static {v8, v9, v11}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v7

    invoke-static {v7, v8, v11}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_18
    :goto_a
    move-object v8, v2

    move-object v2, v1

    goto/16 :goto_17

    :cond_19
    const/4 v8, 0x3

    if-ne v3, v8, :cond_2e

    .line 92
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v3

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v8

    const/4 v9, -0x4

    if-ne v8, v9, :cond_1a

    goto/16 :goto_e

    .line 94
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v8

    const/4 v9, -0x3

    if-ne v8, v9, :cond_20

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_1c

    .line 96
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const-string v11, "application/vnd.android.package-archive"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const-string v9, "fix_ui_thread_parser_apk_file"

    const/4 v11, 0x1

    .line 97
    invoke-virtual {v6, v9, v11}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v9

    xor-int/2addr v9, v11

    .line 98
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-static {v11, v3, v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, "tt_appdownloader_notification_install_finished_open"

    .line 99
    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v9

    const-string v11, "tt_appdownloader_notification_download_open"

    .line 100
    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v11

    goto :goto_b

    :cond_1b
    const-string v9, "tt_appdownloader_notification_download_complete_with_install"

    .line 101
    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v9

    const-string v11, "tt_appdownloader_notification_download_install"

    .line 102
    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v11

    goto :goto_b

    :cond_1c
    const-string v9, "tt_appdownloader_notification_download_complete_without_install"

    .line 103
    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v9

    .line 104
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/ss/android/socialbase/downloader/downloader/d;->m(I)Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object v11

    if-eqz v11, :cond_1d

    const-string v9, "tt_appdownloader_notification_download_complete_open"

    .line 105
    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v9

    :cond_1d
    const/4 v11, 0x0

    .line 106
    :goto_b
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-virtual {v4, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v11, :cond_1e

    .line 108
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_1e
    invoke-virtual {v6, v14}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1f

    .line 110
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v11

    .line 111
    invoke-virtual {v13, v11, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->o()I

    move-result v11

    const/16 v12, 0x8

    .line 113
    invoke-virtual {v13, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_c

    :cond_1f
    const/16 v12, 0x8

    .line 114
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v11

    .line 115
    invoke-virtual {v13, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_c
    const/4 v15, 0x0

    move-object/from16 v24, v9

    move-object v9, v2

    move-object v2, v8

    move-object/from16 v8, v24

    goto/16 :goto_12

    :cond_20
    move-object v8, v2

    move-object v9, v8

    :cond_21
    :goto_d
    const/4 v15, 0x0

    goto/16 :goto_12

    .line 116
    :cond_22
    :goto_e
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_24

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_24

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/f;->i(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_23

    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/f;->h(Ljava/lang/Throwable;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 119
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_24
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->o()I

    move-result v8

    const/16 v9, 0x8

    .line 122
    invoke-virtual {v13, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v1, :cond_25

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v8

    const/16 v9, 0x3ee

    if-ne v8, v9, :cond_25

    const-string v8, "tt_appdownloader_notification_download_space_failed"

    .line 124
    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 125
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    .line 126
    :cond_25
    invoke-direct {v0, v1, v6, v3}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v8

    if-eqz v8, :cond_28

    if-eqz v3, :cond_26

    .line 127
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v8, 0x1

    goto :goto_f

    :cond_26
    const/4 v8, 0x0

    :goto_f
    if-eqz v8, :cond_27

    const-string v8, "tt_appdownloader_notification_download_waiting_wifi"

    .line 128
    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    goto :goto_10

    :cond_27
    const-string v8, "tt_appdownloader_notification_download_waiting_net"

    .line 129
    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 130
    :goto_10
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_28
    const-string v8, "tt_appdownloader_notification_download_failed"

    .line 131
    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 132
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_11
    const-string v9, "tt_appdownloader_notification_download_restart"

    .line 133
    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v9

    .line 134
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v11

    const/16 v15, 0x8

    .line 136
    invoke-virtual {v13, v11, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v11

    const/4 v15, 0x2

    if-lt v11, v15, :cond_21

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v11

    const/4 v15, -0x1

    if-ne v11, v15, :cond_21

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/f;->i(Ljava/lang/Throwable;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 140
    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/i/f;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v8

    if-eqz v8, :cond_29

    const-string v8, "tt_appdownloader_notification_no_wifi_and_in_net"

    .line 141
    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 142
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v9

    .line 144
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_d

    :cond_29
    const-string v8, "tt_appdownloader_notification_no_internet_error"

    .line 145
    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 146
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d

    .line 147
    :cond_2a
    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/f;->h(Ljava/lang/Throwable;)Z

    move-result v11

    if-eqz v11, :cond_21

    const-string v8, "tt_appdownloader_notification_insufficient_space_error"

    .line 148
    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v8

    .line 149
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v22

    sub-long v16, v16, v22

    invoke-static/range {v16 .. v17}, Lcom/ss/android/socialbase/appdownloader/c;->b(J)Ljava/lang/String;

    move-result-object v16

    const/4 v15, 0x0

    aput-object v16, v12, v15

    invoke-virtual {v11, v8, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 150
    :goto_12
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v11

    const/16 v12, 0x8

    .line 151
    invoke-virtual {v13, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v11

    .line 153
    invoke-virtual {v13, v11, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 154
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v11

    .line 155
    invoke-virtual {v13, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 156
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_2d

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2d

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/f;->i(Ljava/lang/Throwable;)Z

    move-result v10

    if-nez v10, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/i/f;->h(Ljava/lang/Throwable;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 159
    :cond_2b
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v5

    const/4 v10, 0x0

    .line 160
    invoke-virtual {v13, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 161
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v5

    const/16 v11, 0x8

    .line 162
    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 163
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v5

    .line 164
    invoke-virtual {v13, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 165
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v5

    .line 166
    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/i/f;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 167
    invoke-virtual {v13, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Lcom/ss/android/socialbase/appdownloader/c;->a(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_2c
    const/16 v1, 0x8

    .line 170
    invoke-virtual {v13, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2d
    :goto_13
    move-object v3, v9

    goto/16 :goto_17

    :cond_2e
    move-object v3, v2

    move-object v8, v3

    goto/16 :goto_17

    .line 171
    :cond_2f
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    if-ne v3, v1, :cond_31

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_30

    const-string v1, "tt_appdownloader_notification_waiting_download_complete_handler"

    .line 174
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v1

    goto :goto_15

    :cond_30
    const-string v1, "tt_appdownloader_notification_downloading"

    .line 175
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v1

    goto :goto_15

    :cond_31
    const-string v1, "tt_appdownloader_notification_prepare"

    .line 176
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v1

    .line 177
    :goto_15
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "tt_appdownloader_notification_download_pause"

    .line 178
    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/i;->b(Ljava/lang/String;)I

    move-result v3

    .line 179
    iget-object v7, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-direct {v0, v5}, Lcom/ss/android/socialbase/appdownloader/e/a;->a(I)I

    move-result v5

    const/4 v7, 0x0

    .line 181
    invoke-virtual {v13, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 182
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->i()I

    move-result v5

    const/16 v8, 0x8

    .line 183
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 184
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->j()I

    move-result v5

    .line 185
    invoke-virtual {v13, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 186
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v5

    .line 187
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e/a;->f:Ljava/lang/String;

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 188
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_16

    .line 189
    :cond_32
    invoke-virtual {v13, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    :goto_16
    invoke-virtual {v6, v10}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-lt v7, v9, :cond_33

    .line 191
    invoke-virtual {v13, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_33
    move-object v8, v1

    .line 192
    :goto_17
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->n()I

    move-result v1

    .line 193
    invoke-virtual {v13, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->p()I

    move-result v1

    .line 195
    invoke-virtual {v13, v1, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 196
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->o()I

    move-result v1

    .line 197
    invoke-virtual {v13, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->q()I

    move-result v1

    .line 199
    invoke-virtual {v13, v1, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 200
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->k()I

    move-result v1

    .line 201
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/16 v2, 0x8

    .line 202
    invoke-virtual {v13, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_18

    .line 203
    :cond_34
    invoke-virtual {v13, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    :goto_18
    invoke-virtual {v6, v14}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 205
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "notification_ongoing"

    const/4 v8, 0x0

    .line 206
    invoke-virtual {v6, v1, v8}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_35

    .line 207
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    goto :goto_1a

    .line 208
    :cond_35
    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_19

    :cond_36
    const/4 v8, 0x0

    :goto_19
    const/4 v1, 0x0

    .line 209
    :goto_1a
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    if-eqz v1, :cond_37

    .line 210
    iget v1, v3, Landroid/app/Notification;->flags:I

    const/4 v4, 0x2

    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 211
    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Z)V

    goto :goto_1b

    .line 212
    :cond_37
    invoke-virtual {v0, v8}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Z)V

    .line 213
    :goto_1b
    iput-object v13, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v3
.end method

.method private j()Landroid/widget/RemoteViews;
    .locals 5

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->a()I

    move-result v0

    .line 2
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->f()I

    move-result v0

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e;->r()I

    move-result v2

    const-string v3, "setBackgroundColor"

    .line 7
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    .line 8
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 9
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v1
.end method

.method private k()Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->k()Lcom/ss/android/socialbase/appdownloader/c/m;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->k()Lcom/ss/android/socialbase/appdownloader/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/ss/android/socialbase/appdownloader/c/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 9
    :catch_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/e/a;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/a;->a:Landroid/app/Notification;

    .line 7
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Landroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/a;->f:Ljava/lang/String;

    return-void
.end method
