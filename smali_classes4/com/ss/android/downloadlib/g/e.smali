.class public Lcom/ss/android/downloadlib/g/e;
.super Ljava/lang/Object;
.source "DownloadSettingUtils.java"


# direct methods
.method public static a(I)D
    .locals 3

    .line 14
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_min_install_size"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;)I
    .locals 2
    .param p0    # Lcom/ss/android/socialbase/downloader/g/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "external_storage_permission_path_type"

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->s()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->s()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/ss/android/downloadlib/g/e;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->r()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->r()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ss/android/download/api/download/DownloadModel;)Lorg/json/JSONObject;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/g/e;->a()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadSettings()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)J
    .locals 3

    .line 4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "storage_min_size"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/socialbase/downloader/g/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/download/api/download/DownloadModel;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .locals 2

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "fix_notification_anr"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lcom/ss/android/downloadad/api/a/a;)Z
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_reserve_on_wifi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/g/a;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "kllk_need_rename_apk"

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static c(Lcom/ss/android/download/api/download/DownloadModel;)I
    .locals 0
    .param p0    # Lcom/ss/android/download/api/download/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/socialbase/downloader/g/a;)I

    move-result p0

    return p0
.end method

.method public static c(I)J
    .locals 3

    .line 3
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_fetch_apk_head_time_out"

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()Z
    .locals 2

    .line 4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "is_enable_start_install_again"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static d()J
    .locals 5

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "start_install_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/32 v0, 0x493e0

    :cond_0
    return-wide v0
.end method

.method public static d(I)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_fetch_apk_switch"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e()J
    .locals 5

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "next_install_min_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x2710

    :cond_0
    return-wide v0
.end method

.method public static e(I)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_space_before_download_switch"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_space_switch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static g(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_app_cache_dir"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
