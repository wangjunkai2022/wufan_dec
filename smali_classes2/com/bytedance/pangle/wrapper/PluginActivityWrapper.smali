.class public Lcom/bytedance/pangle/wrapper/PluginActivityWrapper;
.super Lcom/bytedance/pangle/wrapper/GenerateActivityWrapper;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/pangle/PluginContext;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/wrapper/GenerateActivityWrapper;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/wrapper/GenerateActivityWrapper;->mOriginActivity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/bytedance/pangle/wrapper/GenerateActivityWrapper;->pluginContext:Lcom/bytedance/pangle/PluginContext;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/bytedance/pangle/wrapper/PluginActivityWrapper$1;

    invoke-direct {v1, p0}, Lcom/bytedance/pangle/wrapper/PluginActivityWrapper$1;-><init>(Lcom/bytedance/pangle/wrapper/PluginActivityWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/util/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/pangle/util/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "mWindow"

    .line 7
    iget-object v1, p0, Lcom/bytedance/pangle/wrapper/GenerateActivityWrapper;->mOriginActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "mBase"

    .line 9
    invoke-static {p0, v0, p2}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    :try_start_2
    const-string p2, "mApplication"

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 13
    :goto_2
    invoke-static {p0, p1}, Lcom/bytedance/pangle/util/a;->a(Lcom/bytedance/pangle/wrapper/a;Landroid/app/Activity;)V

    return-void
.end method
