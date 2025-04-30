.class public Lcom/bytedance/sdk/openadsdk/api/plugin/b/b;
.super Ljava/lang/Object;
.source "AESUtils.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :try_start_0
    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/c;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/b;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    div-int/lit8 v1, p1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    const-string v0, "cypher"

    const-string v1, "message"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method
