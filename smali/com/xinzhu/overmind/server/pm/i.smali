.class public Lcom/xinzhu/overmind/server/pm/i;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# static fields
.field private static final a:Ljava/lang/String; = "i"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "flags",
            "state",
            "appInfo"
        }
    .end annotation

    .line 1
    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/xinzhu/overmind/client/hook/env/a;->c(Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    return p2

    .line 2
    :cond_0
    iget-boolean p0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a:Z

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->c:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origin"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/server/pm/h;->getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/f;->d()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/frameworks/f;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-object p0

    .line 4
    :cond_2
    iget-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    move-result v1

    .line 6
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->k()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    .line 7
    sget-object v1, Lcom/xinzhu/overmind/server/pm/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transformApplicationInfo "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v1

    .line 9
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 10
    iget-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 11
    new-instance p0, Ljava/io/File;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 12
    iget-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 13
    iget-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 14
    iget-object p0, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {p0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 15
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 17
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    new-array v0, v3, [Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 21
    :cond_5
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 22
    iget-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 23
    :try_start_0
    new-instance p0, Lcom/xinzhu/haunted/android/content/pm/b;

    invoke-direct {p0, v2}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->H(Ljava/lang/String;)Z

    .line 26
    :cond_6
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->F(Ljava/lang/String;)Z

    .line 28
    :cond_7
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 29
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->I(Ljava/lang/String;)Z

    .line 30
    :cond_8
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;->G(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    return-object v2

    :cond_a
    if-eqz v1, :cond_f

    .line 33
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isUseGlobalFakePath()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object p0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object p0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object p0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object p0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 40
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object p0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/client/hook/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 41
    :try_start_1
    new-instance p0, Lcom/xinzhu/haunted/android/content/pm/b;

    invoke-direct {p0, v0}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 43
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/haunted/android/content/pm/b;->H(Ljava/lang/String;)Z

    .line 44
    :cond_b
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 45
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/haunted/android/content/pm/b;->F(Ljava/lang/String;)Z

    .line 46
    :cond_c
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->e()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 47
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/haunted/android/content/pm/b;->I(Ljava/lang/String;)Z

    .line 48
    :cond_d
    invoke-virtual {p0}, Lcom/xinzhu/haunted/android/content/pm/b;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 49
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xinzhu/haunted/android/content/pm/b;->G(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_4
    return-object v0

    :cond_f
    return-object p0
.end method

.method private static c(Landroid/content/pm/ApplicationInfo;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Lcom/xinzhu/haunted/android/content/pm/b;

    invoke-direct {v3, v0}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    move-result v4

    const-string v5, "sharedLibraryFiles skip library "

    if-eqz v4, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1e

    if-ge v4, v6, :cond_1

    const-string v4, "android.test.base"

    .line 5
    invoke-static {v4}, Lcom/xinzhu/overmind/server/pm/i;->m(Ljava/lang/String;)Lcom/xinzhu/overmind/server/f$b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    iget-object v4, v6, Lcom/xinzhu/overmind/server/f$b;->b:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v7, v6, Lcom/xinzhu/overmind/server/f$b;->b:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v6, Lcom/xinzhu/overmind/server/f$b;->a:Ljava/lang/String;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/xinzhu/haunted/android/content/pm/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Lcom/xinzhu/haunted/android/content/pm/k;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lcom/xinzhu/haunted/android/content/pm/k;

    iget-object v4, v4, Lcom/xinzhu/haunted/android/content/pm/k;->a:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    sget-object v6, Lcom/xinzhu/overmind/server/pm/i;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "org.apache.http.legacy"

    .line 11
    invoke-static {v4}, Lcom/xinzhu/overmind/server/pm/i;->m(Ljava/lang/String;)Lcom/xinzhu/overmind/server/f$b;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    iget-object v7, v6, Lcom/xinzhu/overmind/server/f$b;->b:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v6, Lcom/xinzhu/overmind/server/f$b;->a:Ljava/lang/String;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/xinzhu/haunted/android/content/pm/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)Lcom/xinzhu/haunted/android/content/pm/k;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lcom/xinzhu/haunted/android/content/pm/k;

    iget-object v4, v4, Lcom/xinzhu/haunted/android/content/pm/k;->a:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    sget-object v6, Lcom/xinzhu/overmind/server/pm/i;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {v3, v2}, Lcom/xinzhu/haunted/android/content/pm/b;->R(Ljava/util/List;)Z

    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v2

    const-string v3, "/system/framework/org.apache.http.legacy.boot.jar"

    if-eqz v2, :cond_5

    const-string v2, "/system/framework/org.apache.http.legacy.jar"

    .line 17
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->m(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 18
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_2
    sget-object v2, Lcom/xinzhu/overmind/a;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 22
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 23
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/env/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_6
    return-void
.end method

.method public static d(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pi"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/i;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/i;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 7
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/i;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 10
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/i;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 13
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/xinzhu/overmind/server/pm/i;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object p0
.end method

.method public static e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/i;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 4
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/pm/h;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/xinzhu/overmind/server/pm/h;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    return-object v0
.end method

.method public static f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/i;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 3
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->k()Z

    move-result v1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 6
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/xinzhu/overmind/a;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_1
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_4

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 11
    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 12
    :cond_4
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/os/Bundle;

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_5
    if-eqz v1, :cond_6

    .line 14
    iget-object p1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 15
    new-instance p1, Ljava/io/File;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_6
    iget-object p1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/xinzhu/overmind/a;->r(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 17
    new-instance p1, Ljava/io/File;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xinzhu/overmind/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 18
    :goto_2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/xinzhu/overmind/server/pm/h;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 19
    iput-object v2, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 20
    iput-object v2, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 21
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    invoke-static {p1}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 22
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    array-length v3, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_8

    aget-object v7, v2, v6

    .line 25
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->k()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 26
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/xinzhu/overmind/a;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    goto :goto_4

    .line 27
    :cond_7
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 28
    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    new-array v2, v4, [Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v5, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 31
    :cond_9
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    invoke-static {p3, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->h(II)I

    move-result p1

    iput p1, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    new-instance p1, Lcom/xinzhu/haunted/android/content/pm/b;

    invoke-direct {p1, v5}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 33
    new-instance v2, Lcom/xinzhu/haunted/android/content/pm/b;

    invoke-direct {v2, v0}, Lcom/xinzhu/haunted/android/content/pm/b;-><init>(Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/content/pm/b;->L(Ljava/lang/String;)Z

    .line 36
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/content/pm/b;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/content/pm/b;->N(Ljava/lang/String;)Z

    .line 37
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/content/pm/b;->z()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/content/pm/b;->O(Ljava/lang/String;)Z

    .line 38
    :cond_a
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result p2

    if-eqz p2, :cond_f

    if-eqz v1, :cond_b

    .line 39
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/xinzhu/overmind/a;->y(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_5

    .line 40
    :cond_b
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 41
    :goto_5
    :try_start_1
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/b;->d()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 42
    iget-object p0, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->H(Ljava/lang/String;)Z

    .line 43
    :cond_c
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/b;->b()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 44
    iget-object p0, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->F(Ljava/lang/String;)Z

    .line 45
    :cond_d
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/b;->e()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 46
    iget-object p0, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->I(Ljava/lang/String;)Z

    .line 47
    :cond_e
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/b;->c()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 48
    iget-object p0, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/b;->G(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    :cond_f
    :goto_6
    invoke-static {v5}, Lcom/xinzhu/overmind/server/pm/i;->c(Landroid/content/pm/ApplicationInfo;)V

    return-object v5

    :catch_0
    return-object v0
.end method

.method public static final g(Lcom/xinzhu/overmind/server/pm/MindPackage$d;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "flags"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$d;->f:Landroid/content/pm/InstrumentationInfo;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$d;->f:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 3
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static h(Lcom/xinzhu/overmind/server/pm/MindPackage;IJJLcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "flags",
            "firstInstallTime",
            "lastUpdateTime",
            "state",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p6, v0}, Lcom/xinzhu/overmind/server/pm/i;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    sget-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 6
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8
    iget v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->r:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->t:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 11
    iget v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->w:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 12
    invoke-static {p0, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13
    iput-wide p2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 14
    iput-wide p4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 15
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 16
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 17
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_1
    and-int/lit16 p2, p1, 0x100

    if-eqz p2, :cond_2

    new-array p2, v3, [I

    .line 19
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_2
    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_6

    .line 20
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_4

    .line 21
    new-array p2, p2, [Landroid/content/pm/ConfigurationInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 22
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    :cond_4
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    if-lez p2, :cond_6

    .line 24
    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 25
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_6
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_9

    .line 26
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 27
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_9

    .line 28
    new-array p3, p2, [Landroid/content/pm/ActivityInfo;

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_2
    if-ge p4, p2, :cond_8

    .line 29
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 30
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v4

    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5, p1, p7}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v4, p5, 0x1

    .line 31
    invoke-static {v2, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/i;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    aput-object v2, p3, p5

    move p5, v4

    :cond_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 32
    :cond_8
    invoke-static {p3, p5}, Lcom/xinzhu/overmind/utils/d;->p([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_9
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_c

    .line 33
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 34
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 35
    new-array p3, p2, [Landroid/content/pm/ActivityInfo;

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_3
    if-ge p4, p2, :cond_b

    .line 36
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 37
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v4

    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5, p1, p7}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v4, p5, 0x1

    .line 38
    invoke-static {v2, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/i;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    aput-object v2, p3, p5

    move p5, v4

    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 39
    :cond_b
    invoke-static {p3, p5}, Lcom/xinzhu/overmind/utils/d;->p([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ActivityInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_c
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_f

    .line 40
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 41
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 42
    new-array p3, p2, [Landroid/content/pm/ServiceInfo;

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_4
    if-ge p4, p2, :cond_e

    .line 43
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 44
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v4

    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4, v5, p1, p7}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v4, p5, 0x1

    .line 45
    invoke-static {v2, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/i;->l(Lcom/xinzhu/overmind/server/pm/MindPackage$h;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    aput-object v2, p3, p5

    move p5, v4

    :cond_d
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 46
    :cond_e
    invoke-static {p3, p5}, Lcom/xinzhu/overmind/utils/d;->p([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ServiceInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_f
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_12

    .line 47
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 48
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 49
    new-array p3, p2, [Landroid/content/pm/ProviderInfo;

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_5
    if-ge p4, p2, :cond_11

    .line 50
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 51
    invoke-static {v2, p1, p6, p7}, Lcom/xinzhu/overmind/server/pm/i;->k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 52
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object v5

    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5, v2, p1, p7}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit8 v2, p5, 0x1

    .line 53
    aput-object v4, p3, p5

    move p5, v2

    :cond_10
    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 54
    :cond_11
    invoke-static {p3, p5}, Lcom/xinzhu/overmind/utils/d;->p([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/ProviderInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_12
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_13

    .line 55
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 56
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_13

    .line 57
    new-array p3, p2, [Landroid/content/pm/InstrumentationInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 p3, 0x0

    :goto_6
    if-ge p3, p2, :cond_13

    .line 58
    iget-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p5, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/xinzhu/overmind/server/pm/MindPackage$d;

    .line 60
    invoke-static {p5, p1}, Lcom/xinzhu/overmind/server/pm/i;->g(Lcom/xinzhu/overmind/server/pm/MindPackage$d;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p5

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_13
    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_15

    .line 61
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 62
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_14

    .line 63
    new-array p3, p2, [Landroid/content/pm/PermissionInfo;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    const/4 p3, 0x0

    :goto_7
    if-ge p3, p2, :cond_14

    .line 64
    iget-object p4, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p5, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/xinzhu/overmind/server/pm/MindPackage$e;

    invoke-static {p5, p1}, Lcom/xinzhu/overmind/server/pm/i;->j(Lcom/xinzhu/overmind/server/pm/MindPackage$e;I)Landroid/content/pm/PermissionInfo;

    move-result-object p5

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 65
    :cond_14
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 66
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_15

    .line 67
    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 68
    new-array p3, p2, [I

    iput-object p3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_15

    .line 69
    iget-object p4, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 70
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object p4, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_15
    and-int/lit8 p2, p1, 0x40

    const/4 p3, 0x1

    if-eqz p2, :cond_18

    .line 71
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->t()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 72
    new-instance p2, Lcom/xinzhu/haunted/android/content/pm/i$a;

    iget-object p4, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {p2, p4}, Lcom/xinzhu/haunted/android/content/pm/i$a;-><init>(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p2}, Lcom/xinzhu/haunted/android/content/pm/i$a;->u()Z

    move-result p4

    if-eqz p4, :cond_16

    new-array p4, p3, [Landroid/content/pm/Signature;

    .line 74
    iput-object p4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 75
    invoke-virtual {p2}, Lcom/xinzhu/haunted/android/content/pm/i$a;->p()[Landroid/content/pm/Signature;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, [Landroid/content/pm/Signature;

    aget-object p2, p2, v3

    aput-object p2, p4, v3

    goto :goto_9

    .line 76
    :cond_16
    invoke-virtual {p2}, Lcom/xinzhu/haunted/android/content/pm/i$a;->v()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 77
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object p2, p2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p2}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_9

    .line 78
    :cond_17
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:[Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 79
    :cond_18
    :goto_9
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->t()Z

    move-result p2

    if-eqz p2, :cond_1c

    const/high16 p2, 0x8000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1c

    .line 80
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    if-eqz p1, :cond_1c

    .line 81
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 82
    new-instance p1, Lcom/xinzhu/haunted/android/content/pm/i$a;

    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {p1, p0}, Lcom/xinzhu/haunted/android/content/pm/i$a;-><init>(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/i$a;->t()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 84
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/i$a;->t()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-virtual {p0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Signature;

    goto :goto_a

    :cond_19
    move-object p0, v1

    .line 85
    :goto_a
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/i$a;->s()I

    move-result p2

    .line 86
    new-instance p4, Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/i$a;->r()Landroid/util/ArraySet;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 87
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/i$a;->p()[Landroid/content/pm/Signature;

    move-result-object p5

    if-eqz p5, :cond_1a

    .line 88
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/content/pm/i$a;->p()[Landroid/content/pm/Signature;

    move-result-object p1

    invoke-virtual {p1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Landroid/content/pm/Signature;

    .line 89
    :cond_1a
    invoke-static {p0, p2, p4, v1}, Lcom/xinzhu/haunted/android/content/pm/l;->l([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)Lcom/xinzhu/haunted/android/content/pm/l;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/xinzhu/haunted/android/content/pm/l;

    iget-object p0, p0, Lcom/xinzhu/haunted/android/content/pm/l;->a:Ljava/lang/Object;

    .line 90
    :try_start_0
    const-class p1, Landroid/content/pm/SigningInfo;

    new-array p2, p3, [Ljava/lang/Class;

    sget-object p4, Lcom/xinzhu/haunted/android/content/pm/l;->c:Ljava/lang/Class;

    aput-object p4, p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningInfo;

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 94
    :cond_1b
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {p0}, Lcom/xinzhu/haunted/android/content/pm/m;->e(Ljava/lang/Object;)Lcom/xinzhu/haunted/android/content/pm/m;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/xinzhu/haunted/android/content/pm/m;

    iget-object p0, p0, Lcom/xinzhu/haunted/android/content/pm/m;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/SigningInfo;

    iput-object p0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    :cond_1c
    :goto_b
    return-object v0
.end method

.method public static i(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v2, p1

    move-object v7, p2

    move v8, p3

    .line 2
    :try_start_0
    invoke-static/range {v1 .. v8}, Lcom/xinzhu/overmind/server/pm/i;->h(Lcom/xinzhu/overmind/server/pm/MindPackage;IJJLcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final j(Lcom/xinzhu/overmind/server/pm/MindPackage$e;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "flags"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$e;->f:Landroid/content/pm/PermissionInfo;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$e;->f:Landroid/content/pm/PermissionInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 3
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static final k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/i;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 3
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 5
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xinzhu/overmind/server/pm/h;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_2

    .line 6
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/xinzhu/overmind/server/pm/h;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/ProviderInfo;->enabled:Z

    return-object v0
.end method

.method public static final l(Lcom/xinzhu/overmind/server/pm/MindPackage$h;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "flags",
            "state",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/i;->a(ILcom/xinzhu/overmind/server/pm/MindPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 4
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/pm/h;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-static {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/xinzhu/overmind/server/pm/h;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result p0

    iput-boolean p0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    return-object v0
.end method

.method private static m(Ljava/lang/String;)Lcom/xinzhu/overmind/server/f$b;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BlockedPrivateApi",
            "PrivateApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/f;->a()Lcom/xinzhu/overmind/server/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/f;->b()Landroid/util/ArrayMap;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xinzhu/overmind/server/f$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
