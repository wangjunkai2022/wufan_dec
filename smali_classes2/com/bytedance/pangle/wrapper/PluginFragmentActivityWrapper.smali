.class public Lcom/bytedance/pangle/wrapper/PluginFragmentActivityWrapper;
.super Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field hasInit:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/pangle/PluginContext;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/pangle/wrapper/PluginFragmentActivityWrapper;->hasInit:Z

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    iput-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    .line 4
    iput-object p2, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->pluginContext:Lcom/bytedance/pangle/PluginContext;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/bytedance/pangle/wrapper/PluginFragmentActivityWrapper$1;

    invoke-direct {v1, p0}, Lcom/bytedance/pangle/wrapper/PluginFragmentActivityWrapper$1;-><init>(Lcom/bytedance/pangle/wrapper/PluginFragmentActivityWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/util/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/pangle/util/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "mWindow"

    .line 8
    iget-object v1, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mBase"

    .line 10
    invoke-static {p0, v0, p2}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    :try_start_2
    const-string p2, "mApplication"

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 14
    :goto_2
    invoke-static {p0, p1}, Lcom/bytedance/pangle/util/a;->a(Lcom/bytedance/pangle/wrapper/a;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/wrapper/PluginFragmentActivityWrapper;->hasInit:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 3
    :catchall_0
    :cond_0
    invoke-super {p0}, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getOriginActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/GenerateFragmentActivityWrapper;->mOriginActivity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method
