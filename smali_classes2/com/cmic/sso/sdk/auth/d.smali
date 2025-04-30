.class public Lcom/cmic/sso/sdk/auth/d;
.super Ljava/lang/Object;
.source "AuthnResult.java"


# direct methods
.method static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "resultCode"

    const-string v2, "103000"

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    const-string v2, "true"

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "securityphone"

    .line 14
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method static a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "0"

    const-string/jumbo v1, "\u672a\u77e5"

    const-string/jumbo v2, "\u79fb\u52a8"

    const-string/jumbo v3, "\u8054\u901a"

    const-string/jumbo v4, "\u7535\u4fe1"

    .line 4
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "operatortype"

    .line 5
    invoke-virtual {p1, v2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "operatorType"

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aget-object p0, v1, p0

    invoke-virtual {p2, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "103000"

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 9
    aget-object p0, v1, p0

    invoke-virtual {p2, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 10
    aget-object p0, v1, p0

    invoke-virtual {p2, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    return-object p2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "resultCode"

    .line 2
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "desc"

    .line 3
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 11

    const-string v0, "securityphone"

    const-string v1, "tokenExpiresIn"

    const-string v2, "openId"

    const-string v3, "token"

    const-string v4, "0"

    const-string v5, "authType"

    .line 16
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 17
    :try_start_0
    invoke-virtual {p2, v5, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "networktype"

    .line 18
    invoke-virtual {p2, v8}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    if-ne v8, v9, :cond_0

    const-string v4, "WIFI\u4e0b\u7f51\u5173\u9274\u6743"

    const-string v7, "1"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "\u7f51\u5173\u9274\u6743"

    const-string v7, "2"

    :goto_0
    move-object v10, v7

    move-object v7, v4

    move-object v4, v10

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "\u5176\u4ed6"

    :goto_1
    :try_start_1
    const-string v8, "resultCode"

    .line 19
    invoke-virtual {v6, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "authTypeDes"

    .line 21
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "103000"

    .line 22
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    const-string p1, "logintype"

    .line 23
    invoke-virtual {p2, p1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_2

    .line 24
    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_2
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const-string p0, "desc"

    .line 28
    invoke-virtual {v6, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "\u8fd4\u56de\u53c2\u6570:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuthnResult"

    invoke-static {p1, p0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "resultCode"

    .line 2
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "desc"

    .line 3
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
