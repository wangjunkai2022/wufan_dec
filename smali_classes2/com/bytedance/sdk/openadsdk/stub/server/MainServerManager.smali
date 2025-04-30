.class public Lcom/bytedance/sdk/openadsdk/stub/server/MainServerManager;
.super Lcom/bytedance/pangle/servermanager/AbsServerManager;
.source "MainServerManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/servermanager/AbsServerManager;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->setContext(Landroid/content/Context;)V

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    .line 4
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Landroid/app/Application;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/b;->a()Lcom/bytedance/sdk/openadsdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/a/b;->b()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/bytedance/pangle/servermanager/AbsServerManager;->onCreate()Z

    move-result v0

    return v0
.end method
