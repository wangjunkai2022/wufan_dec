.class public final Lcom/bytedance/pangle/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "ContentProviderManager#update throw exception:"

    const-string v1, "Zeus/provider"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    .line 49
    :cond_0
    :try_start_0
    invoke-static {p1, p5}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p0, p5, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 50
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    :try_start_1
    const-string p5, "not found plugin provider, but found host ContentResolver execute update !!!"

    .line 51
    invoke-static {v1, p5}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 53
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 3

    const-string v0, "ContentProviderManager#delete throw exception:"

    const-string v1, "Zeus/provider"

    const/4 v2, -0x1

    if-nez p0, :cond_0

    return v2

    .line 44
    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 45
    :goto_0
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    :try_start_1
    const-string p3, "not found plugin provider, but found host ContentResolver execute delete !!!"

    .line 46
    invoke-static {v1, p3}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v2
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "ContentProviderManager#delete throw exception:"

    const-string v1, "Zeus/provider"

    const/4 v2, -0x1

    if-nez p0, :cond_0

    return v2

    .line 39
    :cond_0
    :try_start_0
    invoke-static {p1, p4}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 40
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    :try_start_1
    const-string p4, "not found plugin provider, but found host ContentResolver execute delete !!!"

    .line 41
    invoke-static {v1, p4}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string v0, "Zeus/provider"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p1, p5}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p0, p5, p2, p3, p4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string p1, "ContentProviderManager#query(4 params) throw exception:"

    .line 15
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    :try_start_1
    const-string p5, "not found plugin provider, but found host ContentResolver execute query(5 params) !!!"

    .line 16
    invoke-static {v0, p5}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "not found host provider-ContentProviderManager#query(4 params) throw exception:"

    .line 18
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    const-string v1, "Zeus/provider"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    move-object v0, p1

    move-object/from16 v3, p7

    .line 9
    :try_start_0
    invoke-static {p1, v3}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v3, "ContentProviderManager#query(6 params) throw exception:"

    .line 10
    invoke-static {v1, v3, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    :try_start_1
    const-string v3, "not found plugin provider, but found host ContentResolver execute query(6 params) !!!"

    .line 11
    invoke-static {v1, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p0 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v3, "not found host provider-ContentProviderManager#query(6 params) throw exception:"

    .line 13
    invoke-static {v1, v3, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v2
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-string v0, "Zeus/provider"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 19
    :cond_0
    :try_start_0
    invoke-static {p1, p6}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ContentProviderManager#query(5 params) throw exception:"

    .line 20
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    :try_start_1
    const-string p6, "not found plugin provider, but found host ContentResolver execute query(5 params) !!!"

    .line 21
    invoke-static {v0, p6}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "not found host provider-ContentProviderManager#query(5 params) throw exception:"

    .line 23
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "Zeus/provider"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 34
    :cond_0
    :try_start_0
    invoke-static {p1, p4}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string p1, "ContentProviderManager#insert throw exception:"

    .line 35
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    :try_start_1
    const-string p4, "not found plugin provider, but found host ContentResolver execute insert !!!"

    .line 36
    invoke-static {v0, p4}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "not found host provider-ContentProviderManager#insert throw exception:"

    .line 38
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "Zeus/provider"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 29
    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ContentProviderManager#insert throw exception:"

    .line 30
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    :try_start_1
    const-string p3, "not found plugin provider, but found host ContentResolver execute insert !!!"

    .line 31
    invoke-static {v0, p3}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "not found host provider-ContentProviderManager#insert throw exception:"

    .line 33
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 74
    invoke-static {}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getInstance()Lcom/bytedance/pangle/provider/ContentProviderManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/pangle/provider/ContentProviderManager;->isPluginProvider(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-static {p1, p0, v0}, Lcom/bytedance/pangle/provider/a;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 76
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentProviderManager#buildProxyUri-->proxyUri="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Zeus/provider"

    invoke-static {v0, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getInstance()Lcom/bytedance/pangle/provider/ContentProviderManager;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p2}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getPluginProcessNameByAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2, p0, p1}, Lcom/bytedance/pangle/provider/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, ""

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_0
    invoke-static {}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getInstance()Lcom/bytedance/pangle/provider/ContentProviderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getSystemProviderInfoMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/pangle/provider/ContentProviderManager$c;

    .line 6
    iget-object p1, p1, Lcom/bytedance/pangle/provider/ContentProviderManager$b;->b:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "proxy?provider_params="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u8fdb\u7a0b[processName="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] build provider \u3010 uri:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " \u3011"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Zeus/provider"

    invoke-static {p2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "ContentProviderManager#call throw exception:"

    const-string v1, "Zeus/provider"

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p1, p5}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    if-nez p4, :cond_1

    .line 55
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object p4, v3

    :cond_1
    const-string v3, "provider_params"

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "provider_proxy_uri"

    .line 57
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p5, p2, p3, p4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 59
    :goto_0
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    :try_start_1
    const-string p5, "not found plugin provider, but found host ContentResolver execute call !!!"

    .line 60
    invoke-static {v1, p5}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 62
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "ContentProviderManager#call throw exception:"

    const-string v1, "Zeus/provider"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 63
    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getInstance()Lcom/bytedance/pangle/provider/ContentProviderManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getPluginProcessNameByAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-static {}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getInstance()Lcom/bytedance/pangle/provider/ContentProviderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getSystemProviderInfoMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/pangle/provider/ContentProviderManager$c;

    .line 65
    iget-object v3, v3, Lcom/bytedance/pangle/provider/ContentProviderManager$b;->b:Ljava/lang/String;

    if-nez p4, :cond_1

    .line 66
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v4, "provider_params"

    .line 67
    invoke-virtual {p4, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p5, v2, p1}, Lcom/bytedance/pangle/provider/a;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v4, "provider_proxy_uri"

    invoke-virtual {p4, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-virtual {p0, v3, p2, p3, p4}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 70
    :goto_0
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    :try_start_1
    const-string p5, "not found plugin provider, but found host ContentResolver execute call !!!"

    .line 71
    invoke-static {v1, p5}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 73
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v2
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Zeus/provider"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 24
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ContentProviderManager#getType throw exception:"

    .line 25
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    :try_start_1
    const-string p2, "not found plugin provider, but found host ContentResolver execute getType !!!"

    .line 26
    invoke-static {v0, p2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "not found host provider-ContentProviderManager#getType throw exception:"

    .line 28
    invoke-static {v0, p1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public static b(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 3

    const-string v0, "ContentProviderManager#update throw exception:"

    const-string v1, "Zeus/provider"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1, p4}, Lcom/bytedance/pangle/provider/a;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2
    :goto_0
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    :try_start_1
    const-string p4, "not found plugin provider, but found host ContentResolver execute update !!!"

    .line 3
    invoke-static {v1, p4}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {v1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v2
.end method
