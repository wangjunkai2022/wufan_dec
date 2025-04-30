.class public final Lcom/bytedance/pangle/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "ApkSignatureVerify verify plugin signature error : "

    const-string v1, "Zeus/install"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/util/h;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-static {p0}, Lcom/bytedance/pangle/f/d;->a(Ljava/lang/String;)Lcom/bytedance/pangle/f/o;

    move-result-object v4

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/bytedance/pangle/f/a;->a(Ljava/lang/String;)Lcom/bytedance/pangle/f/o;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_2

    .line 5
    iget-object v2, v4, Lcom/bytedance/pangle/f/o;->b:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Lcom/bytedance/pangle/f/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/pangle/plugin/Plugin;->mSignature:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_7

    .line 7
    array-length v4, p1

    if-nez v4, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v7, v2, v5

    .line 9
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_4
    new-array v4, v6, [B

    .line 11
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v8, v2, v6

    .line 12
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v9, v3, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {v4, p1}, Lcom/bytedance/pangle/f/o;->a([B[B)Z

    move-result p1

    if-nez p1, :cond_6

    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return p1

    .line 16
    :cond_7
    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApkSignatureVerify get hostSignature error : "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 17
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
