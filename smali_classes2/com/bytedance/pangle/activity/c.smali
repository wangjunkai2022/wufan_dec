.class final Lcom/bytedance/pangle/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()Ljava/lang/Class;
    .locals 7

    .line 56
    const-class v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 57
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 58
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TranslucentConversionListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 8

    .line 59
    const-class v0, Landroid/app/Activity;

    :try_start_0
    const-string v1, "getActivityOptions"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/bytedance/pangle/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "convertToTranslucent"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 60
    invoke-static {}, Lcom/bytedance/pangle/activity/c;->a()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    const-class v6, Landroid/app/ActivityOptions;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0, v3, v5}, Lcom/bytedance/pangle/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    aput-object v1, v3, v7

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "mListenerInfo"

    .line 46
    invoke-static {p1, v0}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "mOnClickListener"

    .line 47
    invoke-static {v0, v1}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    :cond_1
    new-instance v1, Lcom/bytedance/pangle/activity/a;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "mMethodName"

    invoke-static {v0, v3}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/bytedance/pangle/activity/a;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkOnClickListener failed!"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Zeus/activity"

    invoke-static {v2, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_2
    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 54
    :goto_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bytedance/pangle/activity/c;->a(Landroid/app/Activity;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static a(Lcom/bytedance/pangle/activity/b;Landroid/content/Context;)V
    .locals 3

    .line 38
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->hasInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-interface {p0, p1}, Lcom/bytedance/pangle/activity/b;->zeusSuperAttachBaseContext(Landroid/content/Context;)V

    return-void

    .line 40
    :cond_0
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->getPluginPkgName()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/pangle/plugin/PluginManager;->loadPlugin(Ljava/lang/String;)Z

    move-result v1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/bytedance/pangle/activity/b;->setPlugin(Lcom/bytedance/pangle/plugin/Plugin;)V

    if-eqz v1, :cond_1

    .line 43
    invoke-static {p1, v0}, Lcom/bytedance/pangle/transform/ZeusTransformUtils;->wrapperContext(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/bytedance/pangle/activity/b;->zeusSuperAttachBaseContext(Landroid/content/Context;)V

    return-void

    .line 44
    :cond_1
    invoke-interface {p0, p1}, Lcom/bytedance/pangle/activity/b;->zeusSuperAttachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Lcom/bytedance/pangle/activity/b;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->hasInit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0, v1}, Lcom/bytedance/pangle/activity/b;->zeusSuperOnCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->getPluginPkgName()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->getPlugin()Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v3

    .line 7
    iget-object v4, v3, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v4, "targetPlugin"

    .line 8
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v3}, Lcom/bytedance/pangle/plugin/Plugin;->isLoaded()Z

    move-result v4

    const-string v5, "Zeus/activity"

    if-eqz v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 10
    :cond_1
    iget-object v2, v3, Lcom/bytedance/pangle/plugin/Plugin;->pluginActivities:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Have you declared "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in plugin\'s AndroidManifest.xml!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {p0, v1}, Lcom/bytedance/pangle/activity/b;->zeusSuperOnCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->finish()V

    :cond_2
    const/4 v1, -0x1

    .line 14
    :try_start_0
    iget-object v4, v3, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    invoke-virtual {v4, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/pangle/activity/IPluginActivity;

    const-string v4, "mApplication"

    .line 15
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-interface {p0, v0}, Lcom/bytedance/pangle/activity/b;->setTargetActivity(Lcom/bytedance/pangle/activity/IPluginActivity;)V

    .line 17
    invoke-interface {v0, p0, v3}, Lcom/bytedance/pangle/activity/IPluginActivity;->setPluginProxyActivity(Lcom/bytedance/pangle/activity/b;Lcom/bytedance/pangle/plugin/Plugin;)V

    .line 18
    invoke-static {}, Lcom/bytedance/pangle/util/h;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/bytedance/pangle/util/h;->d()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    :try_start_1
    const-string v3, "mWindow"

    .line 19
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 20
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :cond_3
    :goto_0
    iget v1, v2, Landroid/content/pm/ActivityInfo;->theme:I

    .line 22
    invoke-interface {p0, v1}, Lcom/bytedance/pangle/activity/b;->zeusSuperSetTheme(I)V

    .line 23
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010058

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 25
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/bytedance/pangle/activity/c;->a(Landroid/app/Activity;)V

    .line 26
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/bytedance/pangle/activity/IPluginActivity;->attachBaseContext(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 28
    :try_start_3
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v3, v2, :cond_5

    .line 29
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 30
    :catch_0
    :cond_5
    :try_start_4
    invoke-interface {v0, p1}, Lcom/bytedance/pangle/activity/IPluginActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 31
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_6

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "activityTheme:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string p1, ""

    .line 33
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 34
    :cond_7
    :goto_2
    :try_start_5
    invoke-interface {p0, v1}, Lcom/bytedance/pangle/activity/b;->zeusSuperOnCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Cant start pluginActivity, plugin load failed! pluginPkgName: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " targetActivity: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {p0}, Lcom/bytedance/pangle/activity/b;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
