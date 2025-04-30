.class public Lcom/bytedance/pangle/plugin/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final LIFE_INSTALLED:I = 0x2

.field public static final LIFE_LOADED:I = 0x3

.field public static final LIFE_PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Plugin"


# instance fields
.field final initializeLock:Ljava/lang/Object;

.field final installLock:Ljava/lang/Object;

.field private mApiVersionCode:I

.field public final mAppKey:Ljava/lang/String;

.field public final mAppSecretKey:Ljava/lang/String;

.field public mApplication:Lcom/bytedance/pangle/ZeusApplication;

.field public mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

.field public mHostApplication:Lcom/bytedance/pangle/wrapper/PluginApplicationWrapper;

.field public mHostApplicationInfoHookSomeField:Landroid/content/pm/ApplicationInfo;

.field private volatile mInitialized:Z

.field private mInternalPath:Ljava/lang/String;

.field private mInternalVersionCode:I

.field public mIsSupportLibIso:Z

.field private volatile mLifeCycle:I

.field public mMaxVersionCode:I

.field public mMinVersionCode:I

.field public final mOpenLoadClassOpt:Z

.field private mPackageDir:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public mResources:Landroid/content/res/Resources;

.field public mSignature:Ljava/lang/String;

.field public final mUnInstallPluginWhenHostChange:Z

.field private mVersionCode:I

.field public pluginActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pluginProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pluginReceiver:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pluginServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->pluginActivities:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->pluginServices:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->pluginReceiver:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalVersionCode:I

    const v1, 0x7fffffff

    .line 7
    iput v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mMaxVersionCode:I

    const/4 v2, 0x1

    .line 8
    iput v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    .line 9
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->installLock:Ljava/lang/Object;

    .line 10
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->initializeLock:Ljava/lang/Object;

    const-string v2, "packageName"

    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    const-string v2, "minPluginVersion"

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->mMinVersionCode:I

    const-string v2, "maxPluginVersion"

    .line 13
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mMaxVersionCode:I

    const-string v1, "apiVersionCode"

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mApiVersionCode:I

    const-string v1, "signature"

    const-string v2, ""

    .line 15
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mSignature:Ljava/lang/String;

    const-string v1, "isSupportLibIsolate"

    .line 16
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mIsSupportLibIso:Z

    const-string v1, "internalPath"

    .line 17
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    const-string v1, "internalVersionCode"

    .line 18
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalVersionCode:I

    const-string v0, "appKey"

    .line 19
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mAppKey:Ljava/lang/String;

    const-string v0, "appSecretKey"

    .line 20
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mAppSecretKey:Ljava/lang/String;

    const-string v0, "loadClassOpt"

    .line 21
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mOpenLoadClassOpt:Z

    const-string v0, "unInstallPluginWhenHostChange"

    .line 22
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mUnInstallPluginWhenHostChange:Z

    .line 23
    invoke-direct {p0}, Lcom/bytedance/pangle/plugin/Plugin;->setupInternalPlugin()V

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/pangle/plugin/Plugin;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    return-object p0
.end method

.method private checkValid(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Plugin checkValid "

    const-string v2, "Zeus/install"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " package name not match !!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 3
    :cond_0
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mMinVersionCode:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt p3, v0, :cond_6

    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mMaxVersionCode:I

    if-le p3, v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    if-ge p3, v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    iget p3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v5

    const-string p3, " pluginApk ver[%s] lower than installed plugin[%s]."

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    if-ne p3, v0, :cond_4

    .line 9
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "MD5_"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/bytedance/pangle/util/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pluginApk with the same md5 has already installed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " true"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 15
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pluginApk not exist."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    :goto_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    iget p3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mMinVersionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v5

    iget p3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mMaxVersionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v4

    const-string p3, " pluginApk ver[%s] not match plugin VerRange[%s, %s]."

    .line 17
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private checkVersionValid(IIZ)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/pangle/util/l;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "Plugin"

    const/4 v6, 0x2

    const-string v7, "Zeus/init"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-le v3, v2, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    .line 2
    iget-object v4, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    aput-object v4, v1, v9

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, " checkVersionValid %s apiVersion downgrade , lastApiVersion=%s , currentApiVersion=%s"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    if-ltz v1, :cond_1

    .line 6
    iget v3, v0, Lcom/bytedance/pangle/plugin/Plugin;->mMinVersionCode:I

    if-lt v1, v3, :cond_1

    iget v3, v0, Lcom/bytedance/pangle/plugin/Plugin;->mMaxVersionCode:I

    if-gt v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    const/4 v10, -0x1

    if-eq v2, v10, :cond_4

    .line 7
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v10

    iget-object v11, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 8
    iget-object v10, v10, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "API_MIN_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 9
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v12

    iget-object v13, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 10
    iget-object v12, v12, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "API_MAX_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v13, 0x7fffffff

    invoke-interface {v12, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    move v13, v11

    :goto_1
    if-lt v2, v10, :cond_3

    if-le v2, v13, :cond_4

    :cond_3
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    iget-object v11, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    aput-object v11, v3, v9

    iget v11, v0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    .line 12
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, " checkVersionValid plugin[%s, ver=%s] is not compatible with api[ver_code=%s], apiCompatibleVer=[%s,%s]"

    .line 13
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    .line 15
    new-instance v2, Ljava/io/File;

    iget-object v4, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/pangle/c/b;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-array v2, v6, [Ljava/lang/Object;

    .line 16
    iget-object v3, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    const-string v1, " checkVersionValid plugin[%s, ver=%s] not match hostAbi"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v9, v3

    .line 18
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Plugin checkVersionValid, pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", valid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method private deleteIfNeeded()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNINSTALL__"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    invoke-direct {p0}, Lcom/bytedance/pangle/plugin/Plugin;->deleteInstalledPlugin()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin deleteIfNeeded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zeus/init"

    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private deleteInstalledPlugin()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/pangle/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/pangle/plugin/Plugin$3;

    invoke-direct {v1, p0}, Lcom/bytedance/pangle/plugin/Plugin$3;-><init>(Lcom/bytedance/pangle/plugin/Plugin;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 4
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/pangle/util/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private deleteOtherExpiredVer(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/pangle/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "version-"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/pangle/plugin/Plugin$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/pangle/plugin/Plugin$4;-><init>(Lcom/bytedance/pangle/plugin/Plugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    :cond_1
    return-void
.end method

.method private installInternalPlugin()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v0

    iget v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalVersionCode:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/bytedance/pangle/c/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/pangle/plugin/Plugin$1;

    invoke-direct {v1, p0}, Lcom/bytedance/pangle/plugin/Plugin$1;-><init>(Lcom/bytedance/pangle/plugin/Plugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private modifyResIfNeed(I)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/pangle/util/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/pangle/util/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mUnInstallPluginWhenHostChange:Z

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "Zeus/init"

    if-nez v0, :cond_3

    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bytedance/pangle/GlobalParam;->unInstallPluginWhenHostChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "modifyRes by init. "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v2, Lcom/bytedance/pangle/res/a/c;

    invoke-direct {v2}, Lcom/bytedance/pangle/res/a/c;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0}, Lcom/bytedance/pangle/res/a/c;->a(Ljava/io/File;ZLjava/lang/StringBuilder;)I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return p1

    .line 7
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "uninstall plugin by host update. "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return p1
.end method

.method private setupInternalPlugin()V
    .locals 9

    const-string v0, "_"

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mApiVersionCode:I

    .line 2
    iget-object v1, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-string v2, "OFFLINE_INTERNAL_%s"

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalVersionCode:I

    if-eq v1, v4, :cond_2

    return-void

    .line 4
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcom/bytedance/pangle/ZeusConstants;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v7, v2, :cond_4

    aget-object v3, v1, v7

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lcom/bytedance/pangle/util/j;->a(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/pangle/ZeusConstants;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    .line 8
    iput v6, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalVersionCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Zeus/install"

    const-string v2, "setupInternalPlugin failed."

    .line 9
    invoke-static {v1, v2, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateInstallStateFromMainProcess()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/pangle/servermanager/b;->a()Lcom/bytedance/pangle/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/pangle/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/pangle/c;->b(Ljava/lang/String;)I

    move-result v0

    .line 6
    invoke-direct {p0, v0}, Lcom/bytedance/pangle/plugin/Plugin;->updateToInstalled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateInstallStateFromMainProcess error. process = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    invoke-static {}, Lcom/bytedance/pangle/c/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Zeus/ppm"

    .line 9
    invoke-static {v2, v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateToInstalled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    return-void
.end method


# virtual methods
.method public getApiVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mApiVersionCode:I

    return v0
.end method

.method public getInstalledMaxVer()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/pangle/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/pangle/plugin/Plugin$2;

    invoke-direct {v1, p0}, Lcom/bytedance/pangle/plugin/Plugin$2;-><init>(Lcom/bytedance/pangle/plugin/Plugin;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 4
    array-length v2, v0

    if-lez v2, :cond_2

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v1, :cond_1

    .line 7
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/bytedance/pangle/util/l;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    iget-object v5, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 9
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Plugin getInstalledMaxVersion, pkg="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", maxVer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Zeus/init"

    invoke-static {v2, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getInternalVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInternalVersionCode:I

    return v0
.end method

.method public getLifeCycle()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/plugin/Plugin;->updateInstallStateFromMainProcess()V

    .line 2
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    return v0
.end method

.method public getNativeLibraryDir()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bytedance/pangle/c/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/pangle/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/plugin/Plugin;->updateInstallStateFromMainProcess()V

    .line 2
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    return v0
.end method

.method init()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->initializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInitialized:Z

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/pangle/c/d;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 6
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 7
    iget-object v1, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    const-string v4, "HOST_ABI_"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 8
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 9
    iget-object v5, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    const-string v6, "HOST_ABI_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const-string v6, "Zeus/init"

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ZeusSpUtils isHostAbiUpdate HOST_ABI="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    const-string v8, "HOST_ABI_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 11
    :goto_1
    invoke-direct {p0}, Lcom/bytedance/pangle/plugin/Plugin;->deleteIfNeeded()V

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->getInstalledMaxVer()I

    move-result v1

    .line 13
    iget v4, p0, Lcom/bytedance/pangle/plugin/Plugin;->mApiVersionCode:I

    invoke-direct {p0, v1, v4, v5}, Lcom/bytedance/pangle/plugin/Plugin;->checkVersionValid(IIZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/bytedance/pangle/plugin/Plugin;->modifyResIfNeed(I)I

    move-result v3

    .line 15
    invoke-direct {p0, v3}, Lcom/bytedance/pangle/plugin/Plugin;->updateToInstalled(I)V

    .line 16
    :cond_4
    invoke-direct {p0, v3}, Lcom/bytedance/pangle/plugin/Plugin;->deleteOtherExpiredVer(I)V

    const-string v1, "Zeus/init"

    const-string v3, "Plugin initPlugins result="

    .line 17
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 19
    iget-object v1, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "ROM_LAST_"

    .line 20
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 23
    iget-object v4, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    const-string v5, "HOST_ABI_"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    iget-object v1, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "HOST_ABI_"

    .line 25
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "Zeus/init"

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ZeusSpUtils setHostAbiUpdated HOST_ABI="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/pangle/util/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v1, v3}, Lcom/bytedance/pangle/util/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 31
    iget-object v1, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "HOST_IDENTITY_"

    .line 32
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v1, "Zeus/init"

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ZeusSpUtils setHostIdentity("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/pangle/plugin/Plugin;->mApiVersionCode:I

    .line 36
    invoke-virtual {v1, v3}, Lcom/bytedance/pangle/util/l;->a(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_6

    .line 37
    iget-object v1, v1, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "PLUGIN_API_VERSION_"

    .line 38
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const-string v1, "Zeus/init"

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "ZeusSpUtils setPluginApiVersion "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 41
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/pangle/plugin/Plugin;->updateInstallStateFromMainProcess()V

    .line 42
    :goto_2
    iput-boolean v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->mInitialized:Z

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/bytedance/pangle/plugin/Plugin;->installInternalPlugin()V

    return-void

    :catchall_0
    move-exception v1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method install(Ljava/io/File;Lcom/bytedance/pangle/e/a/e;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Zeus/install"

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Plugin install from local file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p2, Lcom/bytedance/pangle/e/a/e;->a:Ljava/lang/String;

    .line 3
    iget p2, p2, Lcom/bytedance/pangle/e/a/e;->b:I

    .line 4
    iget-object v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->installLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v3, "Zeus/install"

    const-string v4, "Plugin synchronized begin, plugin="

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/pangle/plugin/Plugin;->checkValid(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 7
    invoke-static {p1, v1, p2}, Lcom/bytedance/pangle/plugin/b;->a(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_1

    .line 8
    :try_start_2
    iget-object v6, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/bytedance/pangle/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/pangle/util/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 10
    iget-object v7, v7, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "MD5_"

    .line 11
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v7, v8, p2, v4}, Lcom/bytedance/pangle/util/l;->a(Ljava/lang/String;IZ)V

    const-string v7, "Zeus/install"

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Plugin markPluginInstalled, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " md5="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/bytedance/pangle/util/f;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 16
    :cond_1
    :goto_0
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    .line 17
    :try_start_3
    iget v3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3

    if-eqz v5, :cond_2

    .line 18
    invoke-direct {p0, p2}, Lcom/bytedance/pangle/plugin/Plugin;->updateToInstalled(I)V

    const-string p1, "Zeus/install"

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Plugin INSTALLED "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    const/4 p2, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/bytedance/pangle/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "Zeus/install"

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Plugin INSTALL_FAILED"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    const/4 v6, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "Internal error."

    aput-object v7, v4, v0

    invoke-static {v3, v6, v4}, Lcom/bytedance/pangle/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 23
    invoke-static {p1}, Lcom/bytedance/pangle/util/f;->a(Ljava/io/File;)V

    const-string p1, "Zeus/install"

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Plugin delete file by failedCount > 0 "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "Zeus/install"

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Plugin LIFE_LOADED, valid next restart "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-static {p1}, Lcom/bytedance/pangle/util/f;->a(Ljava/io/File;)V

    const-string p1, "Zeus/install"

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Plugin deleting invalid "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 30
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    move v0, v5

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 31
    :goto_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p1

    const-string p2, "Zeus/install"

    const-string v1, "Plugin IMPOSSIBLE!!!"

    .line 32
    invoke-static {p2, v1, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v0

    :goto_3
    return v5
.end method

.method public isInstalled()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/pangle/plugin/Plugin;->updateInstallStateFromMainProcess()V

    .line 2
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVersionInstalled(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/pangle/util/l;->a(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setApiCompatVersion(III)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/util/l;->a()Lcom/bytedance/pangle/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/bytedance/pangle/util/l;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API_MIN_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "API_MAX_"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLifeCycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin{pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", life="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/pangle/plugin/Plugin;->mLifeCycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
