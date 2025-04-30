.class public Lcom/xinzhu/overmind/client/hook/env/b;
.super Ljava/lang/Object;
.source "GmsEnv.java"


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "com.google.android.gms"

.field public static final d:Ljava/lang/String; = "com.google.android.gsf"

.field public static final e:Ljava/lang/String; = "com.android.vending"

.field public static final f:Ljava/lang/String; = "com.google.android.gsf.login"

.field public static final g:Ljava/lang/String; = "com.google.android.play.games"

.field private static final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/env/b;->b:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xinzhu/overmind/client/hook/env/b;->h:Ljava/util/ArrayList;

    const-string v2, "com.google.android.gms"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "com.google.android.gsf"

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.vending"

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "com.google.android.gsf.login"

    .line 6
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "com.google.android.play.games"

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.backuptransport"

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.backup"

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.configupdater"

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.syncadapters.contacts"

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.feedback"

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.onetimeinitializer"

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.partnersetup"

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.setupwizard"

    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.syncadapters.calendar"

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()Z
    .locals 1

    const-string v0, "com.google.android.gms"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/overmind/Overmind;->isPkgInstalledOutside(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gsf"

    invoke-static {v0}, Lcom/xinzhu/overmind/Overmind;->isPkgInstalledOutside(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/xinzhu/overmind/Overmind;->isPkgInstalledOutside(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/env/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/env/b;->d(I)V

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/h;->d()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/frameworks/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 4
    iget v1, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/env/b;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/xinzhu/overmind/Overmind;->installPackageAsUser_Exist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, p0}, Lcom/xinzhu/overmind/Overmind;->installPackageAsUser_Storage(Ljava/io/File;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GmsApkDir"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/h;->d()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/frameworks/h;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 6
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v6

    iget v7, v2, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    invoke-virtual {v6, v5, v7}, Lcom/xinzhu/overmind/Overmind;->installPackageAsUser_Storage(Ljava/io/File;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static g(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runWithPlugin"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/env/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/xinzhu/overmind/client/frameworks/f;->C(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
