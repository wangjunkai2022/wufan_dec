.class public Lcom/ss/android/downloadlib/addownload/l;
.super Ljava/lang/Object;
.source "ReverseWifiHelper.java"


# static fields
.field private static a:Lcom/ss/android/downloadlib/addownload/a/c;


# direct methods
.method public static a()Lcom/ss/android/downloadlib/addownload/a/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/l;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-object v0
.end method

.method public static a(Lcom/ss/android/downloadlib/addownload/a/c;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/ss/android/downloadlib/addownload/l;->a:Lcom/ss/android/downloadlib/addownload/a/c;

    return-void
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/downloadlib/addownload/d/c;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p0

    const-string p1, "tryReverseWifi nativeModel null"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p0

    const-string p1, "tryReverseWifi info null"

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 6
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->b(Lcom/ss/android/downloadad/api/a/a;)Z

    move-result v2

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "switch_status"

    if-eqz v2, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 8
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v5

    const-string v6, "pause_reserve_wifi_switch_status"

    invoke-virtual {v5, v6, v3, p0}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    if-nez v2, :cond_3

    return v0

    .line 11
    :cond_3
    invoke-static {p2}, Lcom/ss/android/downloadlib/addownload/l;->a(I)Z

    move-result p2

    if-nez p2, :cond_4

    return v0

    .line 12
    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/f;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v0

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->hasPauseReservedOnWifi()Z

    move-result p1

    if-nez p1, :cond_6

    .line 14
    new-instance p1, Lcom/ss/android/downloadlib/addownload/l$1;

    invoke-direct {p1, v1, p0, p3}, Lcom/ss/android/downloadlib/addownload/l$1;-><init>(ILcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/addownload/d/c;)V

    .line 15
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/l;->a(Lcom/ss/android/downloadlib/addownload/a/c;)V

    .line 16
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Lcom/ss/android/downloadad/api/a/a;)V

    return v4

    :cond_6
    return v0
.end method
