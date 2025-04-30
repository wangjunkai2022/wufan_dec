.class public Lcom/bytedance/pangle/e/a;
.super Lcom/bytedance/pangle/c$a;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/bytedance/pangle/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/c$a;-><init>()V

    return-void
.end method

.method public static b()Lcom/bytedance/pangle/e/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/pangle/e/a;->a:Lcom/bytedance/pangle/e/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/pangle/e/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/pangle/e/a;->a:Lcom/bytedance/pangle/e/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/pangle/e/a;

    invoke-direct {v1}, Lcom/bytedance/pangle/e/a;-><init>()V

    sput-object v1, Lcom/bytedance/pangle/e/a;->a:Lcom/bytedance/pangle/e/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/e/a;->a:Lcom/bytedance/pangle/e/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/plugin/PluginManager;->checkPluginInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/pangle/plugin/PluginManager;->syncInstall(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    .line 7
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result p1

    return p1
.end method
