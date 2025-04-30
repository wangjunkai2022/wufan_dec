.class public Lcom/ss/android/downloadlib/addownload/b/a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public volatile h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    .line 4
    iput-wide p3, p0, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    .line 5
    iput-wide p5, p0, Lcom/ss/android/downloadlib/addownload/b/a;->c:J

    .line 6
    iput-object p7, p0, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/ss/android/downloadlib/addownload/b/a;->e:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/ss/android/downloadlib/addownload/b/a;->f:Ljava/lang/String;

    .line 9
    iput-object p10, p0, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/downloadlib/addownload/b/a;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 11
    :cond_0
    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/b/a;-><init>()V

    :try_start_0
    const-string v2, "mDownloadId"

    .line 12
    invoke-static {p0, v2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    const-string v2, "mAdId"

    .line 13
    invoke-static {p0, v2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string v2, "mExtValue"

    .line 14
    invoke-static {p0, v2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->c:J

    const-string v2, "mPackageName"

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    const-string v2, "mAppName"

    .line 16
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->e:Ljava/lang/String;

    const-string v2, "mLogExtra"

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->f:Ljava/lang/String;

    const-string v2, "mFileName"

    .line 18
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    const-string v2, "mTimeStamp"

    .line 19
    invoke-static {p0, v2}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mDownloadId"

    .line 2
    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mAdId"

    .line 3
    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mExtValue"

    .line 4
    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mPackageName"

    .line 5
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mAppName"

    .line 6
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLogExtra"

    .line 7
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mFileName"

    .line 8
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mTimeStamp"

    .line 9
    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/b/a;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
