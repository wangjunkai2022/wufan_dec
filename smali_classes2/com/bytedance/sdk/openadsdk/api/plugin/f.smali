.class public Lcom/bytedance/sdk/openadsdk/api/plugin/f;
.super Ljava/lang/Object;
.source "TTPluginSdkInitializer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;,
        Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final c:Landroid/os/Bundle;


# instance fields
.field private volatile b:Lcom/bytedance/sdk/openadsdk/TTInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->c:Landroid/os/Bundle;

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/f$b;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdConfig;)Lcom/bytedance/sdk/openadsdk/TTInitializer;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b:Lcom/bytedance/sdk/openadsdk/TTInitializer;

    if-nez v0, :cond_1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b:Lcom/bytedance/sdk/openadsdk/TTInitializer;

    if-nez v0, :cond_0

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a(Lcom/bytedance/sdk/openadsdk/AdConfig;)V

    const-string v0, "TTPluginManager"

    const-string v1, "Create initializer"

    .line 9
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b(Lcom/bytedance/sdk/openadsdk/AdConfig;)Lcom/bytedance/sdk/openadsdk/TTInitializer;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b:Lcom/bytedance/sdk/openadsdk/TTInitializer;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "duration"

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string v1, "plugin"

    .line 16
    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/AdConfig;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 18
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b:Lcom/bytedance/sdk/openadsdk/TTInitializer;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/api/plugin/f;Lcom/bytedance/sdk/openadsdk/AdConfig;)Lcom/bytedance/sdk/openadsdk/TTInitializer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->a(Lcom/bytedance/sdk/openadsdk/AdConfig;)Lcom/bytedance/sdk/openadsdk/TTInitializer;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/api/plugin/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/f;Lcom/bytedance/sdk/openadsdk/AdConfig;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/AdConfig;)Lcom/bytedance/sdk/openadsdk/TTInitializer;
    .locals 11

    const-string p0, "Load plugin failed"

    const-string v0, "TTPluginManager"

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    move-result-object v5

    .line 2
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b()Ldalvik/system/DexClassLoader;

    move-result-object v5

    if-nez v5, :cond_0

    .line 3
    invoke-static {v2, p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a(ILjava/lang/String;J)V

    .line 4
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p0, "com.bytedance.sdk.openadsdk.core.AdSdkInitializerHolder"

    .line 5
    invoke-virtual {v5, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "_pl_update_listener_"

    .line 7
    new-instance v7, Lcom/bytedance/sdk/openadsdk/api/plugin/e$b;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/api/plugin/e$b;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v6, "_pl_config_info_"

    .line 8
    sget-object v7, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->c:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "getInstance"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    .line 9
    const-class v9, Landroid/os/Bundle;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {p0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v10

    invoke-virtual {p0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/TTInitializer;

    const-string v5, "Create initializer success"

    .line 10
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    instance-of v5, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/c;

    if-eqz v5, :cond_1

    .line 12
    move-object v2, p0

    check-cast v2, Lcom/bytedance/sdk/openadsdk/api/plugin/c;

    .line 13
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/c;->a()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a(ILjava/lang/String;J)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3, v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a(ILjava/lang/String;J)V

    .line 15
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create initializer failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method


# virtual methods
.method public getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please use init(Context context, AdConfig config, TTAdSdk.InitCallback callback)!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/16 p1, 0x1069

    const-string p2, "Only support >= 5.0"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->fail(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b:Lcom/bytedance/sdk/openadsdk/TTInitializer;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b:Lcom/bytedance/sdk/openadsdk/TTInitializer;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;

    invoke-direct {v1, p3}, Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/TTInitializer;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;

    invoke-direct {v0, p3}, Lcom/bytedance/sdk/openadsdk/api/plugin/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    :goto_0
    return-void
.end method

.method public isInitSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b:Lcom/bytedance/sdk/openadsdk/TTInitializer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->b:Lcom/bytedance/sdk/openadsdk/TTInitializer;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTInitializer;->isInitSuccess()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
