.class public Lcom/ss/android/downloadlib/addownload/b/h;
.super Ljava/lang/Object;
.source "PackageManagerChecker.java"


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/addownload/b/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/b/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b/h;->a:Lcom/ss/android/downloadlib/addownload/b/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/addownload/b/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/addownload/b/h;->a:Lcom/ss/android/downloadlib/addownload/b/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/h;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/b/h;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/b/h;->a:Lcom/ss/android/downloadlib/addownload/b/h;

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
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b/h;->a:Lcom/ss/android/downloadlib/addownload/b/h;

    return-object v0
.end method


# virtual methods
.method public a(IILcom/ss/android/downloadad/api/a/b;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p3}, Lcom/ss/android/downloadad/api/a/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "report_api_hijack"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sub-int v1, p2, p1

    if-lez p1, :cond_2

    const/16 p1, 0x1f4

    const-string v2, "check_api_hijack_version_code_diff"

    .line 9
    invoke-virtual {v0, v2, p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-le v1, p1, :cond_2

    .line 10
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "version_code_diff"

    .line 11
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "installed_version_code"

    .line 12
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "hijack_type"

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 14
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 15
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p2

    const-string v0, "api_hijack"

    invoke-virtual {p2, v0, p1, p3}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    :cond_2
    return-void
.end method
