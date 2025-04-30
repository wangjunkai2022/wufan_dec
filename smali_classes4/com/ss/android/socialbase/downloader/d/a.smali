.class public Lcom/ss/android/socialbase/downloader/d/a;
.super Ljava/lang/Object;
.source "DownloadMonitorHelper.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 35
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    .line 37
    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)Lorg/json/JSONObject;
    .locals 10

    const-string v0, "setting_tag"

    const/4 v1, 0x0

    .line 39
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->k()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 41
    :try_start_2
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/q;->b()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/q;->a()Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/q;->c()I

    move-result v1

    goto :goto_0

    :cond_0
    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 45
    instance-of v8, p2, Lcom/ss/android/socialbase/downloader/exception/g;

    if-eqz v8, :cond_1

    .line 46
    move-object v8, p2

    check-cast v8, Lcom/ss/android/socialbase/downloader/exception/g;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/exception/g;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    const-string v9, "event_page"

    .line 47
    invoke-virtual {v2, v9, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "app_id"

    .line 48
    invoke-virtual {v2, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_id"

    .line 49
    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_id_postfix"

    .line 50
    invoke-virtual {v2, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "update_version"

    .line 51
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "download_status"

    .line 52
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_15

    .line 53
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "download_id"

    .line 54
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "name"

    .line 55
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "url"

    .line 56
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "save_path"

    .line 57
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "download_time"

    .line 58
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "cur_bytes"

    .line 59
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "total_bytes"

    .line 60
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "network_quality"

    .line 61
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getNetworkQuality()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "only_wifi"

    .line 62
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "need_https_degrade"

    .line 63
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedHttpsToHttpRetry()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "https_degrade_retry_used"

    .line 64
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isHttpsToHttpRetryUsed()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_4

    :cond_4
    const/4 p3, 0x0

    :goto_4
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "md5"

    .line 65
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    move-object p3, v3

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object p3

    :goto_5
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "chunk_count"

    .line 66
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "is_force"

    .line 67
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForce()Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p3, 0x1

    goto :goto_6

    :cond_6
    const/4 p3, 0x0

    :goto_6
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "retry_count"

    .line 68
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "cur_retry_time"

    .line 69
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTime()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "need_retry_delay"

    .line 70
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedRetryDelay()Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_7

    :cond_7
    const/4 p3, 0x0

    :goto_7
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "need_reuse_first_connection"

    .line 71
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseFirstConnection()Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 p3, 0x1

    goto :goto_8

    :cond_8
    const/4 p3, 0x0

    :goto_8
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "default_http_service_backup"

    .line 72
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result p3

    if-eqz p3, :cond_9

    const/4 p3, 0x1

    goto :goto_9

    :cond_9
    const/4 p3, 0x0

    :goto_9
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "retry_delay_status"

    .line 73
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayStatus()Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "backup_url_used"

    .line 74
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isBackUpUrlUsed()Z

    move-result p3

    if-eqz p3, :cond_a

    const/4 p3, 0x1

    goto :goto_a

    :cond_a
    const/4 p3, 0x0

    :goto_a
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "download_byte_error_retry_status"

    .line 75
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "forbidden_handler_status"

    .line 76
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAsyncHandleStatus()Lcom/ss/android/socialbase/downloader/constants/a;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "need_independent_process"

    .line 77
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedIndependentProcess()Z

    move-result p3

    if-eqz p3, :cond_b

    const/4 p3, 0x1

    goto :goto_b

    :cond_b
    const/4 p3, 0x0

    :goto_b
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "head_connection_error_msg"

    .line 78
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHeadConnectionException()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHeadConnectionException()Ljava/lang/String;

    move-result-object p3

    goto :goto_c

    :cond_c
    move-object p3, v3

    :goto_c
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "extra"

    .line 79
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p3

    goto :goto_d

    :cond_d
    move-object p3, v3

    :goto_d
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "add_listener_to_same_task"

    .line 80
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAddListenerToSameTask()Z

    move-result p3

    if-eqz p3, :cond_e

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "backup_url_count"

    .line 81
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_f

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_f

    :cond_f
    const/4 p3, 0x0

    :goto_f
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "cur_backup_url_index"

    .line 82
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_10

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBackUpUrlIndex()I

    move-result p3

    goto :goto_10

    :cond_10
    const/4 p3, -0x1

    :goto_10
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "forbidden_urls"

    .line 83
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getForbiddenBackupUrls()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_11

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getForbiddenBackupUrls()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_11

    :cond_11
    move-object p3, v3

    :goto_11
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "task_id"

    .line 84
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    move-object p3, v3

    goto :goto_12

    :cond_12
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object p3

    :goto_12
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :try_start_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 87
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    .line 90
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_14

    .line 92
    :try_start_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_13

    :catchall_0
    move-exception v0

    .line 93
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    :cond_13
    move-object p0, v3

    move-object p1, p0

    move-object p3, p1

    :cond_14
    :goto_13
    const-string v0, "url_host"

    .line 94
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url_path"

    .line 95
    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url_last_path_segment"

    .line 96
    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_14

    :catchall_1
    move-exception p0

    .line 97
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_14
    const-string p0, "error_code"

    if-eqz p2, :cond_16

    .line 98
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v4

    :cond_16
    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "error_msg"

    if-eqz p2, :cond_17

    .line 99
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    :cond_17
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "request_log"

    .line 100
    invoke-virtual {v2, p0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_16

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_15

    :catch_1
    move-exception p0

    .line 101
    :goto_15
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v1

    :goto_16
    return-object v2
.end method

.method private static a(ILorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, -0x5

    if-eq p0, v0, :cond_7

    const/4 v0, -0x4

    if-eq p0, v0, :cond_6

    const/4 v0, -0x3

    if-eq p0, v0, :cond_4

    const/4 p2, -0x2

    if-eq p0, p2, :cond_3

    if-eqz p0, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x6

    if-eq p0, p2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "download_first_start"

    goto :goto_0

    :cond_1
    const-string p0, "download_start"

    goto :goto_0

    :cond_2
    const-string p0, "download_create"

    goto :goto_0

    :cond_3
    const-string p0, "download_pause"

    goto :goto_0

    .line 32
    :cond_4
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSpeed()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_5

    const-string p0, "download_speed"

    .line 33
    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    const-string p0, "download_success"

    goto :goto_0

    :cond_6
    const-string p0, "download_cancel"

    goto :goto_0

    :cond_7
    const-string p0, "download_uncomplete"

    :goto_0
    const-string p2, "status"

    .line 34
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .locals 3

    if-eqz p0, :cond_3

    .line 24
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedSDKMonitor()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMonitorScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMonitorScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_2

    const-string p1, "status"

    .line 27
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "download_failed"

    .line 28
    invoke-interface {p0, p1, v0, v2, v2}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {p3, v0, p1}, Lcom/ss/android/socialbase/downloader/d/a;->a(ILorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    const-string p1, "download_common"

    .line 30
    invoke-interface {p0, p1, v0, v2, v2}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 19
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/depend/x;->b()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "default"

    .line 21
    :cond_1
    invoke-static {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 22
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    :cond_2
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/x;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V
    .locals 23

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move/from16 v15, p11

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    move-wide/from16 v20, p16

    const-string v0, "monitor_download_io"

    move-object/from16 v1, p0

    .line 144
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const-string v0, "download_io"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v22, 0x0

    .line 145
    invoke-static/range {v0 .. v22}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;ILcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;JJ)V
    .locals 23

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    const-string v0, "monitor_segment_io"

    move-object/from16 v1, p0

    .line 146
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const-string v0, "segment_io"

    const/4 v9, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    .line 147
    invoke-static/range {v0 .. v22}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;ILcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "segments_error"

    .line 193
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "segments"

    .line 194
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/f/i;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cur_bytes"

    .line 195
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "total_bytes"

    .line 196
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->P()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p0

    invoke-interface {p1, p0, v0, v1}, Lcom/ss/android/socialbase/downloader/d/c;->a(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v1

    .line 3
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isMonitorStatus(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraMonitorStatus()[I

    move-result-object v2

    .line 5
    invoke-static {v2, p2}, Lcom/ss/android/socialbase/downloader/d/a;->a([II)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 6
    instance-of v3, v1, Lcom/ss/android/socialbase/downloader/depend/c;

    if-eqz v3, :cond_2

    .line 7
    move-object v2, v1

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/depend/c;->a()[I

    move-result-object v2

    .line 8
    invoke-static {v2, p2}, Lcom/ss/android/socialbase/downloader/d/a;->a([II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    if-eqz v2, :cond_4

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDepend()Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 10
    invoke-interface {p0, v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/n;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_3
    :goto_0
    invoke-static {v1, v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 13
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object p0

    .line 14
    invoke-static {p0, v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/d/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 14
    .param p0    # Lcom/ss/android/socialbase/downloader/network/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v1, p0

    move-object/from16 v2, p7

    const-string v3, "setting_tag"

    if-nez p8, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v4

    const-string v0, "monitor_download_connect"

    const/4 v5, 0x0

    .line 103
    invoke-virtual {v4, v0, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v6

    if-gtz v6, :cond_1

    return-void

    .line 104
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    .line 105
    :try_start_0
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 106
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :goto_0
    instance-of v0, v1, Lcom/ss/android/socialbase/downloader/network/a;

    if-eqz v0, :cond_3

    .line 108
    move-object v0, v1

    check-cast v0, Lcom/ss/android/socialbase/downloader/network/a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/a;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, v8

    :goto_1
    const/16 v0, 0x190

    const/16 v9, 0xc8

    const-string v10, ""

    if-lt v7, v9, :cond_4

    if-lt v7, v0, :cond_8

    .line 109
    :cond_4
    :try_start_2
    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTime()I

    move-result v11

    if-eqz v11, :cond_6

    .line 110
    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHttpStatusCode()I

    move-result v11

    if-lt v11, v9, :cond_5

    if-lt v11, v0, :cond_6

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_8

    .line 111
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->c(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_7

    const/16 v7, 0x419

    goto :goto_2

    .line 112
    :cond_7
    :try_start_3
    invoke-static {v2, v10}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 113
    :try_start_4
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v7

    .line 114
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 115
    instance-of v9, v2, Lcom/ss/android/socialbase/downloader/exception/g;

    if-eqz v9, :cond_9

    .line 116
    check-cast v2, Lcom/ss/android/socialbase/downloader/exception/g;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/exception/g;->a()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_8
    :goto_2
    move-object v0, v8

    .line 117
    :cond_9
    :goto_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 119
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v12, :cond_a

    .line 122
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    :catchall_1
    :cond_a
    :try_start_6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 124
    :try_start_7
    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "url_host"

    .line 125
    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "host_ip"

    move-object/from16 v9, p2

    .line 126
    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "host_real_ip"

    .line 127
    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url_path"

    .line 128
    invoke-virtual {v5, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url_last_path_segment"

    .line 129
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "net_lib"

    move/from16 v2, p6

    .line 130
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "connect_type"

    move-object/from16 v2, p5

    .line 131
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status_code"

    .line 132
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "request_log"

    .line 133
    invoke-virtual {v5, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    const-string v1, "exception_msg_length"

    const/16 v2, 0x1f4

    .line 134
    invoke-virtual {v4, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "error_msg"

    .line 135
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v0, "connect_time"

    move-wide/from16 v1, p3

    .line 136
    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "pkg_name"

    .line 137
    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "name"

    .line 138
    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v0

    .line 139
    :try_start_8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_4
    const/4 v0, 0x1

    const-string v1, "download_connect"

    const/4 v2, 0x3

    if-eq v6, v0, :cond_c

    if-ne v6, v2, :cond_d

    .line 140
    :cond_c
    :try_start_9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 141
    invoke-interface {v0, v1, v5, v8, v8}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_d
    const/4 v0, 0x2

    if-eq v6, v0, :cond_e

    if-ne v6, v2, :cond_f

    .line 142
    :cond_e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->P()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2, v1, v5}, Lcom/ss/android/socialbase/downloader/d/c;->a(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_5
    return-void
.end method

.method private static a(Ljava/lang/String;ILcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-wide/from16 v4, p13

    const-string v6, "setting_tag"

    if-lez v1, :cond_12

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-gtz v9, :cond_0

    goto/16 :goto_9

    .line 148
    :cond_0
    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 149
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 151
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_1
    :goto_0
    if-eqz p8, :cond_2

    const/4 v14, 0x1

    :goto_1
    const/4 v15, 0x0

    goto :goto_3

    :cond_2
    if-eqz p9, :cond_3

    const/4 v14, 0x2

    goto :goto_1

    :cond_3
    if-eqz p10, :cond_5

    .line 154
    :try_start_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/ss/android/socialbase/downloader/i/f;->c(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_4

    const/16 v14, 0x419

    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual/range {p10 .. p10}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v14

    .line 156
    :goto_2
    invoke-virtual/range {p10 .. p10}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    .line 157
    :goto_3
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v16, ""

    const/16 v17, -0x1

    if-eqz v3, :cond_a

    .line 158
    instance-of v10, v3, Lcom/ss/android/socialbase/downloader/network/e;

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    const/4 v10, 0x1

    :goto_4
    const-string v12, "X-Cache"

    .line 159
    invoke-interface {v3, v12}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 160
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 161
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "hit"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    :cond_7
    const-string v12, "monitor_sla"

    const/4 v13, 0x1

    .line 162
    invoke-virtual {v2, v12, v13}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_8

    if-nez p8, :cond_8

    if-nez p9, :cond_8

    .line 163
    instance-of v12, v3, Lcom/ss/android/socialbase/downloader/network/a;

    if-eqz v12, :cond_8

    .line 164
    move-object v12, v3

    check-cast v12, Lcom/ss/android/socialbase/downloader/network/a;

    invoke-virtual {v12, v11, v13}, Lcom/ss/android/socialbase/downloader/network/a;->a(Lorg/json/JSONObject;Z)V

    .line 165
    :cond_8
    instance-of v12, v3, Lcom/ss/android/socialbase/downloader/network/a;

    if-eqz v12, :cond_9

    .line 166
    check-cast v3, Lcom/ss/android/socialbase/downloader/network/a;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/network/a;->f()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    move-wide/from16 v0, p11

    move-object/from16 v3, v16

    move/from16 v12, v17

    goto :goto_5

    :cond_a
    move-wide/from16 v0, p11

    move-object/from16 v3, v16

    const/4 v10, -0x1

    const/4 v12, -0x1

    :goto_5
    long-to-double v0, v0

    const-wide/high16 v16, 0x4130000000000000L    # 1048576.0

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v0, v16

    long-to-double v4, v4

    .line 168
    :try_start_3
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 p7, v0

    const-wide/16 v0, 0x1

    invoke-virtual {v13, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    long-to-double v0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v4, v0

    .line 169
    :try_start_4
    invoke-virtual {v2, v6}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "url_host"

    .line 170
    invoke-virtual {v11, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "host_ip"

    move-object/from16 v8, p5

    .line 171
    invoke-virtual {v11, v6, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "host_real_ip"

    move-object/from16 v8, p6

    .line 172
    invoke-virtual {v11, v6, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "url_path"

    .line 173
    invoke-virtual {v11, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "url_last_path_segment"

    .line 174
    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "net_lib"

    .line 175
    invoke-virtual {v11, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "hit_cdn_cache"

    .line 176
    invoke-virtual {v11, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "status_code"

    .line 177
    invoke-virtual {v11, v6, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "request_log"

    .line 178
    invoke-virtual {v11, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v15, :cond_b

    const-string v3, "exception_msg_length"

    const/16 v6, 0x1f4

    .line 179
    invoke-virtual {v2, v3, v6}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "error_msg"

    .line 180
    invoke-static {v15, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v2, "download_sec"

    .line 181
    invoke-virtual {v11, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "download_mb"

    move-wide/from16 v6, p7

    .line 182
    invoke-virtual {v11, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    cmpl-double v8, v0, v2

    if-lez v8, :cond_c

    const-string v2, "download_speed"

    div-double v0, v6, v0

    .line 183
    invoke-virtual {v11, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_c
    if-eqz p15, :cond_d

    const-string v0, "rw_read_time"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v1, p16

    long-to-double v1, v1

    .line 184
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    :try_start_5
    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "rw_write_time"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide/from16 v1, p18

    long-to-double v1, v1

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    :try_start_6
    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "rw_sync_time"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide/from16 v1, p20

    long-to-double v1, v1

    .line 186
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    :try_start_7
    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_d
    const-string v0, "pkg_name"

    .line 187
    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "name"

    .line 188
    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x3

    move/from16 v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    if-ne v1, v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v2, 0x2

    move-object/from16 v3, p0

    goto :goto_8

    .line 189
    :cond_f
    :goto_6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v2

    if-eqz v2, :cond_10

    const/4 v4, 0x0

    move-object/from16 v3, p0

    .line 190
    invoke-interface {v2, v3, v11, v4, v4}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_7

    :cond_10
    move-object/from16 v3, p0

    :goto_7
    const/4 v2, 0x2

    :goto_8
    if-eq v1, v2, :cond_11

    if-ne v1, v0, :cond_12

    .line 191
    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->P()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3, v11}, Lcom/ss/android/socialbase/downloader/d/c;->a(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_9
    return-void
.end method

.method private static a([II)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 16
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 18
    aget v2, p0, v1

    if-ne p1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
