.class public Lcom/bytedance/pangle/Zeus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static volatile onPrivacyAgreed:Z

.field private static sApplication:Landroid/app/Application;

.field private static final serverManagerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/Zeus;->serverManagerHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/bytedance/pangle/Zeus;->onPrivacyAgreed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPluginEventCallback(Lcom/bytedance/pangle/ZeusPluginEventCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/bytedance/pangle/g;->c:Ljava/util/List;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/bytedance/pangle/g;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static fetchPlugin(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/download/b;->a()Lcom/bytedance/pangle/download/b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/bytedance/pangle/download/c;->a()Lcom/bytedance/pangle/download/c;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/bytedance/pangle/download/c;->c:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, v1, Lcom/bytedance/pangle/download/c;->b:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    new-instance v2, Lcom/bytedance/pangle/download/c$1;

    invoke-direct {v2, v1, p0}, Lcom/bytedance/pangle/download/c$1;-><init>(Lcom/bytedance/pangle/download/c;Ljava/lang/String;)V

    .line 7
    iget-object v3, v1, Lcom/bytedance/pangle/download/c;->c:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, v1, Lcom/bytedance/pangle/download/c;->b:Landroid/os/Handler;

    const-wide/32 v3, 0x1b7740

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    invoke-static {}, Lcom/bytedance/pangle/download/c;->a()Lcom/bytedance/pangle/download/c;

    .line 10
    iget-object v1, v0, Lcom/bytedance/pangle/download/b;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iget-object v0, v0, Lcom/bytedance/pangle/download/b;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static getAppApplication()Landroid/app/Application;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/pangle/Zeus;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/b;->a()V

    .line 3
    invoke-static {}, Lcom/bytedance/pangle/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    const-string v1, "getApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {v0, v1, v2}, Lcom/bytedance/pangle/util/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/bytedance/pangle/Zeus;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :catchall_0
    :cond_0
    sget-object v0, Lcom/bytedance/pangle/Zeus;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getHostAbi()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/c/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostAbiBit()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/c/b;->b()I

    move-result v0

    return v0
.end method

.method public static getInstalledPluginVersion(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " getInstalledPluginVersion, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Zeus/download"

    invoke-static {v1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getMaxInstallVer(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->getInstalledMaxVer()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;Z)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p0

    return-object p0
.end method

.method public static getPlugin(Ljava/lang/String;Z)Lcom/bytedance/pangle/plugin/Plugin;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->hasInit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/pangle/util/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please init Zeus first!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;Z)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p0

    return-object p0
.end method

.method public static getServerManagerHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/pangle/Zeus;->serverManagerHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static hasInit()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/bytedance/pangle/g;->a:Z

    return v0
.end method

.method public static init(Landroid/app/Application;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/pangle/g;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static installFromDownloadDir()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/plugin/PluginManager;->installFromDownloadDir()V

    :cond_0
    return-void
.end method

.method public static isPluginInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->isInstalled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPluginLoaded(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/pangle/plugin/PluginManager;->isLoaded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadPlugin(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/pangle/plugin/PluginManager;->loadPlugin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized onPrivacyAgreed()V
    .locals 1

    const-class v0, Lcom/bytedance/pangle/Zeus;

    monitor-enter v0

    .line 1
    monitor-exit v0

    return-void
.end method

.method public static registerPluginStateListener(Lcom/bytedance/pangle/ZeusPluginStateListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/bytedance/pangle/g;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removePluginEventCallback(Lcom/bytedance/pangle/ZeusPluginEventCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/bytedance/pangle/g;->c:Ljava/util/List;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/bytedance/pangle/g;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public static setAllowDownloadPlugin(Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/pangle/plugin/PluginManager;->setAllowDownloadPlugin(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static setAppContext(Landroid/app/Application;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginApplicationWrapper"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "mOriginApplication"

    .line 2
    invoke-static {p0, v0}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/bytedance/pangle/Zeus;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3
    :catchall_0
    :cond_0
    sput-object p0, Lcom/bytedance/pangle/Zeus;->sApplication:Landroid/app/Application;

    return-void
.end method

.method public static syncInstallPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/servermanager/b;->a()Lcom/bytedance/pangle/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/bytedance/pangle/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Zeus/install"

    const-string v0, "syncInstallPlugin error."

    .line 3
    invoke-static {p1, v0, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static unInstallPlugin(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/pangle/plugin/PluginManager;->unInstallPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterPluginStateListener(Lcom/bytedance/pangle/ZeusPluginStateListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/g;->a()Lcom/bytedance/pangle/g;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/bytedance/pangle/g;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
