.class public Lcom/bytedance/sdk/openadsdk/api/plugin/e;
.super Ljava/lang/Object;
.source "TTPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/plugin/e$a;,
        Lcom/bytedance/sdk/openadsdk/api/plugin/e$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/TTPluginListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Ldalvik/system/DexClassLoader;

.field private static volatile e:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

.field private static volatile f:Z

.field private static volatile k:Lcom/bytedance/sdk/openadsdk/TTPluginListener;


# instance fields
.field private final g:Ljava/util/concurrent/CountDownLatch;

.field private volatile h:Z

.field private volatile i:Ljava/lang/String;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->e:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->g:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->h:Z

    const-string v0, "none"

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->j:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/api/plugin/b;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/b;-><init>()V

    const-string v1, "package_name"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const-string v1, "version_code"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mVersionCode:I

    const-string v1, "download_url"

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mUrl:Ljava/lang/String;

    const-string v1, "md5"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mMd5:Ljava/lang/String;

    const-string v1, "min_version"

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mApiVersionMin:I

    const-string v1, "max_version"

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mApiVersionMax:I

    const-string v1, "sign"

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/api/plugin/b;->a:Ljava/lang/String;

    const-string v1, "is_revert"

    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mFlag:I

    .line 47
    new-instance v1, Ljava/io/File;

    const-string v2, "plugin_file"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/api/plugin/b;->b:Ljava/io/File;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/e;
    .locals 2

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->e:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->e:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->e:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->e:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 58
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 59
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, "."

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 20
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/pangle/Zeus;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, "TTPluginManager"

    const-string v0, "Get local version failed"

    .line 22
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/bytedance/pangle/plugin/Plugin;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "TTPluginManager"

    const-string v0, "plugin is null."

    .line 48
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "action"

    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    const-string v2, "plugin_pkg_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "plugin_version"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 54
    const-class v1, Landroid/os/Bundle;

    invoke-interface {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/api/plugin/e;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .line 80
    instance-of p0, p0, Ljava/lang/AbstractMethodError;

    if-eqz p0, :cond_0

    const-string p0, "com.byted.pangle"

    .line 81
    invoke-static {p0}, Lcom/bytedance/pangle/Zeus;->unInstallPlugin(Ljava/lang/String;)V

    const-string p0, "TTPluginManager"

    const-string v0, "AbstractMethodError, rollback to builtin version."

    .line 82
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(ZLjava/lang/String;)V
    .locals 7

    .line 63
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install dl plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v3, " success"

    goto :goto_0

    :cond_0
    const-string v3, " failed"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", need notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTPluginManager"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v2, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    if-eqz p0, :cond_7

    .line 66
    sget-object p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->k:Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    if-nez p0, :cond_3

    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    :cond_2
    return-void

    .line 67
    :cond_3
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 68
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Lcom/bytedance/pangle/plugin/Plugin;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 70
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const/16 v3, 0x3e8

    if-eqz v1, :cond_5

    .line 71
    iget-object v5, p0, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object v6, p0, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v3, v5, v6, v4}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    .line 72
    :cond_5
    sget-object v1, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->k:Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    if-eqz v1, :cond_8

    .line 73
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->packageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->packageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 74
    iget-object v5, p0, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object p0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v3, v5, p0, v4}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    .line 75
    sput-object v4, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->k:Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    goto :goto_2

    :cond_6
    const/16 p0, 0x3ea

    .line 76
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    const/16 p0, 0x3eb

    .line 77
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c(Ljava/lang/String;I)V

    .line 78
    :cond_8
    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/api/plugin/b;)Z
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b(Lcom/bytedance/sdk/openadsdk/api/plugin/b;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/plugin/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/plugin/b;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 17
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/e;)V

    .line 18
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v1

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Lcom/bytedance/pangle/GlobalParam;->setCloseDefaultReport(Z)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/bytedance/pangle/GlobalParam;->setReporter(Lcom/bytedance/pangle/log/IZeusReporter;)V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {v1, v0}, Lcom/bytedance/pangle/GlobalParam;->setCheckPermission(Z)V

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/pangle/GlobalParam;->setDownloadDir(Ljava/io/File;)V

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$a;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/api/plugin/e$a;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/e$1;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/pangle/GlobalParam;->setLogger(Lcom/bytedance/pangle/log/IZeusLogger;)V

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/e;)V

    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->registerPluginStateListener(Lcom/bytedance/pangle/ZeusPluginStateListener;)V

    .line 25
    check-cast p1, Landroid/app/Application;

    invoke-static {p1, v2}, Lcom/bytedance/pangle/Zeus;->init(Landroid/app/Application;Z)V

    .line 26
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "TTPluginManager"

    const-string v1, "Unexpected error for init zeus."

    .line 27
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->i:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "com.byted.pangle"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_0

    .line 30
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->d:Ldalvik/system/DexClassLoader;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 33
    :goto_0
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/api/plugin/b;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/b;->b:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/pangle/Zeus;->syncInstallPlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 36
    iget-object p0, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(ZLjava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const-string p0, "TTPluginManager"

    const-string v0, "plugin config is null"

    .line 37
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/plugin/b;
    .locals 3

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/api/plugin/b;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 5
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid plugin info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TTPluginManager"

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/api/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-string v0, "tt_pangle_bykv_file"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "pangle_com.byted.pangle"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "TTPluginManager"

    const-string v1, "plugin update failed"

    .line 6
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "code"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    sget-object p1, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    if-eqz p0, :cond_0

    const/16 p1, 0x3e9

    const/4 v1, 0x0

    .line 10
    invoke-interface {p0, p1, v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->f:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "plugin_version"

    .line 14
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "_pl_config_info_"

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->f:Z

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTPluginListener;)V
    .locals 7

    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->h:Z

    const-string v1, "TTPluginManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "Zeus init failed."

    .line 24
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x3ea

    .line 25
    invoke-interface {p1, v0, v2, v2, v2}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    new-instance v3, Lcom/bytedance/sdk/openadsdk/api/plugin/e$3;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/e;Lcom/bytedance/sdk/openadsdk/TTPluginListener;)V

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->packageName()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/bytedance/pangle/Zeus;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    invoke-static {v3}, Lcom/bytedance/pangle/Zeus;->isPluginLoaded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 31
    :cond_2
    invoke-static {v3}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    .line 32
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_5

    .line 33
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Lcom/bytedance/pangle/plugin/Plugin;)V

    .line 34
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0x3e8

    .line 35
    iget-object v1, v4, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object v3, v4, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    goto :goto_2

    .line 36
    :cond_5
    sget-object v1, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object p1, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public b()Ldalvik/system/DexClassLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->h:Z

    const-string v1, "TTPluginManager"

    if-eqz v0, :cond_6

    const-string v0, "com.byted.pangle"

    .line 3
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->g:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v3, 0xea60

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->isPluginLoaded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->d:Ldalvik/system/DexClassLoader;

    const/4 v2, 0x1

    .line 7
    :cond_2
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->installFromDownloadDir()V

    .line 8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->d:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "Get null after load"

    .line 10
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/c;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/c;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "Install wait time out"

    .line 12
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/c;

    const/16 v1, 0x8

    const-string v2, "install wait timeout"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/c;-><init>(ILjava/lang/String;)V

    throw v0

    .line 14
    :cond_5
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->d:Ldalvik/system/DexClassLoader;

    return-object v0

    :cond_6
    const-string v0, "Zeus init failed."

    .line 15
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/c;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method
