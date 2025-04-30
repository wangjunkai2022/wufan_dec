.class Lcom/ss/android/downloadlib/addownload/d/b$1;
.super Ljava/lang/Object;
.source "DownloadPercentInterceptor.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d/b;->a(Lcom/ss/android/downloadad/api/a/b;ILcom/ss/android/downloadlib/addownload/d/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/api/a/b;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/d/c;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/d/b;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/d/b;Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/addownload/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d/b$1;->c:Lcom/ss/android/downloadlib/addownload/d/b;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/d/b$1;->a:Lcom/ss/android/downloadad/api/a/b;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/d/b$1;->b:Lcom/ss/android/downloadlib/addownload/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d/b;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/c;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pause_optimise_type"

    const-string v2, "download_percent"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pause_optimise_action"

    const-string v2, "confirm"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/d/b$1;->a:Lcom/ss/android/downloadad/api/a/b;

    const-string v3, "pause_optimise"

    invoke-virtual {v1, v3, v0, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d/b;->a(Lcom/ss/android/downloadlib/addownload/a/c;)Lcom/ss/android/downloadlib/addownload/a/c;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pause_optimise_type"

    const-string v2, "download_percent"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pause_optimise_action"

    const-string v2, "cancel"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/d/b$1;->a:Lcom/ss/android/downloadad/api/a/b;

    const-string v3, "pause_optimise"

    invoke-virtual {v1, v3, v0, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d/b$1;->b:Lcom/ss/android/downloadlib/addownload/d/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/d/b$1;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/api/a/b;)V

    return-void
.end method
