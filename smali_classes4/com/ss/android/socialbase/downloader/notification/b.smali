.class public Lcom/ss/android/socialbase/downloader/notification/b;
.super Ljava/lang/Object;
.source "DownloadNotificationManager.java"


# static fields
.field private static volatile c:Lcom/ss/android/socialbase/downloader/notification/b;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/notification/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 2
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->a:J

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->d:Ljava/util/Set;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/notification/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/notification/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/notification/b;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/notification/b;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/notification/b;->c:Lcom/ss/android/socialbase/downloader/notification/b;

    return-object v0
.end method

.method static b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method static c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadOverStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getNotificationVisibility()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/notification/b;->b(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method public a(IILandroid/app/Notification;)V
    .locals 9

    .line 15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Map;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    .line 20
    monitor-exit v1

    return-void

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/b;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 23
    :cond_2
    :goto_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY"

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DOWNLOAD_NOTIFICATION_EXTRA_STATUS"

    .line 25
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    .line 26
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA"

    .line 27
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->x()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadOverStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 12
    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setNotificationVisibility(I)V

    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/notification/a;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/notification/a;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/notification/b;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/notification/a;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/notification/a;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotificationId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;)V

    .line 5
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(I)Lcom/ss/android/socialbase/downloader/notification/a;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/notification/a;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->d(I)Lcom/ss/android/socialbase/downloader/notification/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/b;->c(I)V

    :cond_0
    return-void
.end method
