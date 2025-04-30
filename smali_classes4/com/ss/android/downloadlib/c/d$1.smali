.class Lcom/ss/android/downloadlib/c/d$1;
.super Ljava/lang/Object;
.source "AppDownloadLaunchResumeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/c/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/c/d;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/c/d$1;->a:Lcom/ss/android/downloadlib/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->b()V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadad/api/a/b;

    .line 4
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    const-string v4, "notification_opt_2"

    .line 6
    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v1}, Lcom/ss/android/downloadlib/g/l;->b(Lcom/ss/android/downloadad/api/a/b;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/downloadlib/g/l;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "restart_notify_open_app_count"

    .line 9
    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSpIntVal(Ljava/lang/String;)I

    move-result v6

    const-string v7, "noti_open_restart_times"

    .line 10
    invoke-virtual {v3, v7, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 11
    invoke-static {}, Lcom/ss/android/downloadlib/c/h;->a()Lcom/ss/android/downloadlib/c/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/downloadlib/c/h;->e(Lcom/ss/android/downloadad/api/a/b;)V

    add-int/lit8 v6, v6, 0x1

    .line 12
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSpValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v4

    const/4 v6, -0x2

    if-ne v4, v6, :cond_5

    const-string v4, "restart_notify_continue_count"

    .line 14
    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSpIntVal(Ljava/lang/String;)I

    move-result v6

    const-string v7, "noti_continue_restart_times"

    .line 15
    invoke-virtual {v3, v7, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 16
    invoke-static {}, Lcom/ss/android/downloadlib/c/h;->a()Lcom/ss/android/downloadlib/c/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/downloadlib/c/h;->a(Lcom/ss/android/downloadad/api/a/b;)V

    add-int/lit8 v6, v6, 0x1

    .line 17
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSpValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_5
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v4

    const/4 v6, -0x3

    if-ne v4, v6, :cond_0

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/ss/android/downloadlib/g/l;->b(Lcom/ss/android/downloadad/api/a/b;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "restart_notify_install_count"

    .line 19
    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSpIntVal(Ljava/lang/String;)I

    move-result v6

    const-string v7, "noti_install_restart_times"

    .line 20
    invoke-virtual {v3, v7, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 21
    invoke-static {}, Lcom/ss/android/downloadlib/c/h;->a()Lcom/ss/android/downloadlib/c/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ss/android/downloadlib/c/h;->c(Lcom/ss/android/downloadad/api/a/b;)V

    add-int/lit8 v6, v6, 0x1

    .line 22
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSpValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
