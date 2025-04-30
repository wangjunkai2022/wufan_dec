.class public Lcom/join/mgps/mod/utils/b;
.super Ljava/lang/Object;
.source "ApkLoader.java"


# static fields
.field private static final l:Ljava/lang/String; = "Plugin"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/pm/PackageInfo;

.field private d:Ldalvik/system/DexClassLoader;

.field private e:Landroid/content/res/AssetManager;

.field private f:Landroid/content/res/Resources;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/mod/utils/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/mod/utils/b;->g:Z

    .line 4
    iput-object p1, p0, Lcom/join/mgps/mod/utils/b;->b:Landroid/content/Context;

    const-string v1, "pluginLib"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/mod/utils/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/mod/utils/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/mod/utils/b;->g:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/mod/utils/b;->b:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/join/mgps/mod/utils/b;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 7

    .line 1
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 3
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->b:Landroid/content/Context;

    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/mod/utils/b;->h:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/join/mgps/mod/utils/b$a;

    iget-object v4, p0, Lcom/join/mgps/mod/utils/b;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/mod/utils/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/join/mgps/mod/utils/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/mod/utils/b$a;-><init>(Lcom/join/mgps/mod/utils/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method private c(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v1
.end method

.method private l(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/utils/b;->c:Landroid/content/pm/PackageInfo;

    .line 2
    invoke-direct {p0, p2}, Lcom/join/mgps/mod/utils/b;->b(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/mod/utils/b;->d:Ldalvik/system/DexClassLoader;

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Plugin"

    aput-object v2, v0, v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dexClassLoader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/mod/utils/b;->d:Ldalvik/system/DexClassLoader;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/join/mgps/mod/utils/b;->a(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/mod/utils/b;->e:Landroid/content/res/AssetManager;

    new-array p2, p1, [Ljava/lang/String;

    aput-object v2, p2, v1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assetManager:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/mod/utils/b;->e:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {p2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/mod/utils/b;->e:Landroid/content/res/AssetManager;

    invoke-direct {p0, p2}, Lcom/join/mgps/mod/utils/b;->c(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/mod/utils/b;->f:Landroid/content/res/Resources;

    new-array p1, p1, [Ljava/lang/String;

    aput-object v2, p1, v1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resources:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->f:Landroid/content/res/Resources;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()Landroid/content/res/AssetManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->e:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public e()Ldalvik/system/DexClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->d:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->f:Landroid/content/res/Resources;

    return-object v0
.end method

.method public h()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->c:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->c:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->c:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/mod/utils/b;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Plugin"

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadApk "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/mod/utils/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "loadApk packageInfo"

    .line 3
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p1, "loadApk get packageInfo failed"

    .line 4
    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/mod/utils/b;->i:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "PluginEntryData"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/mod/utils/b;->j:Ljava/lang/String;

    const-string v1, "loadApk preparePluginEnv"

    .line 7
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/mod/utils/b;->l(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 9
    iput-boolean v3, p0, Lcom/join/mgps/mod/utils/b;->g:Z

    return-void
.end method

.method public m(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "processCommand"

    const-string v1, "ApkLoader"

    .line 1
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcom/join/mgps/mod/utils/b;->k:Ljava/lang/Object;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v0, v4}, Lcom/join/mgps/mod/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/mod/utils/b;->k:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "processCommand invoked"

    .line 5
    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public n(Lcom/join/mgps/mod/bean/ModMeta;)Ljava/lang/Object;
    .locals 9

    const-string v0, "start mod"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/mod/utils/b;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/mod/utils/b;->e()Ldalvik/system/DexClassLoader;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/join/mgps/mod/utils/c;->f(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "constructor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {v4}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v4, ""

    const/4 v6, 0x0

    .line 4
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v8

    array-length v8, v8

    if-ge v6, v8, :cond_1

    .line 5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";\n"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init \n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    new-array v3, v7, [Ljava/lang/Class;

    .line 7
    const-class v4, Lcom/join/mgps/mod/bean/ModMeta;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v3, "finish"

    .line 8
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/mod/utils/b;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method
