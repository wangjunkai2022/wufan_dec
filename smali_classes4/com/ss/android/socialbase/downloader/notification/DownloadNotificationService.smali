.class public Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;
.super Landroid/app/Service;
.source "DownloadNotificationService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:Z

.field private static e:Z

.field private static volatile f:J

.field private static volatile g:J

.field private static h:Z

.field private static i:J


# instance fields
.field private j:Lcom/ss/android/socialbase/downloader/h/g;

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    .line 3
    sput v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    const-wide/16 v0, 0x384

    .line 6
    sput-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;)Lcom/ss/android/socialbase/downloader/h/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Lcom/ss/android/socialbase/downloader/h/g;

    return-object p0
.end method

.method private a(Landroid/app/NotificationManager;I)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 27
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 29
    invoke-direct {p0, p1, p2, v1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 12
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    move-wide v0, v2

    :cond_1
    const-wide/16 v4, 0x4e20

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    move-wide v0, v4

    .line 16
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    sput-wide v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->g:J

    sput-wide v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Lcom/ss/android/socialbase/downloader/h/g;

    if-eqz v2, :cond_4

    .line 19
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    monitor-enter v2

    .line 20
    :try_start_1
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->k:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Lcom/ss/android/socialbase/downloader/h/g;

    new-instance v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;-><init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V

    invoke-virtual {p3, v2, v0, v1}, Lcom/ss/android/socialbase/downloader/h/g;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 23
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 24
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Lcom/ss/android/socialbase/downloader/h/g;

    if-eqz v1, :cond_2

    .line 8
    new-instance v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$1;-><init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/h/g;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 4
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->h:Z

    return v0
.end method

.method private a(ILandroid/app/Notification;)Z
    .locals 3

    .line 31
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 32
    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v0, p1, :cond_5

    sget v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    return v1

    .line 33
    :cond_2
    sget-boolean p1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    if-eqz p1, :cond_3

    .line 34
    iget p1, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    return v1

    .line 35
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_4

    .line 36
    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method static synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->g:J

    return-wide v0
.end method

.method private b(Landroid/app/NotificationManager;I)V
    .locals 9

    .line 25
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v0, p2, :cond_1

    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    goto/16 :goto_9

    :cond_1
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_2

    .line 27
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    const/4 v0, 0x0

    goto :goto_1

    .line 28
    :cond_2
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    const/4 v0, 0x1

    .line 29
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->c(I)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v3

    .line 30
    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/downloader/m;->b()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, ", isIndependentProcess = "

    if-nez v4, :cond_3

    .line 31
    :try_start_2
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    .line 32
    sget-object v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to stopForeground when is not Foreground, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_3
    sget-object v4, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCancel, ========== stopForeground id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-interface {v3, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_2
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    nop

    .line 37
    :goto_3
    sget-boolean v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d:Z

    if-nez v3, :cond_4

    return-void

    .line 38
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/notification/b;->b()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 39
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_4
    if-ltz v5, :cond_7

    .line 40
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/socialbase/downloader/notification/a;

    if-eqz v6, :cond_6

    .line 41
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v7

    if-eq v7, p2, :cond_6

    .line 42
    sget v8, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v7, v8, :cond_6

    sget v8, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-eq v7, v8, :cond_6

    .line 43
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/notification/a;->i()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 44
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(I)I

    move-result v7

    if-ne v7, v1, :cond_5

    .line 45
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->c()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-ne v7, v0, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_7
    move-object v6, v4

    :goto_6
    if-eqz v6, :cond_9

    .line 46
    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 47
    :try_start_5
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 48
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    :goto_7
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getStatus(I)I

    move-result p1

    if-ne p1, v1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    .line 50
    :goto_8
    sget-object p1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancel, updateNotification id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6, v4, v1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catchall_4
    :cond_9
    :goto_9
    return-void
.end method

.method private b(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 5

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(ILandroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    sget v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-nez v3, :cond_1

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    sget v3, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_7

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ss/android/socialbase/downloader/downloader/d;->c(I)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/m;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/m;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 11
    sget-object v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doNotify, startForeground, ======== id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isIndependentProcess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 12
    sput p2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    goto :goto_3

    .line 13
    :cond_3
    sput p2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    .line 14
    :goto_3
    invoke-interface {v1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(ILandroid/app/Notification;)V

    goto :goto_4

    .line 15
    :cond_4
    sget-object v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNotify: canStartForeground = true, but proxy can not startForeground, isIndependentProcess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 17
    :cond_5
    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-eq v0, p2, :cond_6

    sget v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v0, p2, :cond_7

    .line 18
    :cond_6
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    if-eqz v0, :cond_7

    .line 19
    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b(Landroid/app/NotificationManager;I)V

    .line 21
    :cond_7
    :goto_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    sget-wide v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_8

    .line 23
    sput-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->f:J

    .line 24
    :cond_8
    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    return-wide v0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Lcom/ss/android/socialbase/downloader/h/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/h/g;

    const-string v1, "DownloaderNotifyThread"

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/h/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Lcom/ss/android/socialbase/downloader/h/g;

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/h/g;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->d()V

    .line 3
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "download_service_foreground"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    if-ne v1, v3, :cond_1

    .line 6
    :cond_0
    sget v5, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    if-ne v5, v4, :cond_1

    .line 7
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->b:I

    :cond_1
    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    if-ne v1, v3, :cond_3

    .line 8
    :cond_2
    sget v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    if-ne v1, v4, :cond_3

    .line 9
    sput v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->c:I

    :cond_3
    const-string v1, "non_going_notification_foreground"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->e:Z

    const-string v1, "notify_too_fast"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->h:Z

    const-string v1, "notification_time_window"

    const-wide/16 v2, 0x384

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_4

    const-wide/16 v4, 0x4b0

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    .line 13
    :cond_4
    sput-wide v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->i:J

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Lcom/ss/android/socialbase/downloader/h/g;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/h/g;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->j:Lcom/ss/android/socialbase/downloader/h/g;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1
.end method
