.class public Lcom/ss/android/downloadlib/addownload/c/b;
.super Ljava/lang/Object;
.source "CleanSpaceTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "cleanspace_task"

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    .line 4
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/g/e;->a(I)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    .line 5
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    sub-long v9, v1, v3

    const-wide/16 v1, 0x0

    .line 6
    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/g/l;->a(J)J

    move-result-wide v3

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->l()Lcom/ss/android/download/api/config/m;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 8
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->l()Lcom/ss/android/download/api/config/m;

    move-result-object v5

    invoke-interface {v5}, Lcom/ss/android/download/api/config/m;->e()V

    .line 9
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/c;->a()V

    .line 10
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/c;->b()V

    .line 11
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v5

    invoke-static {v5}, Lcom/ss/android/downloadlib/g/e;->g(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ss/android/downloadlib/addownload/c/c;->a(Landroid/content/Context;)V

    .line 13
    :cond_3
    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/g/l;->a(J)J

    move-result-wide v1

    const/4 v11, 0x1

    const/4 v5, 0x0

    cmp-long v6, v1, v9

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_5

    const-string v5, "1"

    .line 14
    invoke-virtual {v0, v5}, Lcom/ss/android/downloadad/api/a/b;->l(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/api/a/b;)V

    .line 16
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "quite_clean_size"

    sub-long/2addr v1, v3

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 19
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "cleanspace_download_after_quite_clean"

    invoke-virtual {v1, v2, v5, v0}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    .line 20
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restart(I)V

    goto :goto_3

    .line 21
    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->l()Lcom/ss/android/download/api/config/m;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {v0, v5}, Lcom/ss/android/downloadad/api/a/b;->d(Z)V

    .line 23
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/d;->a()Lcom/ss/android/downloadlib/addownload/c/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/a/b;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ss/android/downloadlib/addownload/c/b$1;

    invoke-direct {v3, p0, v0}, Lcom/ss/android/downloadlib/addownload/c/b$1;-><init>(Lcom/ss/android/downloadlib/addownload/c/b;Lcom/ss/android/downloadad/api/a/b;)V

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/c/d;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/c/e;)V

    .line 24
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->l()Lcom/ss/android/download/api/config/m;

    move-result-object v5

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v6

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/c/b;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/ss/android/download/api/config/m;->a(ILjava/lang/String;ZJ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {v0, v11}, Lcom/ss/android/downloadad/api/a/b;->e(Z)V

    goto :goto_3

    .line 26
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "show_dialog_result"

    const/4 v3, 0x3

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 28
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 29
    :goto_2
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v2

    const-string v3, "cleanspace_window_show"

    invoke-virtual {v2, v3, v1, v0}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    :cond_7
    :goto_3
    return-void
.end method
