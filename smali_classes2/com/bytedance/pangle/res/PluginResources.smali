.class public Lcom/bytedance/pangle/res/PluginResources;
.super Landroid/content/res/Resources;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public pluginPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/bytedance/pangle/res/PluginResources;->appendHostRes(Landroid/content/res/Resources;)Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 2
    iput-object p2, p0, Lcom/bytedance/pangle/res/PluginResources;->pluginPkg:Ljava/lang/String;

    return-void
.end method

.method public static appendHostRes(Landroid/content/res/Resources;)Landroid/content/res/AssetManager;
    .locals 9

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/bytedance/pangle/util/f;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/util/f;->a:Ljava/lang/String;

    .line 5
    :cond_0
    sget-object v0, Lcom/bytedance/pangle/util/f;->a:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/pangle/util/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/bytedance/pangle/util/i;->b()Ljava/util/List;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/bytedance/pangle/res/a;

    invoke-direct {v3}, Lcom/bytedance/pangle/res/a;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/bytedance/pangle/util/i;->a(Landroid/content/res/AssetManager;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-static {v4}, Lcom/bytedance/pangle/util/i;->a(Landroid/content/res/AssetManager;)Ljava/util/List;

    move-result-object v4

    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 14
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 15
    invoke-virtual {v3, p0, v7, v8}, Lcom/bytedance/pangle/res/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/content/res/AssetManager;

    move-result-object p0

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 17
    invoke-static {v6, v0, v1}, Lcom/bytedance/pangle/res/PluginResources;->isOtherPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 18
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    .line 19
    invoke-virtual {v3, p0, v6, v7}, Lcom/bytedance/pangle/res/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/content/res/AssetManager;

    move-result-object p0

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private static isOtherPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "/tinker/patch-"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method
