.class final Lcom/bytedance/sdk/openadsdk/api/plugin/d;
.super Ljava/lang/Object;
.source "PluginReporter.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static c:Landroid/content/SharedPreferences;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;

    const-string v1, "tt_pangle_thread_pl_report"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->e:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10
    :try_start_0
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->e:Z

    .line 11
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static final a(ILjava/lang/String;J)V
    .locals 2

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "duration"

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "code"

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "message"

    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p0, "plugin_load_failed"

    .line 7
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "tt_sdk_settings_other"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 2

    .line 15
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->e:Z

    if-nez v0, :cond_0

    .line 16
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/d$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d$3;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/AdConfig;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a:Ljava/util/Map;

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/AdConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plugin_update_conf"

    .line 18
    invoke-interface {p0, v1}, Lcom/bytedance/sdk/openadsdk/AdConfig;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 20
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "2"

    .line 21
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_2
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/AdConfig;->getCustomController()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    const-string v1, "oaid"

    .line 23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    .line 24
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevImei()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zeus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->e(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 12
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->e:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d$2;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static final b(ILjava/lang/String;J)V
    .locals 2

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "duration"

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "code"

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "message"

    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p0, "plugin_load_failed"

    .line 7
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 8
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->e:Z

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/d$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->c(Ljava/util/List;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "api-access.pangolin-sdk-toutiao.com"

    .line 2
    sget-object v1, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    const-string v2, "url_alog"

    .line 3
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "/api/ad/union/sdk/stats/batch/"

    aput-object v2, v1, v0

    const-string v2, "https://%s%s"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    sget-object v3, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 8
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 10
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const-string v3, "stats_list"

    .line 12
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/b/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;->a()Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a/c;->a(ZLjava/lang/String;[B)Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "action"

    .line 3
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "event_name"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "event_extra"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-class p0, Landroid/os/Bundle;

    invoke-interface {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private static f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9

    const-string v0, "oaid"

    const-string v1, "imei"

    const-string v2, "4.6.0.2"

    .line 1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "os_api"

    .line 2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v4, 0x15

    const/4 v6, 0x1

    if-lt v5, v4, :cond_0

    .line 3
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v7, v4, v5

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v4, v6

    :goto_0
    const-string v5, "support_abi"

    .line 4
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "ad_sdk_version"

    .line 5
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "com.byted.pangle"

    .line 6
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "plugin_version"

    .line 7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "is_plugin"

    .line 9
    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "event_extra"

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    .line 11
    invoke-virtual {v3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "model"

    .line 13
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "vendor"

    .line 14
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    sget-object p1, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_info"

    .line 17
    invoke-virtual {v3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v3
.end method
