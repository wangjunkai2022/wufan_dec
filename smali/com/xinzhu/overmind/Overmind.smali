.class public Lcom/xinzhu/overmind/Overmind;
.super Lcom/xinzhu/overmind/client/a;
.source "Overmind.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/Overmind$ProcessType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "Overmind"

.field private static hostPm:Lcom/xinzhu/haunted/android/content/pm/e;

.field private static hostRealUid:I

.field private static sContext:Landroid/content/Context;

.field private static sOvermind:Lcom/xinzhu/overmind/Overmind;


# instance fields
.field private mActivityLifecycleCallback:Lcom/xinzhu/overmind/client/hook/delegate/a;

.field private mAppLifecycleCallback:Lcom/xinzhu/overmind/client/hook/a;

.field private mClientConfiguration:Lcom/xinzhu/overmind/client/a;

.field private mCustomCallback:Lcom/xinzhu/overmind/custom/CustomCallback;

.field private mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

.field private mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/Overmind;

    invoke-direct {v0}, Lcom/xinzhu/overmind/Overmind;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/Overmind;->sOvermind:Lcom/xinzhu/overmind/Overmind;

    .line 2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/xinzhu/overmind/Overmind;->hostRealUid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mServices:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/xinzhu/overmind/client/hook/a;->a:Lcom/xinzhu/overmind/client/hook/a;

    iput-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mAppLifecycleCallback:Lcom/xinzhu/overmind/client/hook/a;

    .line 4
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/a;->a:Lcom/xinzhu/overmind/client/hook/delegate/a;

    iput-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mActivityLifecycleCallback:Lcom/xinzhu/overmind/client/hook/delegate/a;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mCustomCallback:Lcom/xinzhu/overmind/custom/CustomCallback;

    return-void
.end method

.method public static critical(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get()Lcom/xinzhu/overmind/Overmind;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->sOvermind:Lcom/xinzhu/overmind/Overmind;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHostPkg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostPm()Lcom/xinzhu/haunted/android/content/pm/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/e;

    return-object v0
.end method

.method public static getHostUid()I
    .locals 1

    .line 1
    sget v0, Lcom/xinzhu/overmind/Overmind;->hostRealUid:I

    return v0
.end method

.method public static getHostUserId()I
    .locals 1

    .line 1
    sget v0, Lcom/xinzhu/overmind/Overmind;->hostRealUid:I

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->k(I)I

    move-result v0

    return v0
.end method

.method public static getMainPkg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/a;->d()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v0

    return-object v0
.end method

.method public static getMindJobManager()Lcom/xinzhu/overmind/client/frameworks/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/d;->c()Lcom/xinzhu/overmind/client/frameworks/d;

    move-result-object v0

    return-object v0
.end method

.method public static getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/f;->d()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    return-object v0
.end method

.method public static getMindStorageManager()Lcom/xinzhu/overmind/client/frameworks/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/g;->a()Lcom/xinzhu/overmind/client/frameworks/g;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginPkg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getPluginPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 5
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "processName = null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static getStackTraceElement()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, v0, v1

    .line 4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initHostPm(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/xinzhu/haunted/android/content/pm/e;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->M()Landroid/os/IInterface;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/content/pm/e;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/e;

    return-void
.end method

.method private initJarEnv()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "junit.jar"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/xinzhu/overmind/a;->h:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/j;->e(Ljava/io/InputStream;Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static initJavaHooks()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/VMCore;->initLibrary()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/haunted/dalvik/system/a;->e()Lcom/xinzhu/haunted/dalvik/system/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/haunted/dalvik/system/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/xinzhu/haunted/dalvik/system/a;->e()Lcom/xinzhu/haunted/dalvik/system/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/haunted/dalvik/system/a;->g()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/swift/sandhook/SandHookConfig;->DEBUG:Z

    goto :goto_0

    .line 4
    :cond_0
    sput-boolean v0, Lcom/swift/sandhook/SandHookConfig;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_0
    sput-boolean v0, Lcom/swift/sandhook/HookLog;->DEBUG:Z

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v1, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 8
    sget v1, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/swift/sandhook/SandHookConfig;->compiler:Z

    .line 9
    sput-boolean v0, Lcom/swift/sandhook/SandHookConfig;->delayHook:Z

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/Overmind$a;

    invoke-direct {v0}, Lcom/xinzhu/overmind/Overmind$a;-><init>()V

    invoke-static {v0}, Lcom/swift/sandhook/SandHook;->setHookModeCallBack(Lcom/swift/sandhook/SandHook$HookModeCallBack;)V

    .line 11
    invoke-static {}, Lcom/swift/sandhook/SandHook;->disableVMInline()Z

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "hook_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/swift/sandhook/xposedcompat/XposedCompat;->cacheDir:Ljava/io/File;

    return-void
.end method

.method private initService()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "activity_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "package_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "storage_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    const-string v1, "job_manager"

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    return-void
.end method

.method public static is64Bit()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMAppClientProcess(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/a;->getHostPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v2
.end method

.method public static isPkgInstalledOutside(Ljava/lang/String;)Z
    .locals 5
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
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    .line 2
    sget-object v3, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/e;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    move-result v4

    invoke-virtual {v3, p0, v1, v2, v4}, Lcom/xinzhu/haunted/android/content/pm/e;->e(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/Overmind;->hostPm:Lcom/xinzhu/haunted/android/content/pm/e;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/xinzhu/haunted/android/content/pm/e;->d(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static isPluginPkgInstalled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/Overmind;->isPkgInstalledOutside(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isPluginValid()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static mainThread()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->D()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private startLogcat()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_logcat.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    const-string v1, "logcat -c"

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/t;->b(Ljava/lang/String;Z)Lcom/xinzhu/overmind/utils/t$a;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat >> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " &"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/t;->b(Ljava/lang/String;Z)Lcom/xinzhu/overmind/utils/t$a;

    return-void
.end method

.method private static unsealReflectionRestrictions()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    move-result v1

    const-string v2, "L"

    if-eqz v1, :cond_0

    .line 2
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/overmind/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    const-class v1, Ljava/lang/Class;

    const-string v3, "forName"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "dalvik.system.VMRuntime"

    aput-object v5, v3, v6

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 6
    const-class v3, Ljava/lang/Class;

    const-string v7, "getDeclaredMethod"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v0, v9, v6

    const-class v0, [Ljava/lang/Class;

    aput-object v0, v9, v4

    invoke-virtual {v3, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    const-string v7, "getRuntime"

    aput-object v7, v3, v6

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v7, v3, v4

    .line 7
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "setHiddenApiExemptions"

    aput-object v8, v7, v6

    new-array v8, v4, [Ljava/lang/Class;

    .line 8
    const-class v9, [Ljava/lang/String;

    aput-object v9, v8, v6

    aput-object v8, v7, v4

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v1, v6, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v3, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "reflect unsealing failed"

    .line 12
    invoke-static {v0}, Lcom/xinzhu/overmind/Overmind;->critical(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/h;->d()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/frameworks/h;->a(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    move-result-object p1

    return-object p1
.end method

.method public deleteUser(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/h;->d()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/frameworks/h;->b(I)V

    return-void
.end method

.method public doAttachBaseContext(Landroid/content/Context;Lcom/xinzhu/overmind/client/a;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "clientConfiguration"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->TAG:Ljava/lang/String;

    const-string v1, "doAttachBaseContext begin"

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_b

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    if-eqz v1, :cond_0

    const-string p1, "doAttachBaseContext second time, skip."

    .line 3
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/Overmind;->initHostPm(Landroid/content/Context;)V

    .line 5
    iput-object p2, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->unsealReflectionRestrictions()V

    .line 7
    sput-object p1, Lcom/xinzhu/overmind/Overmind;->sContext:Landroid/content/Context;

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xinzhu/overmind/Overmind;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Main:Lcom/xinzhu/overmind/Overmind$ProcessType;

    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 11
    invoke-direct {p0}, Lcom/xinzhu/overmind/Overmind;->startLogcat()V

    goto :goto_0

    :cond_1
    const-string p2, ":mind"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Server:Lcom/xinzhu/overmind/Overmind$ProcessType;

    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    goto :goto_0

    :cond_2
    const-string p2, ":plugin_monitor"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->PluginMonitor:Lcom/xinzhu/overmind/Overmind$ProcessType;

    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->ifDisablePluginPackageAutoManage()Z

    move-result p1

    if-nez p1, :cond_5

    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->p()V

    goto :goto_0

    .line 18
    :cond_3
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/Overmind;->isMAppClientProcess(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->MAppClient:Lcom/xinzhu/overmind/Overmind$ProcessType;

    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 20
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->initJavaHooks()V

    goto :goto_0

    .line 21
    :cond_4
    sget-object p1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Others:Lcom/xinzhu/overmind/Overmind$ProcessType;

    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    .line 22
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->isServerProcess()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 23
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->ifDisableDaemonService()Z

    move-result p1

    if-nez p1, :cond_8

    .line 24
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 25
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/xinzhu/overmind/server/DaemonService;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 27
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 28
    :cond_6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 29
    :cond_7
    invoke-direct {p0}, Lcom/xinzhu/overmind/Overmind;->initService()V

    .line 30
    :cond_8
    :goto_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->isMonitorProcess()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    :try_start_0
    const-string p1, "activity_manager"

    .line 31
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/Overmind;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Lcom/xinzhu/overmind/Overmind$b;

    invoke-direct {p2, p0}, Lcom/xinzhu/overmind/Overmind$b;-><init>(Lcom/xinzhu/overmind/Overmind;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :cond_a
    :goto_2
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/d;->c()Lcom/xinzhu/overmind/client/hook/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/hook/d;->d()V

    return-void

    .line 34
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ClientConfiguration is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doCreate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/c;->d()V

    :cond_0
    return-void
.end method

.method public doTransferInstalls()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/frameworks/f;->b()V

    return-void
.end method

.method public doTransferInstallsOnlyForMainPackage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/frameworks/f;->c()V

    return-void
.end method

.method public getActivityLifecycleCallback()Lcom/xinzhu/overmind/client/hook/delegate/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mActivityLifecycleCallback:Lcom/xinzhu/overmind/client/hook/delegate/a;

    return-object v0
.end method

.method public getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mAppLifecycleCallback:Lcom/xinzhu/overmind/client/hook/a;

    return-object v0
.end method

.method public getCustomCallback()Lcom/xinzhu/overmind/custom/CustomCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mCustomCallback:Lcom/xinzhu/overmind/custom/CustomCallback;

    return-object v0
.end method

.method public getExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->g(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
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
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->h(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledXPModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/entity/pm/InstalledModule;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainAuthorityPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getMainAuthorityPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getMainPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginAuthorityPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getPluginAuthorityPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->getPluginPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecentTasksContainPlugin(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxNum",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/plugin/b;->j(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getRunningAppProcessesContainPlugin()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_VM_|_server_name_"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "VM"

    invoke-static {v1, v3, v2, v0}, Lcom/xinzhu/overmind/utils/wrappers/ContentProviderWrapper;->acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_VM_|_server_"

    .line 6
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/helpers/b;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xinzhu/overmind/Overmind;->mServices:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/user/MindUserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/h;->d()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/frameworks/h;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ifDisableDaemonService()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->ifDisableDaemonService()Z

    move-result v0

    return v0
.end method

.method public ifDisablePluginPackageAutoManage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->ifDisablePluginPackageAutoManage()Z

    move-result v0

    return v0
.end method

.method public ifDisableVirtualDeviceForPackage(Ljava/lang/String;I)Z
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
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/a;->ifDisableVirtualDeviceForPackage(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public installPackageAsUser_Exist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
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
    sget-object v0, Lcom/xinzhu/overmind/Overmind;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installPackageAsUser_Exist pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p2, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    invoke-direct {p2}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installPackageAsUser_Exist package non-exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->r(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser_Storage(Landroid/net/Uri;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apk",
            "userId"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->a()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->d()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser_Storage(Ljava/io/File;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apk",
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->a()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installPackageAsUser_System(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
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

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 4
    new-instance p2, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    invoke-direct {p2}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installXPModule(Landroid/net/Uri;)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apk"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->a()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->e()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->d()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    const/4 v2, -0x4

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/xinzhu/overmind/client/frameworks/f;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installXPModule(Ljava/io/File;)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apk"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->a()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->e()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    const/4 v2, -0x4

    invoke-virtual {v0, p1, v1, v2}, Lcom/xinzhu/overmind/client/frameworks/f;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public installXPModule(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 6
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 7
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->e()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    move-result-object v1

    const/4 v2, -0x4

    invoke-virtual {v0, p1, v1, v2}, Lcom/xinzhu/overmind/client/frameworks/f;->s(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 10
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public isHideRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isHideRoot()Z

    move-result v0

    return v0
.end method

.method public isHideXposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isHideXposed()Z

    move-result v0

    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/h;->d()Lcom/xinzhu/overmind/client/frameworks/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/frameworks/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    iget v1, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->a:I

    invoke-virtual {v2, p1, v1}, Lcom/xinzhu/overmind/client/frameworks/f;->t(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
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
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->t(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isInstalledXposedModule(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isMainProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    sget-object v1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Main:Lcom/xinzhu/overmind/Overmind$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModuleEnable(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isMonitorProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    sget-object v1, Lcom/xinzhu/overmind/Overmind$ProcessType;->PluginMonitor:Lcom/xinzhu/overmind/Overmind$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPluginValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isPluginValid()Z

    move-result v0

    return v0
.end method

.method public isServerProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    sget-object v1, Lcom/xinzhu/overmind/Overmind$ProcessType;->Server:Lcom/xinzhu/overmind/Overmind$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseGlobalFakePath()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mClientConfiguration:Lcom/xinzhu/overmind/client/a;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/client/a;->isUseGlobalFakePath()Z

    move-result v0

    return v0
.end method

.method public isVirtualProcess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind;->mProcessType:Lcom/xinzhu/overmind/Overmind$ProcessType;

    sget-object v1, Lcom/xinzhu/overmind/Overmind$ProcessType;->MAppClient:Lcom/xinzhu/overmind/Overmind$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isXPEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isXposedModule(Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public launchApk(Ljava/lang/String;I)Z
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

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->j(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xinzhu/overmind/Overmind$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/xinzhu/overmind/Overmind$c;-><init>(Lcom/xinzhu/overmind/Overmind;Landroid/content/Intent;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public setActivityLifecycleCallback(Lcom/xinzhu/overmind/client/hook/delegate/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityLifecycleCallback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mActivityLifecycleCallback:Lcom/xinzhu/overmind/client/hook/delegate/a;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "activityLifecycleCallback is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAppLifecycleCallback(Lcom/xinzhu/overmind/client/hook/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLifecycleCallback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mAppLifecycleCallback:Lcom/xinzhu/overmind/client/hook/a;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppLifecycleCallback is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomCallback(Lcom/xinzhu/overmind/custom/CustomCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customCallback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mCustomCallback:Lcom/xinzhu/overmind/custom/CustomCallback;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "customCallback is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionHandler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public setModuleEnable(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setXPEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "userId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/a;->startActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopApk(Ljava/lang/String;I)V
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
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/a;->d()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/a;->A(Ljava/lang/String;I)I

    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
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
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->D(Ljava/lang/String;)V

    return-void
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
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
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/f;->E(Ljava/lang/String;I)V

    return-void
.end method

.method public uninstallXPModule(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/Overmind;->uninstallPackage(Ljava/lang/String;)V

    return-void
.end method
