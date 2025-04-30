.class public Lcom/xinzhu/overmind/client/e;
.super Lcom/xinzhu/overmind/client/c$b;
.source "Overlord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/e$l;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final HANDLE_FINISH:I

.field public static final HANDLE_NEW_INTENT:I

.field public static final TAG:Ljava/lang/String;

.field private static sOverlord:Lcom/xinzhu/overmind/client/e;


# instance fields
.field private mActivityThread:Landroid/os/IInterface;

.field private mBoundApplication:Lcom/xinzhu/overmind/client/e$l;

.field private mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;

.field private final mH:Landroid/os/Handler;

.field private mInitialApplication:Landroid/app/Application;

.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/xinzhu/overmind/client/e;

    .line 2
    const-class v0, Lcom/xinzhu/overmind/client/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xinzhu/overmind/client/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/c$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/e;->mProviders:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/e;->mH:Landroid/os/Handler;

    return-void
.end method

.method private createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private gameSpecificHooks(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, [Ljava/lang/String;

    const-string v2, "applySingleLine"

    const-string v3, "android.widget.TextView"

    :try_start_0
    sget-object v4, Lcom/xinzhu/overmind/client/e;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gameSpecificHooks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.google.android.gsf"

    .line 2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "com.google.android.gsf.gservices.GservicesProvider"

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string v11, "query"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const-class v13, Landroid/net/Uri;

    aput-object v13, v12, v8

    aput-object v1, v12, v7

    aput-object v0, v12, v9

    aput-object v1, v12, v5

    aput-object v0, v12, v6

    new-instance v0, Lcom/xinzhu/overmind/client/e$h;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/client/e$h;-><init>(Lcom/xinzhu/overmind/client/e;)V

    aput-object v0, v12, v4

    invoke-static {p1, v10, v11, v12}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catchall_0
    :cond_0
    :try_start_2
    const-class p1, Landroid/app/DialogFragment;

    const-string v0, "onDismiss"

    new-array v1, v9, [Ljava/lang/Object;

    const-class v10, Landroid/content/DialogInterface;

    aput-object v10, v1, v8

    new-instance v10, Lcom/xinzhu/overmind/client/e$i;

    invoke-direct {v10, p0}, Lcom/xinzhu/overmind/client/e$i;-><init>(Lcom/xinzhu/overmind/client/e;)V

    aput-object v10, v1, v7

    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 5
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 6
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v8

    aput-object v1, v0, v7

    aput-object v1, v0, v9

    new-instance v1, Lcom/xinzhu/overmind/client/e$j;

    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/client/e$j;-><init>(Lcom/xinzhu/overmind/client/e;)V

    aput-object v1, v0, v5

    invoke-static {v3, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 7
    :catchall_2
    :try_start_5
    sget-object p1, Lcom/xinzhu/overmind/client/e;->TAG:Ljava/lang/String;

    const-string v0, "Cannot do hook ZZZ, try ZZZZ."

    invoke-static {p1, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v8

    aput-object v1, v0, v7

    aput-object v1, v0, v9

    aput-object v1, v0, v5

    new-instance v1, Lcom/xinzhu/overmind/client/e$k;

    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/client/e$k;-><init>(Lcom/xinzhu/overmind/client/e;)V

    aput-object v1, v0, v6

    invoke-static {v3, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 9
    :catchall_3
    sget-object p1, Lcom/xinzhu/overmind/client/e;->TAG:Ljava/lang/String;

    const-string v0, "Cannot do hook both!"

    invoke-static {p1, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getBaseVUid()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->g:I

    :goto_0
    return v0
.end method

.method public static getClient()Lcom/xinzhu/overmind/client/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/e;->sOverlord:Lcom/xinzhu/overmind/client/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xinzhu/overmind/client/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/client/e;->sOverlord:Lcom/xinzhu/overmind/client/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xinzhu/overmind/client/e;

    invoke-direct {v1}, Lcom/xinzhu/overmind/client/e;-><init>()V

    sput-object v1, Lcom/xinzhu/overmind/client/e;->sOverlord:Lcom/xinzhu/overmind/client/e;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xinzhu/overmind/client/e;->sOverlord:Lcom/xinzhu/overmind/client/e;

    return-object v0
.end method

.method public static declared-synchronized getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;
    .locals 2

    const-class v0, Lcom/xinzhu/overmind/client/e;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v1

    iget-object v1, v1, Lcom/xinzhu/overmind/client/e;->mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/client/e;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public static getUid()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->e:I

    :goto_0
    return v0
.end method

.method public static getUserId()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->f:I

    :goto_0
    return v0
.end method

.method public static getVPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->a:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVPid()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->c:I

    :goto_0
    return v0
.end method

.method public static getVProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/client/e;->mBoundApplication:Lcom/xinzhu/overmind/client/e$l;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/client/e;->mBoundApplication:Lcom/xinzhu/overmind/client/e$l;

    iget-object v0, v0, Lcom/xinzhu/overmind/client/e$l;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVUid()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->d:I

    :goto_0
    return v0
.end method

.method private installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "processName",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/ProviderInfo;

    .line 3
    iget-object v2, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    aget-object v2, v2, v3

    iput-object v2, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 5
    sget-object v2, Lcom/xinzhu/overmind/client/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installProviders info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v3, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/xinzhu/haunted/android/app/g;->c0(Landroid/content/Context;Ljava/lang/Object;Landroid/content/pm/ProviderInfo;ZZZ)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v3, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/xinzhu/haunted/android/app/g;->b0(Landroid/content/Context;Ljava/lang/Object;Landroid/content/pm/ProviderInfo;ZZZ)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 10
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/c;->d()V

    return-void

    :catchall_1
    move-exception p1

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/c;->d()V

    .line 15
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private uidHooks()V
    .locals 7

    .line 1
    :try_start_0
    const-class v0, Landroid/os/Binder;

    const-string v1, "getCallingUid"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Lcom/xinzhu/overmind/client/e$e;

    invoke-direct {v4, p0}, Lcom/xinzhu/overmind/client/e$e;-><init>(Lcom/xinzhu/overmind/client/e;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 3
    const-class v0, Landroid/content/AttributionSource;

    const-string v1, "checkCallingUid"

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Lcom/xinzhu/overmind/client/e$f;

    invoke-direct {v4, p0}, Lcom/xinzhu/overmind/client/e$f;-><init>(Lcom/xinzhu/overmind/client/e;)V

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 4
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.provider.DeviceConfig"

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "enforceReadPermission"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    new-instance v5, Lcom/xinzhu/overmind/client/e$g;

    invoke-direct {v5, p0}, Lcom/xinzhu/overmind/client/e$g;-><init>(Lcom/xinzhu/overmind/client/e;)V

    aput-object v5, v4, v2

    invoke-static {v0, v1, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/e;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/client/e;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/xinzhu/haunted/android/content/e;

    invoke-direct {v0, p1}, Lcom/xinzhu/haunted/android/content/e;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/content/e;->b()Landroid/os/IInterface;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;-><init>()V

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->b(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public bindApplication()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/e;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/client/e;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "packageName",
            "processName"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/xinzhu/overmind/client/e$c;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xinzhu/overmind/client/e$c;-><init>(Lcom/xinzhu/overmind/client/e;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/client/e;->handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createJobService(Landroid/content/pm/ServiceInfo;)Landroid/app/Service;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceInfo"
        }
    .end annotation

    const-string v0, ": "

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/e;->isInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xinzhu/overmind/client/e;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/xinzhu/haunted/android/app/t;

    iget-object v2, p0, Lcom/xinzhu/overmind/client/e;->mBoundApplication:Lcom/xinzhu/overmind/client/e$l;

    iget-object v2, v2, Lcom/xinzhu/overmind/client/e$l;->e:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/t;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/t;->i()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/xinzhu/haunted/android/app/k;

    invoke-direct {v3, v2}, Lcom/xinzhu/haunted/android/app/k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/xinzhu/haunted/android/app/k;->p(Landroid/content/Context;)V

    .line 7
    new-instance v5, Lcom/xinzhu/haunted/android/app/w;

    invoke-direct {v5, v1}, Lcom/xinzhu/haunted/android/app/w;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xinzhu/overmind/client/e;->getActivityThread()Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, p0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v11

    move-object v6, v2

    invoke-virtual/range {v5 .. v11}, Lcom/xinzhu/haunted/android/app/w;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 8
    invoke-static {v2}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 11
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create JobService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 13
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createService(Landroid/content/pm/ServiceInfo;)Landroid/app/Service;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceInfo"
        }
    .end annotation

    const-string v0, ": "

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/e;->isInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xinzhu/overmind/client/e;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/xinzhu/haunted/android/app/t;

    iget-object v2, p0, Lcom/xinzhu/overmind/client/e;->mBoundApplication:Lcom/xinzhu/overmind/client/e$l;

    iget-object v2, v2, Lcom/xinzhu/overmind/client/e$l;->e:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/t;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/t;->i()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/xinzhu/haunted/android/app/k;

    invoke-direct {v3, v2}, Lcom/xinzhu/haunted/android/app/k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/xinzhu/haunted/android/app/k;->p(Landroid/content/Context;)V

    .line 7
    new-instance v5, Lcom/xinzhu/haunted/android/app/w;

    invoke-direct {v5, v1}, Lcom/xinzhu/haunted/android/app/w;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getClient()Lcom/xinzhu/overmind/client/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xinzhu/overmind/client/e;->getActivityThread()Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, p0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    .line 10
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v11

    move-object v6, v2

    .line 11
    invoke-virtual/range {v5 .. v11}, Lcom/xinzhu/haunted/android/app/w;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 12
    invoke-static {v2}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 14
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public finishActivity(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/e;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/xinzhu/overmind/client/e$a;

    invoke-direct {v1, p0, p1}, Lcom/xinzhu/overmind/client/e$a;-><init>(Lcom/xinzhu/overmind/client/e;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getActivityThread()Landroid/os/IBinder;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->H()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/client/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/e;->mBoundApplication:Lcom/xinzhu/overmind/client/e$l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getCustomCallback()Lcom/xinzhu/overmind/custom/CustomCallback;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/xinzhu/overmind/custom/CustomCallback;->customIORedirect(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/client/VMCore;->initClientClassloader(Ljava/lang/ClassLoader;)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/VMCore;->init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xinzhu/overmind/client/frameworks/f;->l(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/i;->d(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 10
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 11
    invoke-static {p2, v0}, Lcom/xinzhu/overmind/client/hook/env/c;->h(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/f;->d()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVUid()I

    move-result v2

    const/16 v3, 0x80

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v4

    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/xinzhu/overmind/client/frameworks/f;->v(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xinzhu/overmind/client/e;->mProviders:Ljava/util/List;

    .line 13
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->R()Ljava/lang/Object;

    move-result-object v2

    .line 15
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/e;->createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    move-result-object v3

    .line 16
    new-instance v4, Lcom/xinzhu/haunted/android/app/k;

    invoke-direct {v4, v3}, Lcom/xinzhu/haunted/android/app/k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/xinzhu/haunted/android/app/k;->m()Ljava/lang/Object;

    move-result-object v4

    .line 17
    new-instance v5, Lcom/xinzhu/haunted/android/app/t;

    invoke-direct {v5, v4}, Lcom/xinzhu/haunted/android/app/t;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 18
    invoke-virtual {v5, v6}, Lcom/xinzhu/haunted/android/app/t;->s(Z)Z

    .line 19
    invoke-virtual {v5, v0}, Lcom/xinzhu/haunted/android/app/t;->q(Landroid/content/pm/ApplicationInfo;)Z

    .line 20
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x9

    if-ge v7, v8, :cond_1

    .line 21
    new-instance v8, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    .line 22
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 23
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x18

    if-ge v7, v8, :cond_2

    .line 24
    invoke-static {}, Lcom/xinzhu/haunted/android/os/r;->c()V

    .line 25
    :cond_2
    invoke-static {}, Lcom/xinzhu/haunted/dalvik/system/a;->e()Lcom/xinzhu/haunted/dalvik/system/a;

    move-result-object v7

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v7, v8}, Lcom/xinzhu/haunted/dalvik/system/a;->h(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v7, "dalvik.system.VMRuntime"

    .line 26
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string v9, "setHiddenApiExemptions"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-class v11, [Ljava/lang/String;

    aput-object v11, v10, v6

    const/4 v11, 0x1

    new-instance v12, Lcom/xinzhu/overmind/client/e$d;

    invoke-direct {v12, p0}, Lcom/xinzhu/overmind/client/e$d;-><init>(Lcom/xinzhu/overmind/client/e;)V

    aput-object v12, v10, v11

    .line 27
    invoke-static {v7, v8, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :catchall_1
    :try_start_4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xinzhu/overmind/Overmind;->getCustomCallback()Lcom/xinzhu/overmind/custom/CustomCallback;

    move-result-object v7

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/xinzhu/overmind/custom/CustomCallback;->customLoadLibgggg(Ljava/lang/String;I)V

    .line 29
    new-instance v7, Lcom/xinzhu/overmind/client/e$l;

    invoke-direct {v7}, Lcom/xinzhu/overmind/client/e$l;-><init>()V

    .line 30
    iput-object v0, v7, Lcom/xinzhu/overmind/client/e$l;->c:Landroid/content/pm/ApplicationInfo;

    .line 31
    iput-object p2, v7, Lcom/xinzhu/overmind/client/e$l;->b:Ljava/lang/String;

    .line 32
    iput-object v4, v7, Lcom/xinzhu/overmind/client/e$l;->e:Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/xinzhu/overmind/client/e;->mProviders:Ljava/util/List;

    iput-object v0, v7, Lcom/xinzhu/overmind/client/e$l;->d:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/xinzhu/haunted/android/app/g$b;

    invoke-direct {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;-><init>(Ljava/lang/Object;)V

    .line 35
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v7, Lcom/xinzhu/overmind/client/e$l;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v8, Landroid/app/Instrumentation;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->m(Landroid/content/ComponentName;)Z

    .line 36
    iget-object v2, v7, Lcom/xinzhu/overmind/client/e$l;->c:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->k(Landroid/content/pm/ApplicationInfo;)Z

    .line 37
    iget-object v2, v7, Lcom/xinzhu/overmind/client/e$l;->e:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->l(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, v7, Lcom/xinzhu/overmind/client/e$l;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->n(Ljava/lang/String;)Z

    .line 39
    iget-object v2, v7, Lcom/xinzhu/overmind/client/e$l;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->o(Ljava/util/List;)Z

    .line 40
    iput-object v7, p0, Lcom/xinzhu/overmind/client/e;->mBoundApplication:Lcom/xinzhu/overmind/client/e$l;

    const-string v0, "AndroidNSSP"

    .line 41
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 43
    invoke-static {v2}, Lcom/xinzhu/haunted/android/security/net/config/a;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 44
    :cond_3
    :try_start_5
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/e;->uidHooks()V

    .line 45
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lcom/xinzhu/overmind/client/hook/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 46
    invoke-virtual {v5, v6, v2}, Lcom/xinzhu/haunted/android/app/t;->p(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    .line 48
    invoke-virtual {v1, v0}, Lcom/xinzhu/haunted/android/app/g;->j0(Landroid/app/Application;)Z

    .line 49
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->O()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 50
    iget-object v1, p0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 51
    iget-object v1, p0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    iget-object v2, v7, Lcom/xinzhu/overmind/client/e$l;->b:Ljava/lang/String;

    iget-object v3, v7, Lcom/xinzhu/overmind/client/e$l;->d:Ljava/util/List;

    invoke-direct {p0, v1, v2, v3}, Lcom/xinzhu/overmind/client/e;->installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 52
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/xinzhu/overmind/client/hook/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 53
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/b;->e()Lcom/xinzhu/overmind/client/hook/delegate/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/client/hook/delegate/b;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 54
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/xinzhu/overmind/client/hook/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 55
    iget-object p2, p0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/client/e;->registerReceivers(Landroid/app/Application;)V

    .line 56
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/d;->c()Lcom/xinzhu/overmind/client/hook/d;

    move-result-object p2

    const-class v0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;

    invoke-virtual {p2, v0}, Lcom/xinzhu/overmind/client/hook/d;->b(Ljava/lang/Class;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/e;->gameSpecificHooks(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 58
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 59
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to makeApplication"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "token",
            "intent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/e;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/xinzhu/overmind/client/e$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/xinzhu/overmind/client/e$b;-><init>(Lcom/xinzhu/overmind/client/e;Landroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initProcess(Lcom/xinzhu/overmind/entity/ClientConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientConfig"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/e;->mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/client/e;->mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject init process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this process is : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xinzhu/overmind/client/e;->mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;

    iget-object p1, p1, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/e;->mBoundApplication:Lcom/xinzhu/overmind/client/e$l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadXposed(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    return-void
.end method

.method public peekService(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/b;->b()Lcom/xinzhu/overmind/server/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/b;->k(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public registerReceivers(Landroid/app/Application;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object p1

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->u(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 7
    iget-object v2, p0, Lcom/xinzhu/overmind/client/e;->mInitialApplication:Landroid/app/Application;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v1, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    sget-object v2, Lcom/xinzhu/overmind/client/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to registerReceiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public restartJobService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public stopService(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/b;->b()Lcom/xinzhu/overmind/server/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/b;->stopService(Landroid/content/Intent;)V

    return-void
.end method
