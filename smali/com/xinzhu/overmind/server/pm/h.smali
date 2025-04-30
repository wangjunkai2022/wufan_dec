.class public Lcom/xinzhu/overmind/server/pm/h;
.super Lcom/xinzhu/overmind/server/pm/d$b;
.source "MindPackageManagerService.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/h$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sService:Lcom/xinzhu/overmind/server/pm/h;

.field private static sUserManager:Lcom/xinzhu/overmind/server/user/c;


# instance fields
.field final mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

.field private mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

.field final mInstallLock:Ljava/lang/Object;

.field private mPackageChangedHandler:Landroid/content/BroadcastReceiver;

.field private mPackageMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/j;",
            ">;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/pm/MindPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/xinzhu/overmind/server/pm/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/server/pm/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/pm/h;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/h;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/server/pm/h;->sService:Lcom/xinzhu/overmind/server/pm/h;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/d$b;-><init>()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/pm/n;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/n;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    .line 3
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mInstallLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackageMonitors:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/server/pm/h$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/h$b;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/server/pm/h$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/pm/h$a;-><init>(Lcom/xinzhu/overmind/server/pm/h;)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackageChangedHandler:Landroid/content/BroadcastReceiver;

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/server/pm/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/a;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackageChangedHandler:Landroid/content/BroadcastReceiver;

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/xinzhu/overmind/server/pm/h;)Lcom/xinzhu/overmind/server/pm/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    return-object p0
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    if-eqz p4, :cond_3

    .line 1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    .line 2
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_0
    if-le p1, p2, :cond_3

    .line 3
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 4
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 5
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v0, v1, :cond_2

    iget-boolean p1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean p2, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    .line 7
    :cond_2
    :goto_0
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s1",
            "s2"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, -0x2

    return p0

    .line 1
    :cond_2
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_3

    return v3

    .line 2
    :cond_3
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_5

    .line 3
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v3, 0x0

    :cond_4
    return v3

    .line 4
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    array-length v1, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    aget-object v5, p0, v4

    .line 6
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_6
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 8
    array-length v1, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_7

    aget-object v5, p1, v4

    .line 9
    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 10
    :cond_7
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v3
.end method

.method static fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defProcessName",
            "processName"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static get()Lcom/xinzhu/overmind/server/pm/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sService:Lcom/xinzhu/overmind/server/pm/h;

    return-object v0
.end method

.method private getActivity(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->updateFlags(II)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/a;->getActivity(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/n;->a:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-nez p1, :cond_0

    .line 5
    monitor-exit v0

    return-object v2

    .line 6
    :cond_0
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    invoke-static {v1, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/i;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 7
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getInstalledApplicationsListInternal(III)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId",
            "callingUid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p3, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter p3

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 6
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 7
    invoke-virtual {v2, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object v2

    .line 8
    invoke-static {v3, p1, v2, p2}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit p3

    return-object v0

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private getPackageUidInternal(Ljava/lang/String;III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "flags",
            "userId",
            "callingUid"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object p4, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_0

    .line 3
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    invoke-static {p3, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->h(II)I

    move-result p1

    monitor-exit p2

    return p1

    .line 4
    :cond_0
    monitor-exit p2

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/n;->e(I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 4
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private installPackageAsExistLocked(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    .line 2
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v1, p2}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v1, p2}, Lcom/xinzhu/overmind/server/user/c;->createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 4
    :cond_0
    iput-object p1, v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/xinzhu/overmind/server/d;->k(Ljava/lang/String;I)V

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/g;->get()Lcom/xinzhu/overmind/server/pm/g;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/xinzhu/overmind/server/pm/g;->installPackageAsExist(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I

    move-result p1

    if-gez p1, :cond_1

    const-string p1, "install apk error."

    .line 8
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 10
    :try_start_1
    invoke-virtual {v1, v2, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->o(ZI)V

    .line 11
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->l()Z

    .line 12
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/n;->j()V

    .line 14
    invoke-virtual {p0, v1, p2}, Lcom/xinzhu/overmind/server/pm/h;->onPackageInstalled(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception p2

    .line 15
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private installPackageAsTransferLocked(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "userId",
            "legacyAppId"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->a()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v2

    .line 2
    new-instance v3, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    invoke-direct {v3}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    .line 3
    :try_start_0
    sget-object v4, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v4, v0}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    sget-object v4, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v4, v0}, Lcom/xinzhu/overmind/server/user/c;->createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 5
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, "installPackageAsTransferLocked apk not found."

    .line 7
    invoke-virtual {v3, v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/xinzhu/overmind/server/pm/h;->parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v0, "parser apk error."

    .line 9
    invoke-virtual {v3, v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v6, v3, Lcom/xinzhu/overmind/entity/pm/InstallResult;->b:Ljava/lang/String;

    .line 11
    invoke-static {v6}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    .line 13
    array-length v10, v7

    if-lez v10, :cond_5

    .line 14
    array-length v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v10, :cond_6

    aget-object v13, v7, v11

    .line 15
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "arm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "arm64"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    const/4 v12, 0x1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    :cond_6
    if-nez v12, :cond_8

    .line 16
    sget-object v10, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    const-string v11, "Ancient legacy package detected."

    invoke-static {v10, v11}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v10, Ljava/io/File;

    const-string v11, "arm"

    invoke-direct {v10, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-static {v10}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    if-eqz v7, :cond_8

    .line 19
    array-length v6, v7

    if-lez v6, :cond_8

    .line 20
    array-length v6, v7

    :goto_1
    if-ge v8, v6, :cond_8

    aget-object v11, v7, v8

    .line 21
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, ".so"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 23
    sget-object v13, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ancient legacy package detected, transfer lib "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11, v13}, Lcom/xinzhu/overmind/utils/j;->r(Ljava/io/File;Ljava/io/File;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 25
    :cond_8
    iget-object v6, v1, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    iget-object v7, v3, Lcom/xinzhu/overmind/entity/pm/InstallResult;->b:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-nez v6, :cond_9

    .line 26
    iget-object v6, v1, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v8, p3

    invoke-virtual {v6, v7, v5, v8}, Lcom/xinzhu/overmind/server/pm/n;->d(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v6

    .line 27
    iput-object v2, v6, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 28
    invoke-static {v4}, Lcom/xinzhu/overmind/utils/a;->a(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v6, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    .line 29
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v2

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/xinzhu/overmind/server/d;->k(Ljava/lang/String;I)V

    .line 30
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v4, v6, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v2, v4}, Lcom/xinzhu/overmind/server/pm/a;->b(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 31
    sget-object v2, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    const-string v4, "installPackageAsTransfer execute fully."

    invoke-static {v2, v4}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 32
    :cond_9
    invoke-virtual {v6, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transfer install found package:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exist within user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object v0

    return-object v0

    .line 34
    :cond_a
    sget-object v2, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    const-string v4, "installPackageAsTransfer execute package exist, user not exist."

    invoke-static {v2, v4}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_2
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    invoke-virtual {v6, v9, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->o(ZI)V

    .line 37
    invoke-virtual {v6}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->l()Z

    .line 38
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/n;->j()V

    .line 40
    invoke-virtual {v1, v6, v0}, Lcom/xinzhu/overmind/server/pm/h;->onPackageInstalled(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V

    .line 41
    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v3

    .line 44
    :cond_b
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data transfer failed for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_0
    move-exception v0

    .line 45
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method private installPackageAsUserLocked(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "option",
            "userId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget-object v3, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v3, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    sget-object v3, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v3, p3}, Lcom/xinzhu/overmind/server/user/c;->createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 4
    :cond_0
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 7
    sget-object v6, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Install FLAG_URI_FILE get scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "file"

    .line 8
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "content"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected uri scheme: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v7, "file"

    .line 10
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    new-instance p1, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 12
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 13
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, v3}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/io/File;Ljava/io/File;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    move-object v2, p1

    move-object p1, p3

    goto/16 :goto_3

    .line 15
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 17
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 18
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 20
    invoke-static {p1, v5}, Lcom/xinzhu/overmind/utils/j;->e(Ljava/io/InputStream;Ljava/io/File;)J

    .line 21
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object p1, v2

    move-object v2, v3

    move-object v3, v5

    :goto_0
    :try_start_3
    const-string v5, ".apks"

    .line 22
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".xapk"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 23
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "special split apk archive detected "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xinzhu/overmind/utils/j;->y(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :try_start_4
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v5

    :cond_4
    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v5

    goto/16 :goto_3

    :cond_5
    :try_start_5
    const-string p1, "Unexpected DocumentFile null"

    .line 28
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    .line 29
    :cond_6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 30
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v2, p1

    .line 31
    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/h;->parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "parser apk error."

    .line 32
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 33
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 34
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    :cond_7
    return-object p1

    .line 35
    :cond_8
    :try_start_8
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->b:Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 37
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    iget-object v6, v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->b:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    iget-object v5, v5, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v3, v5}, Lcom/xinzhu/overmind/server/pm/a;->t(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 38
    :cond_9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, p1, p2}, Lcom/xinzhu/overmind/server/pm/n;->c(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/xinzhu/overmind/entity/pm/InstallOption;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v3

    .line 39
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/a;->a(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v5

    iput-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Ljava/util/HashSet;

    .line 40
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, p3}, Lcom/xinzhu/overmind/server/pm/h;->isInstalled(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a

    .line 41
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v4

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1, p3}, Lcom/xinzhu/overmind/server/d;->k(Ljava/lang/String;I)V

    const/4 v4, 0x1

    .line 42
    :cond_a
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/g;->get()Lcom/xinzhu/overmind/server/pm/g;

    move-result-object p1

    invoke-virtual {p1, v3, p3}, Lcom/xinzhu/overmind/server/pm/g;->installPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I

    move-result p1

    if-gez p1, :cond_c

    const-string p1, "install apk error."

    .line 43
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 44
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 45
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    :cond_b
    return-object p1

    .line 46
    :cond_c
    :try_start_9
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {p1, v5}, Lcom/xinzhu/overmind/server/pm/a;->b(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 47
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 48
    :try_start_a
    invoke-virtual {v3, v6, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->o(ZI)V

    .line 49
    invoke-virtual {v3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->l()Z

    .line 50
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 51
    :try_start_b
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/n;->j()V

    if-eqz v4, :cond_d

    .line 52
    invoke-virtual {p0, v3, p3}, Lcom/xinzhu/overmind/server/pm/h;->onPackageChanged(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V

    goto :goto_2

    .line 53
    :cond_d
    invoke-virtual {p0, v3, p3}, Lcom/xinzhu/overmind/server/pm/h;->onPackageInstalled(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 54
    :goto_2
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 55
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    :cond_e
    return-object v0

    :catchall_2
    move-exception p3

    .line 56
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_3
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catchall_4
    move-exception p1

    .line 57
    :goto_3
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v2, :cond_f

    .line 58
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 59
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    :cond_f
    return-object v0

    :catchall_5
    move-exception p1

    if-eqz v2, :cond_10

    .line 60
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 61
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    .line 62
    :cond_10
    throw p1
.end method

.method private parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

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

    check-cast v1, Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-object v1

    :catchall_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    move-object v2, p1

    if-eqz v0, :cond_2

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {p0, v0, p3, p4}, Lcom/xinzhu/overmind/server/pm/h;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 9
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 10
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 12
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/a;->r(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 16
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v5, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/a;->s(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 17
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 18
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private updateFlags(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId"
        }
    .end annotation

    const/high16 p2, 0xc0000

    and-int v0, p1, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    or-int/2addr p1, p2

    :goto_0
    return p1
.end method


# virtual methods
.method public addPackageMonitor(Lcom/xinzhu/overmind/server/pm/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkUidSignatures(II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid1",
            "uid2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/n;->e(I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p1

    const/4 v1, -0x4

    if-nez p1, :cond_0

    .line 3
    monitor-exit v0

    return v1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/xinzhu/overmind/server/pm/n;->e(I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p2

    if-nez p2, :cond_1

    .line 5
    monitor-exit v0

    return v1

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:[Landroid/content/pm/Signature;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:[Landroid/content/pm/Signature;

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/server/pm/h;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteUser(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 3
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/xinzhu/overmind/server/pm/h;->uninstallPackageAsUser(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/h$b;->a(I)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public doTransferInstalls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    const-string v1, "doTransferInstalls"

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xinzhu/datatransfer/a;->a()V

    return-void
.end method

.method public doTransferInstallsOnlyForMainPackage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    const-string v1, "doTransferInstallsOnlyForMainPackage"

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xinzhu/datatransfer/a;->b()V

    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/a;->getActivity(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_2

    .line 5
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v3, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    .line 7
    invoke-static {v2, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/i;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    .line 9
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAppId(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_0

    .line 3
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:I

    monitor-exit v0

    return p1

    .line 4
    :cond_0
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAppResources(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/h;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/pm/i;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/xinzhu/haunted/android/content/res/b;->e()Lcom/xinzhu/haunted/android/content/res/b;

    move-result-object p2

    .line 4
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/xinzhu/haunted/android/content/res/b;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/content/res/Resources;

    iget-object p2, p2, Lcom/xinzhu/haunted/android/content/res/b;->a:Ljava/lang/Object;

    check-cast p2, Landroid/content/res/AssetManager;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->updateFlags(II)I

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_2

    .line 7
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 8
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    invoke-static {v1, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/i;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

    invoke-virtual {v1, p1, p2}, Lcom/xinzhu/overmind/server/pm/h$b;->b(Landroid/content/ComponentName;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/h;->getInstalledApplicationsListInternal(III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 6
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, p2}, Lcom/xinzhu/overmind/server/pm/h;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 5
    invoke-virtual {v3, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    new-instance v4, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;

    invoke-direct {v4}, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;-><init>()V

    .line 7
    iput p1, v4, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->a:I

    .line 8
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    iput-object v3, v4, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/h;->getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    sget-object p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 6
    iput-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->updateFlags(II)I

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Lcom/xinzhu/overmind/server/pm/i;->i(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method public getPackageUid(Ljava/lang/String;II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v0, "android"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 5
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xinzhu/overmind/server/pm/h;->getPackageUidInternal(Ljava/lang/String;III)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/16 p1, 0x3e8

    return p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 4
    iget-object v4, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v4, v4, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->h(II)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 5
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/a;->f(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_2

    .line 5
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p0, v3, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    .line 7
    invoke-static {v2, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/i;->k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    .line 9
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/a;->g(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_2

    .line 5
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v3, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    .line 7
    invoke-static {v2, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/i;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    .line 9
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/a;->h(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_2

    .line 5
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p0, v3, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->i(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    move-result-object p1

    .line 7
    invoke-static {v2, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/i;->l(Lcom/xinzhu/overmind/server/pm/MindPackage$h;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    .line 9
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getSettings()Lcom/xinzhu/overmind/server/pm/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    return-object v0
.end method

.method public hasSignatureCapability(III)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serverUid",
            "clientUid",
            "capability"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    array-length v3, v0

    if-lez v3, :cond_2

    .line 3
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    .line 5
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/h;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    .line 7
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/h;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p3

    if-nez p3, :cond_3

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    if-eq p1, p2, :cond_6

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/h;->checkUidSignatures(II)I

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public installPackageAsExist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPackageAsExist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/h;->installPackageAsExistLocked(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "userId",
            "legacyAppId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installPackageAsTransfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->installPackageAsTransferLocked(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "option",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/h;->installPackageAsUserLocked(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentInfo",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p2}, Lcom/xinzhu/overmind/server/pm/h$b;->b(Landroid/content/ComponentName;I)I

    move-result p2

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1

    .line 4
    :cond_1
    iget-boolean p1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    return p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentInfo",
            "flags",
            "userId"
        }
    .end annotation

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/xinzhu/overmind/server/pm/h;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result p1

    return p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-nez p1, :cond_1

    .line 4
    monitor-exit v0

    return v1

    .line 5
    :cond_1
    invoke-virtual {p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c(I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onPackageChanged(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mps",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->ifDisablePluginPackageAutoManage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0, p2}, Lcom/xinzhu/overmind/plugin/b;->q(Ljava/lang/String;I)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->p()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackageMonitors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/j;

    .line 7
    invoke-interface {v1, v0, p2}, Lcom/xinzhu/overmind/server/pm/j;->c(Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onPackageInstalled(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mps",
            "userId"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->ifDisablePluginPackageAutoManage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0, p2}, Lcom/xinzhu/overmind/plugin/b;->q(Ljava/lang/String;I)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->p()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackageMonitors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/j;

    .line 7
    invoke-interface {v1, v0, p2}, Lcom/xinzhu/overmind/server/pm/j;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageInstalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onPackageUninstalled(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->ifDisablePluginPackageAutoManage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->p()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/j;

    .line 4
    invoke-interface {v1, p1, p2}, Lcom/xinzhu/overmind/server/pm/j;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageUninstalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    move-object v2, p1

    if-eqz v0, :cond_3

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {p0, v0, p2, p4}, Lcom/xinzhu/overmind/server/pm/h;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p0, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    new-instance p2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 10
    iput-object p3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 13
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v0, v2, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/a;->p(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 17
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v5, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    move-object v3, p3

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/a;->q(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 18
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processName",
            "uid",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {p2, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/xinzhu/overmind/server/pm/a;->o(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :cond_1
    move-object v3, p1

    if-eqz v1, :cond_3

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-virtual {p0, v1, p2, p4}, Lcom/xinzhu/overmind/server/pm/h;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p0, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/h;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    new-instance p2, Landroid/content/pm/ResolveInfo;

    invoke-direct {p2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 11
    iput-object p3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter p1

    if-eqz v0, :cond_7

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 16
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v6, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->a:Ljava/util/ArrayList;

    move-object v4, p3

    move v5, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/xinzhu/overmind/server/pm/a;->j(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    if-nez v1, :cond_6

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :cond_6
    monitor-exit p1

    return-object v1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v0, v3, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/a;->k(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_9

    :cond_8
    if-nez p2, :cond_9

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :cond_9
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 24
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public queryIntentServices(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/h;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removePackageMonitor(Lcom/xinzhu/overmind/server/pm/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackageMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/h;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p4

    .line 3
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/h;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "authority",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/a;->l(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/h;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p4

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/h;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "resolvedType",
            "userId"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/h;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/h;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentName",
            "newState",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/h$b;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/h$b;->e(Landroid/content/ComponentName;III)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMindPackageRunWithPlugin(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "runWithPlugin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->p(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->l()Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public systemReady()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/n;->j()V

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 3
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v2, v1}, Lcom/xinzhu/overmind/server/pm/a;->b(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-nez v2, :cond_0

    .line 4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 5
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xinzhu/overmind/server/d;->j(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/g;->get()Lcom/xinzhu/overmind/server/pm/g;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v2, v6, v7}, Lcom/xinzhu/overmind/server/pm/g;->uninstallPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ZI)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/xinzhu/overmind/server/pm/h;->onPackageUninstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {p1, v2}, Lcom/xinzhu/overmind/server/pm/a;->t(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 11
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/n;->j()V

    .line 12
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/h;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    if-nez v2, :cond_0

    .line 4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 5
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/h;->isInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 7
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 8
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/server/d;->d()Lcom/xinzhu/overmind/server/d;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/xinzhu/overmind/server/d;->k(Ljava/lang/String;I)V

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/g;->get()Lcom/xinzhu/overmind/server/pm/g;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p2}, Lcom/xinzhu/overmind/server/pm/g;->uninstallPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ZI)I

    if-eqz v4, :cond_3

    .line 10
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/h;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/a;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/a;->t(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 12
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/h;->mSettings:Lcom/xinzhu/overmind/server/pm/n;

    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/n;->j()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v2, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->j(I)V

    .line 14
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->l()Z

    .line 15
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/h;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 16
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1

    :catchall_1
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method
