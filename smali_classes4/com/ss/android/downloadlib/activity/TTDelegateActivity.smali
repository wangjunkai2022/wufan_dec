.class public Lcom/ss/android/downloadlib/activity/TTDelegateActivity;
.super Landroid/app/Activity;
.source "TTDelegateActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static d:Lcom/ss/android/downloadlib/guide/install/a;


# instance fields
.field protected a:Landroid/content/Intent;

.field private b:Z

.field private c:Lcom/ss/android/downloadad/api/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    return-void
.end method

.method public static a(J)V
    .locals 3

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0xa

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "app_info_id"

    .line 29
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 30
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 31
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/api/a/a;)V
    .locals 3

    .line 14
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/api/a/a;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x4

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->b()J

    move-result-wide v1

    const-string p0, "model_id"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 18
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 19
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/ss/android/downloadad/api/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/ss/android/downloadad/api/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/api/a/a;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "positive_button_text"

    .line 46
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "negative_button_text"

    .line 48
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "message_text"

    .line 50
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :cond_2
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->b()J

    move-result-wide p0

    const-string p2, "model_id"

    invoke-virtual {v0, p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 52
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/api/a/a;Lcom/ss/android/downloadlib/guide/install/a;)V
    .locals 2

    .line 20
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/api/a/a;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10000000

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "type"

    const/16 v1, 0x9

    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    sput-object p1, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d:Lcom/ss/android/downloadlib/guide/install/a;

    .line 24
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/api/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/ss/android/downloadad/api/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x8

    .line 41
    invoke-static {p0, v0, p1, p2, p3}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/api/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void

    .line 83
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "open_url"

    .line 86
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 87
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "fix_app_link_flag"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x4000000

    .line 89
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const-string p1, "start_only_for_android"

    const/4 v0, 0x1

    .line 90
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 92
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void

    :goto_1
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0xc

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "package_name"

    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "model_id"

    .line 36
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "param"

    .line 37
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ext_json"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V
    .locals 2

    .line 8
    invoke-static {p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/api/a/a;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "type"

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "open_url"

    .line 11
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "permission_id_key"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "permission_content_key"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 11
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private b(J)V
    .locals 6

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/l;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "time_after_click"

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->T()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "click_download_size"

    .line 18
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string v1, "download_length"

    .line 19
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "download_percent"

    .line 20
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "download_apk_size"

    .line 21
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    const-string v1, "pause_reserve_wifi_dialog_show"

    invoke-virtual {p2, v1, v0, p1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    .line 24
    :cond_2
    new-instance p2, Lcom/ss/android/downloadlib/addownload/a/d$a;

    invoke-direct {p2, p0}, Lcom/ss/android/downloadlib/addownload/a/d$a;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Z)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object p2

    .line 26
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/l;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a()Lcom/ss/android/downloadlib/addownload/a/d;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b:Z

    .line 29
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c:Lcom/ss/android/downloadad/api/a/b;

    return-void
.end method

.method public static b(Lcom/ss/android/downloadad/api/a/a;)V
    .locals 2
    .param p0    # Lcom/ss/android/downloadad/api/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const-string v1, ""

    .line 7
    invoke-static {p0, v0, v1, v1, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/api/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/ss/android/downloadad/api/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/ss/android/downloadad/api/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x7

    .line 8
    invoke-static {p0, v0, p1, p2, p3}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/api/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/l;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void

    :cond_0
    const/high16 v0, 0x10000000

    .line 40
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "start_only_for_android"

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 43
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void

    :goto_1
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/ss/android/downloadad/api/a/a;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "type"

    const/16 v1, 0xb

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "package_name"

    .line 4
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;-><init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Ljava/lang/String;)V

    .line 32
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_1

    .line 33
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->e()Lcom/ss/android/download/api/config/h;

    move-result-object p1

    invoke-interface {p1, p0, p2, v0}, Lcom/ss/android/download/api/config/h;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/download/api/config/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->s()Lcom/ss/android/download/api/b/a;

    move-result-object p2

    const-string v1, "requestPermission"

    invoke-interface {p2, p1, v1}, Lcom/ss/android/download/api/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 35
    invoke-interface {v0}, Lcom/ss/android/download/api/config/s;->a()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {v0}, Lcom/ss/android/download/api/config/s;->a()V

    :goto_0
    return-void

    .line 37
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private static c(Lcom/ss/android/downloadad/api/a/a;)Landroid/content/Intent;
    .locals 2
    .param p0    # Lcom/ss/android/downloadad/api/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0
.end method

.method private c()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "model_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v3, "message_text"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v4, "positive_button_text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v5, "negative_button_text"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v6, "type"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/ss/android/downloadlib/addownload/a/d$a;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/a/d$a;-><init>(Landroid/app/Activity;)V

    .line 9
    invoke-virtual {v1, v7}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Z)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v3}, Lcom/ss/android/downloadlib/addownload/a/d$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v4}, Lcom/ss/android/downloadlib/addownload/a/d$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    move-result-object v1

    const/4 v2, 0x7

    if-ne v5, v2, :cond_1

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/b;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/b;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    .line 15
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a()Lcom/ss/android/downloadlib/addownload/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const-string v1, "download_percent"

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne v5, v2, :cond_3

    .line 16
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/a;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 17
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/a;->a()Lcom/ss/android/downloadlib/addownload/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/d$a;

    .line 18
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/a/d$a;->a()Lcom/ss/android/downloadlib/addownload/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const-string v1, "apk_size"

    goto :goto_0

    :cond_3
    const-string v1, ""

    .line 19
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b:Z

    .line 21
    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c:Lcom/ss/android/downloadad/api/a/b;

    .line 22
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "pause_optimise_type"

    .line 23
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pause_optimise_action"

    const-string v3, "show_dialog"

    .line 24
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 25
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 26
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v3, "pause_optimise"

    invoke-virtual {v1, v3, v2, v0}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    :cond_4
    return-void
.end method

.method private c(J)V
    .locals 4

    .line 27
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    const-string p2, "showOpenAppDialogInner nativeModel null"

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->c()Lcom/ss/android/download/api/config/k;

    move-result-object p2

    new-instance v0, Lcom/ss/android/download/api/model/b$a;

    invoke-direct {v0, p0}, Lcom/ss/android/download/api/model/b$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5df2\u5b89\u88c5\u5b8c\u6210"

    .line 31
    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/b$a;->a(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u521a\u521a\u4e0b\u8f7d\u7684\u5e94\u7528"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->N()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%1$s\u5df2\u5b89\u88c5\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u6253\u5f00\uff1f"

    .line 33
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/b$a;->b(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v0

    const-string v1, "\u6253\u5f00"

    .line 34
    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/b$a;->c(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    .line 35
    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/b$a;->d(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v3}, Lcom/ss/android/download/api/model/b$a;->a(Z)Lcom/ss/android/download/api/model/b$a;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/downloadlib/g/l;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/b$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;-><init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Lcom/ss/android/downloadad/api/a/b;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/b$a;->a(Lcom/ss/android/download/api/model/b$b;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v0

    const/4 v1, 0x2

    .line 39
    invoke-virtual {v0, v1}, Lcom/ss/android/download/api/model/b$a;->a(I)Lcom/ss/android/download/api/model/b$a;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/ss/android/download/api/model/b$a;->a()Lcom/ss/android/download/api/model/b;

    move-result-object v0

    .line 41
    invoke-interface {p2, v0}, Lcom/ss/android/download/api/config/k;->b(Lcom/ss/android/download/api/model/b;)Landroid/app/Dialog;

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    const-string v0, "market_openapp_window_show"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

.method private d(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/a;-><init>(Landroid/app/Activity;J)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 11

    .line 54
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "type"

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "package_name"

    const-string v2, "model_id"

    const-wide/16 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 56
    :pswitch_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 59
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 60
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "ext_json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    .line 61
    invoke-static/range {v5 .. v10}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "app_info_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d(J)V

    goto :goto_0

    .line 67
    :pswitch_4
    sget-object v0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d:Lcom/ss/android/downloadlib/guide/install/a;

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0}, Lcom/ss/android/downloadlib/guide/install/a;->a()V

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 70
    :pswitch_5
    invoke-direct {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c()V

    goto :goto_0

    .line 71
    :pswitch_6
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(J)V

    goto :goto_0

    .line 73
    :pswitch_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(J)V

    goto :goto_0

    .line 75
    :pswitch_8
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "open_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_9
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "permission_id_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v2, "permission_content_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 4
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/j;->b(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 4
    invoke-static {p0}, Lcom/ss/android/downloadlib/addownload/j;->b(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->e()Lcom/ss/android/download/api/config/h;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ss/android/download/api/config/h;->a(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onStop()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c:Lcom/ss/android/downloadad/api/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c:Lcom/ss/android/downloadad/api/a/b;

    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
