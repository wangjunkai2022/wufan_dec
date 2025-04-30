.class public Lcom/ss/android/downloadlib/g/k;
.super Ljava/lang/Object;
.source "TLogger.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, p0, v0}, Lcom/ss/android/downloadlib/g/k;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/ss/android/downloadlib/g/k;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->p()Lcom/ss/android/download/api/config/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ss/android/download/api/config/j;->a(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->p()Lcom/ss/android/download/api/config/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ss/android/download/api/config/j;->a(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->p()Lcom/ss/android/download/api/config/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 2
    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ss/android/download/api/config/j;->a(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
