.class public Lcom/xinzhu/overmind/client/frameworks/f;
.super Ljava/lang/Object;
.source "MindPackageManager.java"


# static fields
.field public static final b:Ljava/lang/String; = "f"

.field private static c:Lcom/xinzhu/overmind/client/frameworks/f;


# instance fields
.field private a:Lcom/xinzhu/overmind/server/pm/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/frameworks/f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/frameworks/f;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/f;->c:Lcom/xinzhu/overmind/client/frameworks/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static d()Lcom/xinzhu/overmind/client/frameworks/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/f;->c:Lcom/xinzhu/overmind/client/frameworks/f;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public B(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public C(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkgName",
            "runWithPlugin"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->setMindPackageRunWithPlugin(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public D(Ljava/lang/String;)V
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/pm/d;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public E(Ljava/lang/String;I)V
    .locals 1
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->uninstallPackageAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/xinzhu/overmind/server/pm/d;->doTransferInstalls()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/xinzhu/overmind/server/pm/d;->doTransferInstallsOnlyForMainPackage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(II)Ljava/util/List;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(II)Ljava/util/List;
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
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(I)Ljava/util/List;
    .locals 1
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/pm/d;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
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
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.INFO"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0, v0, v4, v3, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    const-string v5, "android.intent.category.LAUNCHER"

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0, v0, v4, v2, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    :cond_1
    const-string v2, "android.intent.category.DEFAULT"

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_3

    .line 13
    :cond_2
    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p0, v0, v4, v3, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    :cond_3
    const-string v5, "android.intent.category.default"

    if-eqz v3, :cond_4

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_5

    .line 19
    :cond_4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {p0, v0, v4, v2, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_7

    .line 25
    :cond_6
    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    :cond_7
    if-eqz v3, :cond_9

    .line 30
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_8

    goto :goto_0

    .line 31
    :cond_8
    sget-object p1, Lcom/xinzhu/overmind/client/frameworks/f;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLaunchIntentForPackage get "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p2, 0x10000000

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 35
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/pm/d;->getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public m(I)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/pm/d;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 1
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentName",
            "flags",
            "userId"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public p()Lcom/xinzhu/overmind/server/pm/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/f;->a:Lcom/xinzhu/overmind/server/pm/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/f;->a:Lcom/xinzhu/overmind/server/pm/d;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "package_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/d$b;->asInterface(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/f;->a:Lcom/xinzhu/overmind/server/pm/d;

    .line 4
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 1
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 1
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->installPackageAsExist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Ljava/lang/String;I)Z
    .locals 1
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/server/pm/d;->isInstalled(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public u(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public v(Ljava/lang/String;III)Ljava/util/List;
    .locals 1
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

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->queryIntentServices(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public y(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/d;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public z(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
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
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/f;->p()Lcom/xinzhu/overmind/server/pm/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/d;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
