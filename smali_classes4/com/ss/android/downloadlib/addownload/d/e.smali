.class public Lcom/ss/android/downloadlib/addownload/d/e;
.super Ljava/lang/Object;
.source "MistakeClickInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)J
    .locals 2

    .line 8
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "pause_optimise_mistake_click_interval"

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private b(I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "pause_optimise_mistake_click_interval_switch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/api/a/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z
    .locals 4

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/ss/android/downloadlib/addownload/d/e;->b(I)Z

    move-result p3

    if-nez p3, :cond_1

    return p2

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->T()J

    move-result-wide v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/ss/android/downloadlib/addownload/d/e;->a(I)J

    move-result-wide v0

    cmp-long p3, v2, v0

    if-gtz p3, :cond_2

    .line 4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p3, "pause_optimise_type"

    const-string v0, "mistake_click"

    .line 5
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 6
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p3

    const-string v0, "pause_optimise"

    invoke-virtual {p3, v0, p2, p1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return p2
.end method
