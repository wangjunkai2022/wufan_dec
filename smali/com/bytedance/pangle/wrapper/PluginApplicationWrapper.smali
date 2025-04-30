.class public Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingSuperCall",
        "NewApi"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mOriginApplication:Landroid/app/Application;

.field public mPluginContext:Lcom/bytedance/pangle/PluginContext;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/bytedance/pangle/PluginContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mPluginContext:Lcom/bytedance/pangle/PluginContext;

    :try_start_0
    const-string p1, "mBase"

    .line 4
    invoke-static {p0, p1, p2}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public getDataDir()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mPluginContext:Lcom/bytedance/pangle/PluginContext;

    invoke-virtual {v0}, Lcom/bytedance/pangle/e;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->setTheme(I)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->startActivities([Landroid/content/Intent;)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Application;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Application;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->mOriginApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V

    return-void
.end method
