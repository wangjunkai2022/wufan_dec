.class Lcom/ss/android/downloadlib/addownload/compliance/e;
.super Ljava/lang/Object;
.source "EventSender.java"


# direct methods
.method public static a(IJ)V
    .locals 2

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error_code"

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p0

    .line 15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p1

    const-string p2, "lp_compliance_error"

    .line 16
    invoke-virtual {p0, p2, v0, p1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

.method public static a(ILcom/ss/android/downloadlib/addownload/b/e;)V
    .locals 2

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error_code"

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p0

    const-string v1, "lp_compliance_error"

    invoke-virtual {p0, v1, v0, p1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/e;->x()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p1, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {p2, p0}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setRefer(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p0

    const-string p2, "lp_app_dialog_click"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method
