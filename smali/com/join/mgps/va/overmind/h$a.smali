.class public final Lcom/join/mgps/va/overmind/h$a;
.super Ljava/lang/Object;
.source "VExtPackageAccessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/va/overmind/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000eJ\u0012\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0007J \u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0011\u001a\u00020\u0006\u00a8\u0006\u001a"
    }
    d2 = {
        "com/join/mgps/va/overmind/h$a",
        "",
        "Landroid/os/Bundle;",
        "args",
        "",
        "g",
        "",
        "file",
        "Landroid/content/pm/PackageParser$Package;",
        "b",
        "data",
        "c",
        "packageName",
        "gameId",
        "",
        "userId",
        "d",
        "path",
        "delete",
        "f",
        "Landroid/content/Context;",
        "context",
        "",
        "a",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/va/overmind/h$a;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/i;->k()Lcom/xinzhu/haunted/android/content/pm/i;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xinzhu/haunted/android/content/pm/i;->l(Ljava/io/File;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/xinzhu/haunted/android/content/pm/i;->j(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/xinzhu/haunted/android/content/pm/i;->i(Ljava/lang/Object;I)V

    :goto_0
    return-object v1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.content.pm.PackageParser.Package"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic e(Lcom/join/mgps/va/overmind/h$a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/va/overmind/h$a;->d(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final g(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "userId"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "packageName"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "goldSwitch"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "archiveSwitch"

    .line 4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "channelNum"

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "targetVersion"

    .line 6
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object v5, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v5, v1, v0}, Lcom/join/mgps/va/overmind/f;->G(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v5, v1, v0}, Lcom/join/mgps/va/overmind/f;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_0
    invoke-static {v6, v2, v3, v4, p1}, Lcom/join/mgps/va/overmind/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v6, v0}, Lcom/xinzhu/overmind/plugin/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p2, "useNativeLib"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "action"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeModSwitch"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/va/overmind/h$a;->g(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v0, p1, p3}, Lcom/join/mgps/va/overmind/f;->G(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, p1, p3}, Lcom/join/mgps/va/overmind/f;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    invoke-static {v1, p2}, Lcom/join/mgps/mod/utils/PluginConfig;->setModGameId(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {v1, p1}, Lcom/xinzhu/overmind/plugin/b;->f(Ljava/lang/String;Ljava/lang/String;)V
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

.method public final delete(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-static {p1}, Lcom/xinzhu/overmind/plugin/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 24
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    const-string v1, "packageName"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v1, v7}, Lcom/join/mgps/va/overmind/f;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v1, v7}, Lcom/join/mgps/va/overmind/f;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "isOnlySyncData"

    .line 3
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "obbSize"

    .line 4
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5
    sget-object v6, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v6}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/join/mgps/va/overmind/e;->j(Ljava/lang/String;)J

    move-result-wide v10

    if-nez v3, :cond_1

    .line 6
    invoke-static/range {p1 .. p2}, Lcom/xinzhu/overmind/plugin/b;->q(Ljava/lang/String;I)V

    cmp-long v3, v10, v4

    if-eqz v3, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_1

    .line 7
    invoke-static {v1}, Lcom/xinzhu/overmind/plugin/b;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;

    .line 9
    iget-object v4, v4, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/join/mgps/va/overmind/h$a;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/plugin/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "Papa_Stat_SharedPreferences.xml"

    const-string v2, "PrefDef.xml"

    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xinzhu/overmind/a;->S()Ljava/io/File;

    move-result-object v4

    const-string v5, "MindEnvironment.getVirtualRoot()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string v5, "MindEnvironment.getVirtualRoot().parentFile"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/shared_prefs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xinzhu/overmind/a;->T()Ljava/io/File;

    move-result-object v6

    const-string v10, "MindEnvironment.getVirtualRoot_plugin()"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const-string v10, "MindEnvironment.getVirtualRoot_plugin().parentFile"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/plugin/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "modPath"

    .line 17
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v6, :cond_4

    .line 18
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_5

    return-void

    .line 19
    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v11

    const-string v1, "Overmind.getMainPkg()"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object v10, v6

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    const-string v11, "/files/"

    .line 22
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    .line 23
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v12

    const-string v2, "Overmind.getPluginPkg()"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v10, v6

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xinzhu/overmind/plugin/b;->b(Ljava/lang/String;)Lcom/xinzhu/overmind/server/os/MindShareFileInfo;

    move-result-object v2

    .line 26
    sget-object v10, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v10}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/join/mgps/va/overmind/e;->j(Ljava/lang/String;)J

    move-result-wide v3

    if-eqz v2, :cond_7

    .line 27
    iget-object v2, v2, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v2, v3, v11

    if-eqz v2, :cond_8

    .line 28
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xinzhu/overmind/plugin/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/join/mgps/va/overmind/h$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v11, "/app_pluginLib"

    if-eqz v1, :cond_9

    .line 30
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    const/4 v4, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v15, v5

    move v5, v13

    move-object v13, v6

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lcom/join/mgps/va/overmind/f;->l(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/arm"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v15, v5

    move-object v13, v6

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v2, v7, v8}, Lcom/join/mgps/va/overmind/f;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    :goto_4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lcom/join/mgps/va/overmind/h$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v3, v7, v8}, Lcom/join/mgps/va/overmind/f;->U(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/arm64"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v3, v7, v8}, Lcom/join/mgps/va/overmind/f;->z(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v2}, Lcom/xinzhu/overmind/plugin/b;->b(Ljava/lang/String;)Lcom/xinzhu/overmind/server/os/MindShareFileInfo;

    move-result-object v3

    .line 34
    invoke-virtual {v10}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/join/mgps/va/overmind/e;->j(Ljava/lang/String;)J

    move-result-wide v4

    if-eqz v3, :cond_b

    .line 35
    iget-object v3, v3, Lcom/xinzhu/overmind/server/os/MindShareFileInfo;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1}, Lcom/join/mgps/Util/g0;->q(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v3, v4, v10

    if-eqz v3, :cond_e

    .line 36
    :cond_b
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 39
    array-length v4, v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_c

    aget-object v6, v3, v5

    .line 40
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 41
    :cond_c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 44
    array-length v4, v3

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_d

    aget-object v6, v3, v5

    const-string v10, "pluginLib"

    .line 45
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xinzhu/overmind/plugin/b;->h(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 46
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->is64Bit()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v15, v3, v4}, Lcom/xinzhu/overmind/utils/p;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 47
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/plugin/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v2, v7, v8}, Lcom/join/mgps/va/overmind/f;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files/mod_cfg.ini"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v8}, Lcom/join/mgps/va/overmind/f;->z(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "modFile.absolutePath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/join/mgps/va/overmind/h$a;->b(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 51
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    const-string v5, "it.mVersionName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget v3, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move/from16 v21, v3

    move-object/from16 v20, v4

    goto :goto_8

    :cond_f
    const-string v3, "1.0"

    move-object/from16 v20, v3

    const/16 v21, 0x1

    .line 53
    :goto_8
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v18, v1

    .line 55
    invoke-static/range {v18 .. v23}, Lcom/join/mgps/va/overmind/g;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    const-string v3, "gameId"

    .line 56
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v1, v3}, Lcom/join/mgps/va/overmind/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/plugin/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
