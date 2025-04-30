.class Lcom/xinzhu/overmind/server/pm/n;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final d:Ljava/lang/String; = "Settings"


# instance fields
.field final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/pm/MindPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/xinzhu/overmind/server/pm/n;->c:I

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/n;->f()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    add-int/lit16 p1, p1, 0x2710

    return p1

    .line 5
    :cond_1
    iget p1, p0, Lcom/xinzhu/overmind/server/pm/n;->c:I

    const/16 v1, 0x4e1f

    if-lt p1, v1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 6
    iput p1, p0, Lcom/xinzhu/overmind/server/pm/n;->c:I

    .line 7
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget p1, p0, Lcom/xinzhu/overmind/server/pm/n;->c:I

    goto :goto_0
.end method

.method private b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "legacyAppId"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    return p1

    :cond_1
    const/16 p1, 0x4e1f

    if-lt p2, p1, :cond_2

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_2
    iget p1, p0, Lcom/xinzhu/overmind/server/pm/n;->c:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xinzhu/overmind/server/pm/n;->c:I

    .line 6
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 p2, p2, 0x2710

    return p2
.end method

.method private f()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/a;->O()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/xinzhu/overmind/utils/j;->v(Ljava/io/File;)[B

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xinzhu/overmind/server/pm/n;->c:I

    .line 6
    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12
    throw v1

    .line 13
    :catch_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/AtomicFile;

    invoke-static {}, Lcom/xinzhu/overmind/a;->O()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget v3, p0, Lcom/xinzhu/overmind/server/pm/n;->c:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/n;->b:Ljava/util/Map;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 5
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 6
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/j;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 8
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11
    throw v1
.end method

.method private k(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->v(Ljava/io/File;)[B

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 7
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 8
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;-><init>(Landroid/os/Parcel;)V

    .line 9
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x80

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 11
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 12
    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v5, v5, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v5

    iget-object v6, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v6, v6, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xinzhu/overmind/server/d;->j(Ljava/lang/String;)V

    .line 14
    iget-object v5, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iput-object v3, v5, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/g;->get()Lcom/xinzhu/overmind/server/pm/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/g;->updatePackage(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I

    .line 16
    :cond_1
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iput-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a()Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object v5

    invoke-static {v3, v4, v5, v4}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, v3, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 18
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->l()Z

    .line 19
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v4, v4, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 20
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    .line 22
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xinzhu/overmind/server/d;->j(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/h;->get()Lcom/xinzhu/overmind/server/pm/h;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/xinzhu/overmind/server/pm/h;->onPackageUninstalled(Ljava/lang/String;I)V

    const-string p1, "Settings"

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 27
    throw p1
.end method


# virtual methods
.method c(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/xinzhu/overmind/entity/pm/InstallOption;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "aPackage",
            "option"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;-><init>()V

    .line 2
    iput-object p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 3
    new-instance p3, Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-direct {p3, p2}, Lcom/xinzhu/overmind/server/pm/MindPackage;-><init>(Landroid/content/pm/PackageParser$Package;)V

    iput-object p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 4
    iput-object v0, p3, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a()Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p3, v1, p2, v1}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p2, p3, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 6
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 7
    :try_start_0
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p3, :cond_0

    .line 8
    iget v1, p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    iput v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    .line 9
    iget-object v1, p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    .line 10
    iget-boolean v1, p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    iput-boolean v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Z

    .line 11
    iget-boolean p3, p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    iput-boolean p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/pm/n;->g(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 13
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {p1}, Lcom/xinzhu/overmind/client/hook/env/b;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->p(Z)V

    :cond_1
    return-object v0

    .line 16
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "registerAppIdLPw err."

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method d(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "aPackage",
            "legacyAppId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;-><init>()V

    .line 2
    new-instance v1, Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-direct {v1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackage;-><init>(Landroid/content/pm/PackageParser$Package;)V

    iput-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 3
    iput-object v0, v1, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->a()Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, v2}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p2, v1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 5
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_0

    .line 7
    iget p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    iput p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    .line 8
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    iput-object p1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Ljava/util/Map;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/xinzhu/overmind/server/pm/n;->h(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    :goto_0
    monitor-exit p2

    return-object v0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "registerAppIdLPw err."

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 3
    iget v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    if-ne v3, p1, :cond_0

    .line 4
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method g(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/n;->a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I

    move-result v0

    iput v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 4
    :goto_1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/n;->i()V

    return v1
.end method

.method h(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "legacyAppId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAppIdTransfer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/n;->b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I

    move-result p2

    iput p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p2

    .line 5
    :goto_1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/n;->i()V

    return v1
.end method

.method public j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/a;->h()Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-direct {p0, v4}, Lcom/xinzhu/overmind/server/pm/n;->k(Ljava/io/File;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
