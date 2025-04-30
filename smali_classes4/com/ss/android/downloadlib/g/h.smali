.class public Lcom/ss/android/downloadlib/g/h;
.super Ljava/lang/Object;
.source "InnerOpenAppUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 3

    const/4 v0, 0x6

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    invoke-static {p0, v1}, Lcom/ss/android/downloadlib/g/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0xd

    invoke-direct {p0, v0, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0

    .line 8
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->i()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v2, "fix_jump_market"

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x14000000

    .line 12
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 13
    :cond_3
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_4

    const/high16 p1, 0x10000000

    .line 14
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    :cond_4
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v2, "test_jump_market_failed"

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 16
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p0

    const/4 p1, 0x0

    const-string v1, "jump market error"

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/downloadlib/e/c;->a(ZLjava/lang/String;)V

    .line 17
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0x19

    invoke-direct {p0, v0, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0

    :cond_5
    const-string p1, "start_only_for_android"

    .line 18
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 21
    :catch_0
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0xe

    invoke-direct {p0, v0, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0

    .line 22
    :cond_6
    :goto_1
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0xc

    invoke-direct {p0, v0, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 4

    if-eqz p0, :cond_8

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 29
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {p0, p2}, Lcom/ss/android/downloadlib/g/h;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    const-string v1, "market://details?id="

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->enableAM()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "am_plans"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->b()Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_3

    const-string v2, "am_0"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    invoke-static {p0, p1, p2}, Lcom/ss/android/downloadlib/g/h;->b(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V

    .line 35
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const-string p1, "am_m1"

    invoke-direct {p0, v3, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 36
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "am_3"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    invoke-static {p0, p1, p2}, Lcom/ss/android/downloadlib/g/h;->c(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    return-object p0

    .line 38
    :cond_4
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "am_2"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    invoke-static {p0, p1, p2}, Lcom/ss/android/downloadlib/g/h;->d(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V

    .line 40
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const-string p1, "am_m2"

    invoke-direct {p0, v3, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 41
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "am_5"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    invoke-static {p0, p1, p2}, Lcom/ss/android/downloadlib/g/h;->e(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V

    .line 43
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const-string p1, "am_v1"

    invoke-direct {p0, v3, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 44
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    return-object p0

    .line 45
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    return-object p0

    .line 46
    :cond_8
    :goto_1
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/4 p1, 0x6

    const/16 p2, 0xb

    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 2

    if-eqz p0, :cond_2

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/h;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    return-object p0

    .line 27
    :cond_2
    :goto_0
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/4 p1, 0x6

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 6

    .line 102
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/l;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 103
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0x16

    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0

    .line 104
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-lt v2, v3, :cond_1

    .line 105
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "open_package_mode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 106
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->k()Lcom/ss/android/download/api/config/b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 107
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->k()Lcom/ss/android/download/api/config/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/download/api/config/b;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {p2}, Lcom/ss/android/downloadad/api/a/a;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    .line 110
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    invoke-direct {p0, v4}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(I)V

    return-object p0

    :cond_1
    const-string p1, "start_only_for_android"

    .line 111
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    invoke-direct {p0, v4}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(I)V

    return-object p0

    .line 114
    :catch_0
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0x17

    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0
.end method

.method static a(Lcom/ss/android/downloadad/api/a/b;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 2
    .param p0    # Lcom/ss/android/downloadad/api/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 116
    invoke-static {p1, p0}, Lcom/ss/android/downloadlib/g/h;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p1

    .line 117
    invoke-static {p0}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/api/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/g;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 119
    invoke-static {p2, p0}, Lcom/ss/android/downloadlib/g/h;->a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method static a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 1

    .line 115
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "g"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h"

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 51
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "market://details?id="

    .line 88
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p5

    invoke-virtual {p5, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p2

    const/4 p3, 0x5

    const/4 p5, 0x1

    .line 91
    :try_start_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "s"

    .line 92
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bg"

    .line 93
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 94
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/ss/android/downloadlib/g/l;->b(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p4

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, p1, p4}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, -0x1

    .line 96
    invoke-static {p2, v1, p0, p3}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    const-string p0, "am_v1"

    .line 97
    invoke-static {p0, v1, p2, p5}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_2

    .line 98
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x2

    goto :goto_1

    :cond_2
    const/4 p4, 0x3

    :goto_1
    invoke-static {p2, v1, p4, p3}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    .line 99
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    invoke-static {p0, p2, p5}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 100
    :catch_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    invoke-static {p0, p2, p5}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    const/4 p0, 0x4

    .line 101
    invoke-static {p2, v1, p0, p3}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    :goto_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 52
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v3

    move-wide/from16 v4, p2

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    .line 54
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "s"

    .line 55
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "aa"

    .line 56
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ac"

    .line 57
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "af"

    .line 58
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 59
    invoke-static {v7, v0, v10}, Lcom/ss/android/socialbase/appdownloader/f/a;->a(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    .line 60
    new-instance v13, Ljava/lang/StringBuilder;

    new-array v14, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    aput-object v11, v14, v5

    aput-object v10, v14, v4

    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->i()Ljava/lang/String;

    move-result-object v10

    .line 63
    invoke-static {v0, v10}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 64
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const-string v10, "ae"

    .line 65
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/high16 v7, 0x14000000

    .line 67
    invoke-virtual {v9, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    const-string v7, "mf"

    .line 68
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "if"

    .line 69
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "start_only_for_android"

    .line 71
    invoke-virtual {v9, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "am_kllk2"

    .line 73
    invoke-static {v0, v2, v3, v5}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    if-eqz v12, :cond_2

    const/4 v0, -0x1

    .line 74
    invoke-static {v3, v2, v0, v6}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    goto :goto_1

    .line 75
    :cond_2
    invoke-static {v3, v2, v6, v6}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v0

    invoke-static {v0, v3, v5}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    .line 77
    invoke-static {v3, v2, v4, v6}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    :goto_1
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/g/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p6}, Lcom/ss/android/downloadlib/g/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "start_only_for_android"

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "param"

    .line 81
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->i()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/g/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 87
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    const-string p2, "start v1"

    invoke-virtual {p1, p0, p2}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 3

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 30
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0xb

    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 31
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 32
    :cond_1
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/l;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 33
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0x16

    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0

    :cond_2
    const/4 v0, 0x1

    const-string v2, "start_only_for_android"

    .line 34
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(I)V

    return-object p0

    .line 37
    :catch_0
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0x17

    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0
.end method

.method static b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 6
    .param p1    # Lcom/ss/android/downloadad/api/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 39
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0x15

    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0

    .line 40
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 42
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 44
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "open_url"

    .line 45
    invoke-virtual {v3, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "start_only_for_android"

    const/4 v4, 0x1

    .line 46
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v5, "fix_app_link_flag"

    invoke-virtual {v2, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x4000000

    .line 48
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    :cond_1
    invoke-static {v0, v3}, Lcom/ss/android/downloadlib/g/l;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "open_url_mode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 51
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->k()Lcom/ss/android/download/api/config/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->k()Lcom/ss/android/download/api/config/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/download/api/config/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 53
    invoke-interface {p1}, Lcom/ss/android/downloadad/api/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    goto :goto_0

    .line 55
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    invoke-direct {p0, v4}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(I)V

    return-object p0

    .line 57
    :catch_0
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(I)V

    return-object p0

    .line 58
    :cond_3
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/16 p1, 0x18

    invoke-direct {p0, v1, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/g/h$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/ss/android/downloadlib/g/h$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;)V
    .locals 5
    .param p3    # Lcom/ss/android/downloadlib/addownload/b/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "market://details?id="

    const/4 v1, 0x5

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ttdownloader_type"

    invoke-static {p4, v3, v2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 16
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "a"

    .line 17
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20
    iget-wide v3, p3, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    invoke-static {p1, v3, v4, p2, p4}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p2

    invoke-static {p2, p3, v2}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    .line 22
    invoke-static {p3, p4, v1, v1}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    invoke-static {p0, p3, v2}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    const/4 p0, 0x6

    .line 24
    invoke-static {p3, p4, p0, v1}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    :goto_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p3    # Lcom/ss/android/downloadlib/addownload/b/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "market://details?id="

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ttdownloader_type"

    invoke-static {p4, v3, v2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "a"

    .line 4
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2, p5, p6}, Lcom/ss/android/downloadlib/g/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "open_url"

    .line 7
    invoke-static {p4, p5, p2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {p0, p2}, Lcom/ss/android/downloadlib/g/h;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    .line 9
    invoke-static {p3, p4, p2, v1}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    const-string p2, "am_m1"

    .line 10
    invoke-static {p2, p4, p3, v1}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p2

    invoke-static {p2, p3, v1}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    const/4 p2, 0x2

    .line 12
    invoke-static {p3, p4, p2, v1}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    invoke-static {p0, p3, v1}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    const/4 p0, 0x3

    .line 14
    invoke-static {p3, p4, p0, v1}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    :goto_0
    return-void
.end method

.method private static b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V
    .locals 1

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "error_code"

    invoke-static {p1, v0, p2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "ttdownloader_type"

    invoke-static {p1, p3, p2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/ss/android/downloadlib/g/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    const-string p3, "am_result"

    invoke-virtual {p2, p3, p1, p0}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/downloadlib/activity/JumpKllkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "p"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-wide v1, p1, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "start_only_for_android"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    new-instance v0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/4 v3, 0x7

    const-string v4, "am_kllk2"

    invoke-direct {v0, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x3

    .line 9
    invoke-static {p1, v1, v2, v0}, Lcom/ss/android/downloadlib/g/h;->b(Lcom/ss/android/downloadlib/addownload/b/e;Lorg/json/JSONObject;II)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "market://details?id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/g/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 12
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 14
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "open_url"

    .line 15
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "start_only_for_android"

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.samsungapps.com/appquery/appDetail.as?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.Main"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string p1, "start_only_for_android"

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 10
    :catch_0
    new-instance p0, Lcom/ss/android/downloadlib/addownload/b/g;

    const/4 p1, 0x6

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(II)V

    return-object p0
.end method

.method private static d(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/g/h$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ss/android/downloadlib/g/h$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V
    .locals 2

    .line 15
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/g/h$3;

    invoke-direct {v1, p2, p0, p1}, Lcom/ss/android/downloadlib/g/h$3;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "fix_app_link_flag"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x8000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "start_only_for_android"

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->i()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/ss/android/downloadlib/g/l;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/g/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_3
    const/4 p0, 0x0

    return p0
.end method
