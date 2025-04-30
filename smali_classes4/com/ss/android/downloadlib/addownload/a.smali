.class public Lcom/ss/android/downloadlib/addownload/a;
.super Ljava/lang/Object;
.source "AdDelayTaskManager.java"

# interfaces
.implements Lcom/ss/android/downloadlib/g/m$a;


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Lcom/ss/android/downloadlib/addownload/a;


# instance fields
.field private c:Lcom/ss/android/downloadlib/g/m;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/g/m;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/g/m;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/g/m$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a;->c:Lcom/ss/android/downloadlib/g/m;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/a;->b:Lcom/ss/android/downloadlib/addownload/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/addownload/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/addownload/a;->b:Lcom/ss/android/downloadlib/addownload/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/addownload/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/a;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/a;->b:Lcom/ss/android/downloadlib/addownload/a;

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
    sget-object v0, Lcom/ss/android/downloadlib/addownload/a;->b:Lcom/ss/android/downloadlib/addownload/a;

    return-object v0
.end method

.method private a(Lcom/ss/android/downloadlib/addownload/b/a;I)V
    .locals 5

    .line 32
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->k()Lcom/ss/android/download/api/config/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->k()Lcom/ss/android/download/api/config/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/download/api/config/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne v0, p2, :cond_4

    .line 34
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object p2

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, -0x1

    :try_start_0
    const-string v2, "ttdownloader_type"

    const-string v3, "miui_silent_install"

    .line 36
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ttdownloader_message"

    if-eqz v2, :cond_3

    :try_start_1
    const-string v2, "miui_silent_install_succeed"

    .line 38
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const-string v2, "miui_silent_install_failed: has started service"

    .line 39
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x5

    .line 40
    :catch_0
    :goto_0
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->f()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2, v1}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "embeded_ad"

    const-string v3, "ah_result"

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    .line 43
    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 44
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string p1, "delayinstall_installed"

    invoke-virtual {p2, p1, v0, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;J)V

    return-void

    .line 45
    :cond_5
    iget-object p2, p1, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/ss/android/downloadlib/g/l;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 46
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string p1, "delayinstall_file_lost"

    invoke-virtual {p2, p1, v0, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;J)V

    return-void

    .line 47
    :cond_6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a/a;->a()Lcom/ss/android/downloadlib/addownload/a/a;

    move-result-object p2

    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 48
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string p1, "delayinstall_conflict_with_back_dialog"

    invoke-virtual {p2, p1, v0, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;J)V

    return-void

    .line 49
    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string v2, "delayinstall_install_start"

    invoke-virtual {p2, v2, v0, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;J)V

    .line 50
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    long-to-int p1, v0

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;I)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/downloadlib/addownload/b/a;

    .line 53
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/ss/android/downloadlib/addownload/a;->a(Lcom/ss/android/downloadlib/addownload/b/a;I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1    # Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 7
    new-instance v12, Lcom/ss/android/downloadlib/addownload/b/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    int-to-long v2, v1

    move-object v1, v12

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/downloadlib/addownload/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "back_miui_silent_install"

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc8

    if-nez v2, :cond_2

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->l()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.miui.securitycore"

    const-string v5, "com.miui.enterprise.service.EntInstallService"

    invoke-static {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/i/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string v4, "extra_silent_install_succeed"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/a;->c:Lcom/ss/android/downloadlib/g/m;

    invoke-virtual {v2, v3, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    .line 14
    iput v3, v2, Landroid/os/Message;->arg1:I

    const v3, 0xea60

    const-string v4, "check_silent_install_interval"

    .line 15
    invoke-virtual {v1, v4, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 16
    iget-object v3, v0, Lcom/ss/android/downloadlib/addownload/a;->c:Lcom/ss/android/downloadlib/g/m;

    int-to-long v4, v1

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 17
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    iget-wide v4, v12, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v1

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, -0x1

    :try_start_0
    const-string v5, "ttdownloader_type"

    const-string v6, "miui_silent_install"

    .line 19
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ttdownloader_message"

    const-string v6, "miui_silent_install_failed: has not started service"

    .line 20
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x5

    .line 21
    :catch_0
    new-instance v5, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->f()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7, v5, v4}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 23
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v4

    const-string v5, "embeded_ad"

    const-string v6, "ah_result"

    invoke-virtual {v4, v5, v6, v2, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    .line 24
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/g/e;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 25
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v0, Lcom/ss/android/downloadlib/addownload/a;->d:J

    sub-long/2addr v1, v4

    .line 26
    invoke-static {}, Lcom/ss/android/downloadlib/g/e;->d()J

    move-result-wide v4

    .line 27
    invoke-static {}, Lcom/ss/android/downloadlib/g/e;->e()J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-gez v8, :cond_4

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/g/e;->e()J

    move-result-wide v6

    sub-long/2addr v6, v1

    add-long/2addr v4, v6

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v6

    iput-wide v1, v0, Lcom/ss/android/downloadlib/addownload/a;->d:J

    goto :goto_0

    .line 30
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/downloadlib/addownload/a;->d:J

    .line 31
    :goto_0
    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/a;->c:Lcom/ss/android/downloadlib/g/m;

    invoke-virtual {v1, v3, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
