.class public final Lcom/bytedance/pangle/plugin/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/bytedance/pangle/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/plugin/c;->a:Lcom/bytedance/pangle/g;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 137
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "status_code"

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_package_name"

    .line 139
    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version_code"

    .line 140
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 141
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/pangle/log/c;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 142
    invoke-static {p6}, Lcom/bytedance/pangle/log/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    :goto_0
    invoke-static {}, Lcom/bytedance/pangle/b/b;->a()Lcom/bytedance/pangle/b/b;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/bytedance/pangle/b/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Lcom/bytedance/pangle/plugin/Plugin;Ljava/lang/StringBuilder;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-class v4, Lcom/bytedance/pangle/plugin/c;

    monitor-enter v4

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "Zeus/load"

    const-string v6, "PluginLoader"

    const-string v7, "load:"

    .line 35
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/pangle/log/b;

    move-result-object v6

    if-nez v2, :cond_0

    const-string v0, "loadPluginInternal, plugin == null;"

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Zeus/load"

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PluginLoader loadPluginInternal, plugin["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] not exist !!!"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    monitor-exit v4

    return v5

    .line 39
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/pangle/plugin/Plugin;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "loadPluginInternal, !plugin.isInstalled();"

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Zeus/load"

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PluginLoader loadPluginInternal, plugin["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] not installed !!!"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 42
    monitor-exit v4

    return v5

    :cond_1
    :try_start_2
    const-string v0, "isInstalled"

    .line 43
    invoke-virtual {v6, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x14

    cmp-long v0, v7, v11

    if-gtz v0, :cond_2

    cmp-long v0, v7, v9

    if-gez v0, :cond_3

    :cond_2
    const-string v0, "isInstall cost:"

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_3
    iget-object v0, v2, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v7

    invoke-static {v0, v7}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "loadPluginInternal, sourceApk not exist;"

    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Zeus/load"

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PluginLoader loadPluginInternal, plugin["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] file not exist !!!"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    monitor-exit v4

    return v5

    :cond_4
    :try_start_3
    const-string v0, "getSourceFile"

    .line 50
    invoke-virtual {v6, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-gtz v0, :cond_5

    cmp-long v0, v13, v9

    if-gez v0, :cond_6

    :cond_5
    const-string v0, "getSourceFile cost:"

    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_6
    new-instance v8, Ljava/io/File;

    iget-object v0, v2, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v13

    invoke-static {v0, v13}, Lcom/bytedance/pangle/c/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "getNativeLibraryDir"

    .line 53
    invoke-virtual {v6, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-gtz v0, :cond_7

    cmp-long v0, v13, v9

    if-gez v0, :cond_8

    :cond_7
    const-string v0, "getNativeLibraryDir cost:"

    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    const-string v14, "dalvik-cache"

    invoke-direct {v0, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_9

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_9
    const-string v13, "dalvikCacheDir"

    .line 58
    invoke-virtual {v6, v13}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-gtz v15, :cond_a

    cmp-long v15, v13, v9

    if-gez v15, :cond_b

    :cond_a
    const-string v15, "dalvikCacheDirTime cost:"

    .line 59
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_b
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1f

    const/4 v15, 0x1

    if-ge v13, v14, :cond_d

    const/16 v14, 0x1e

    if-ne v13, v14, :cond_c

    sget v13, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v13, :cond_c

    goto :goto_0

    :cond_c
    const/4 v13, 0x0

    goto :goto_1

    :cond_d
    :goto_0
    const/4 v13, 0x1

    :goto_1
    const/4 v14, 0x0

    if-eqz v13, :cond_e

    .line 61
    new-instance v13, Lcom/bytedance/pangle/PluginClassLoader;

    const-string v9, ""

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v13, v9, v0, v10, v14}, Lcom/bytedance/pangle/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v13, v2, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 63
    :try_start_4
    const-class v0, Ldalvik/system/BaseDexClassLoader;

    const-string v9, "addDexPath"

    new-array v10, v15, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v10, v5

    invoke-static {v0, v9, v10}, Lcom/bytedance/pangle/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v7, v9, v5

    .line 64
    invoke-virtual {v0, v13, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Zeus/load"

    const-string v9, "PluginLoader createPluginClassLoader#addDexPath success >>>"

    .line 65
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    const-string v9, "Zeus/load"

    const-string v10, "PluginLoader createPluginClassLoader#addDexPath fail >>>"

    .line 66
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 67
    :cond_e
    new-instance v9, Lcom/bytedance/pangle/PluginClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v0, v10, v14}, Lcom/bytedance/pangle/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v9, v2, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    .line 69
    :goto_2
    iget-boolean v0, v2, Lcom/bytedance/pangle/plugin/Plugin;->mOpenLoadClassOpt:Z

    if-eqz v0, :cond_f

    .line 70
    sget-object v0, Lcom/bytedance/pangle/c/e;->a:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/bytedance/pangle/plugin/c$1;

    invoke-direct {v9, v2}, Lcom/bytedance/pangle/plugin/c$1;-><init>(Lcom/bytedance/pangle/plugin/Plugin;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_f
    const-string v0, "classloader"

    .line 71
    invoke-virtual {v6, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v11

    if-gtz v0, :cond_10

    const-wide/16 v13, 0x0

    cmp-long v0, v9, v13

    if-gez v0, :cond_11

    :cond_10
    const-string v0, "classloader cost:"

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_11
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v9, 0xf

    invoke-virtual {v0, v7, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v9, "getPackageInfo"

    .line 74
    invoke-virtual {v6, v9}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v13, v9, v11

    if-gtz v13, :cond_12

    const-wide/16 v13, 0x0

    cmp-long v16, v9, v13

    if-gez v16, :cond_13

    :cond_12
    const-string v13, "getPackageInfo cost:"

    .line 75
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_13
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v9

    iget-object v10, v2, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/bytedance/pangle/transform/ZeusTransformUtils;->wrapperContext2Application(Ljava/lang/Object;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    iput-object v9, v2, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplication:Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    .line 77
    new-instance v9, Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v9, v2, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplicationInfoHookSomeField:Landroid/content/pm/ApplicationInfo;

    .line 78
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 79
    iget-object v8, v2, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplicationInfoHookSomeField:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v2, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplication:Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

    invoke-virtual {v9}, Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;->getDataDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 80
    iget-object v8, v2, Lcom/bytedance/pangle/plugin/Plugin;->mHostApplicationInfoHookSomeField:Landroid/content/pm/ApplicationInfo;

    iput-object v7, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 81
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 82
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v7, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 83
    :cond_14
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 84
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v7, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :cond_15
    const-string v7, "setApplication"

    .line 85
    invoke-virtual {v6, v7}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v11

    if-gtz v9, :cond_16

    const-wide/16 v9, 0x0

    cmp-long v13, v7, v9

    if-gez v13, :cond_17

    :cond_16
    const-string v9, "setApplication cost:"

    .line 86
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_17
    new-instance v7, Lcom/bytedance/pangle/res/PluginResources;

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/bytedance/pangle/res/PluginResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v7, v2, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    const-string v7, "makeResources"

    .line 88
    invoke-virtual {v6, v7}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v11

    if-gtz v9, :cond_18

    const-wide/16 v9, 0x0

    cmp-long v13, v7, v9

    if-gez v13, :cond_19

    :cond_18
    const-string v9, "makeResources cost:"

    .line 89
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_19
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v7

    new-instance v8, Lcom/bytedance/pangle/plugin/c$2;

    invoke-direct {v8, v2}, Lcom/bytedance/pangle/plugin/c$2;-><init>(Lcom/bytedance/pangle/plugin/Plugin;)V

    invoke-virtual {v7, v8}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 91
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1c

    .line 92
    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_1c

    aget-object v10, v7, v9

    .line 93
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1b

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1a

    goto :goto_4

    .line 94
    :cond_1a
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v15

    iput-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    goto :goto_5

    :cond_1b
    :goto_4
    const-string v13, "main"

    .line 95
    iput-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 96
    :goto_5
    iget-object v13, v2, Lcom/bytedance/pangle/plugin/Plugin;->pluginActivities:Ljava/util/HashMap;

    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 97
    :cond_1c
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_1f

    .line 98
    array-length v8, v7

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_1f

    aget-object v10, v7, v9

    .line 99
    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1e

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1d

    goto :goto_7

    .line 100
    :cond_1d
    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v15

    iput-object v13, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    goto :goto_8

    :cond_1e
    :goto_7
    const-string v13, "main"

    .line 101
    iput-object v13, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 102
    :goto_8
    iget-object v13, v2, Lcom/bytedance/pangle/plugin/Plugin;->pluginServices:Ljava/util/HashMap;

    iget-object v14, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_1f
    const-string v7, "resolveActivityServices"

    .line 103
    invoke-virtual {v6, v7}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v11

    if-gtz v9, :cond_20

    const-wide/16 v9, 0x0

    cmp-long v13, v7, v9

    if-gez v13, :cond_21

    :cond_20
    const-string v9, "resolveActivityServices cost:"

    .line 104
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_21
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_24

    .line 106
    array-length v8, v7

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_24

    aget-object v10, v7, v9

    .line 107
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_23

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_22

    goto :goto_a

    .line 108
    :cond_22
    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v15

    iput-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    goto :goto_b

    :cond_23
    :goto_a
    const-string v13, "main"

    .line 109
    iput-object v13, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 110
    :goto_b
    iget-object v13, v2, Lcom/bytedance/pangle/plugin/Plugin;->pluginReceiver:Ljava/util/HashMap;

    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_24
    const-string v7, "resolveReceiver"

    .line 111
    invoke-virtual {v6, v7}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v11

    if-gtz v9, :cond_25

    const-wide/16 v9, 0x0

    cmp-long v13, v7, v9

    if-gez v13, :cond_26

    :cond_25
    const-string v9, "resolveReceiver cost:"

    .line 112
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_26
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v7, :cond_29

    .line 114
    array-length v8, v7

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v8, :cond_29

    aget-object v10, v7, v9

    .line 115
    iget-object v13, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_28

    iget-object v13, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_27

    goto :goto_d

    .line 116
    :cond_27
    iget-object v13, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v15

    iput-object v13, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    goto :goto_e

    :cond_28
    :goto_d
    const-string v13, "main"

    .line 117
    iput-object v13, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 118
    :goto_e
    iget-object v13, v2, Lcom/bytedance/pangle/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    iget-object v14, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_29
    const-string v7, "resolveProvider"

    .line 119
    invoke-virtual {v6, v7}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v11

    if-gtz v9, :cond_2a

    const-wide/16 v9, 0x0

    cmp-long v13, v7, v9

    if-gez v13, :cond_2b

    :cond_2a
    const-string v9, "resolveProvider cost:"

    .line 120
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_2b
    iget-object v7, v2, Lcom/bytedance/pangle/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_2c

    .line 122
    invoke-static {}, Lcom/bytedance/pangle/provider/ContentProviderManager;->getInstance()Lcom/bytedance/pangle/provider/ContentProviderManager;

    move-result-object v7

    iget-object v8, v2, Lcom/bytedance/pangle/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/bytedance/pangle/provider/ContentProviderManager;->installContentProviders(Ljava/util/Collection;Lcom/bytedance/pangle/plugin/Plugin;)V

    :cond_2c
    const-string v7, "installProvider"

    .line 123
    invoke-virtual {v6, v7}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v11

    if-gtz v9, :cond_2d

    const-wide/16 v9, 0x0

    cmp-long v13, v7, v9

    if-gez v13, :cond_2e

    :cond_2d
    const-string v9, "installProvider cost:"

    .line 124
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_2e
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 126
    iget-object v7, v2, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/pangle/ZeusApplication;

    iput-object v0, v2, Lcom/bytedance/pangle/plugin/Plugin;->mApplication:Lcom/bytedance/pangle/ZeusApplication;

    .line 127
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lcom/bytedance/pangle/ZeusApplication;->attach(Lcom/bytedance/pangle/plugin/Plugin;Landroid/app/Application;)V

    :cond_2f
    const-string v0, "makeApplication"

    .line 128
    invoke-virtual {v6, v0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v11

    if-gtz v0, :cond_30

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_31

    :cond_30
    const-string v0, "makeApplication cost:"

    .line 129
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    :cond_31
    :try_start_6
    iget-object v0, v2, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    const-string v1, "com.volcengine.StubConfig"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "config"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bytedance/pangle/util/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 131
    :catchall_1
    monitor-exit v4

    return v15

    :catchall_2
    move-exception v0

    :try_start_7
    const-string v2, "loadPluginInternal "

    .line 132
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Zeus/load"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "PluginLoader loadPluginInternal, plugin["

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 134
    monitor-exit v4

    return v5

    :catchall_3
    move-exception v0

    monitor-exit v4

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;)Z
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Zeus/load"

    const-string v2, "PluginLoader loadPlugin, plugin == null, pkg = "

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "Zeus/load"

    const-string v2, "PluginLoader loadPlugin, UN_INSTALLED, "

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->isLoaded()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 8
    monitor-exit p0

    return v3

    .line 9
    :cond_2
    :try_start_3
    sget-object v2, Lcom/bytedance/pangle/plugin/c;->a:Lcom/bytedance/pangle/g;

    const/16 v5, 0x7d0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    const-string v4, "Zeus/load"

    const-string v5, "PluginLoader"

    const-string v6, "loadPlugin:"

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/pangle/log/b;

    move-result-object v4

    .line 11
    sget-object v5, Lcom/bytedance/pangle/b/b;->g:Ljava/lang/String;

    sget v6, Lcom/bytedance/pangle/b/b$a;->z:I

    iget-object v7, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v8

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    .line 13
    invoke-static/range {v5 .. v11}, Lcom/bytedance/pangle/plugin/c;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const/16 v5, 0x8

    new-array v6, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, v5, v6}, Lcom/bytedance/pangle/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-static {p1, v0, v5}, Lcom/bytedance/pangle/plugin/c;->a(Ljava/lang/String;Lcom/bytedance/pangle/plugin/Plugin;Ljava/lang/StringBuilder;)Z

    move-result v6

    const-string v7, "loadPluginInternal:"

    .line 17
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/bytedance/pangle/log/b;->b(Ljava/lang/String;)J

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    .line 18
    invoke-virtual {v0, v6}, Lcom/bytedance/pangle/plugin/Plugin;->setLifeCycle(I)V

    .line 19
    sget-object v7, Lcom/bytedance/pangle/b/b;->h:Ljava/lang/String;

    sget v8, Lcom/bytedance/pangle/b/b$a;->A:I

    iget-object v9, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v10

    invoke-virtual {v4}, Lcom/bytedance/pangle/log/b;->a()J

    move-result-wide v11

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 21
    invoke-static/range {v7 .. v13}, Lcom/bytedance/pangle/plugin/c;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const/16 v4, 0x9

    new-array v5, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {p1, v4, v5}, Lcom/bytedance/pangle/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/16 v5, 0x834

    const/4 v6, 0x0

    .line 23
    iget-object v7, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string v4, "plugin:"

    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " versionCode:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "load failed;"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v6, Lcom/bytedance/pangle/b/b;->h:Ljava/lang/String;

    sget v7, Lcom/bytedance/pangle/b/b$a;->B:I

    iget-object v8, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v9

    const-wide/16 v10, -0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 27
    invoke-static/range {v6 .. v12}, Lcom/bytedance/pangle/plugin/c;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const/16 v4, 0xa

    new-array v5, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {p1, v4, v5}, Lcom/bytedance/pangle/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/16 v5, 0x834

    const/4 v6, -0x1

    .line 29
    iget-object v7, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/pangle/g;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    :goto_0
    const-string p1, "Zeus/load"

    const-string v2, "PluginLoader loadFinished, "

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Zeus/load"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginLoader postResult, LOADED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    monitor-exit p0

    return v3

    .line 34
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
