.class public final Lde/robv/android/xposed/XposedInit;
.super Ljava/lang/Object;
.source "XposedInit.java"


# static fields
.field private static final INSTANT_RUN_CLASS:Ljava/lang/String; = "com.android.tools.fd.runtime.BootstrapApplication"

.field private static final TAG:Ljava/lang/String; = "SandXposed"

.field private static volatile bootstrapHooked:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static disableResources:Z = true

.field private static volatile modulesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lde/robv/android/xposed/XposedInit;->bootstrapHooked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lde/robv/android/xposed/XposedInit;->modulesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hookResources()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public static loadModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modulePath",
            "moduleOdexDir",
            "moduleSoPath",
            "topClassLoader"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, p0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v1, "com.android.tools.fd.runtime.BootstrapApplication"

    .line 3
    invoke-virtual {v0, v1, p3}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    return-void

    .line 5
    :cond_1
    const-class v1, Lde/robv/android/xposed/XposedBridge;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    return-void

    .line 7
    :cond_2
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    const/4 v0, 0x0

    .line 8
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "assets/xposed_init"

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {v1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 12
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-direct {v2, p0, p1, p2, p3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 13
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 14
    :cond_4
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "#"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    :try_start_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Loading class "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 19
    const-class v3, Lde/robv/android/xposed/IXposedMod;

    invoke-virtual {v3, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 20
    :cond_6
    sget-boolean v3, Lde/robv/android/xposed/XposedInit;->disableResources:Z

    if-eqz v3, :cond_7

    const-class v3, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    invoke-virtual {v3, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    .line 21
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    .line 22
    instance-of v3, p3, Lde/robv/android/xposed/IXposedHookZygoteInit;

    if-eqz v3, :cond_8

    .line 23
    new-instance v3, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    invoke-direct {v3}, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;-><init>()V

    .line 24
    iput-object p0, v3, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    const/4 v4, 0x0

    .line 25
    iput-boolean v4, v3, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->startsSystemServer:Z

    .line 26
    move-object v4, p3

    check-cast v4, Lde/robv/android/xposed/IXposedHookZygoteInit;

    invoke-interface {v4, v3}, Lde/robv/android/xposed/IXposedHookZygoteInit;->initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V

    .line 27
    :cond_8
    instance-of v3, p3, Lde/robv/android/xposed/IXposedHookLoadPackage;

    if-eqz v3, :cond_9

    .line 28
    new-instance v3, Lde/robv/android/xposed/IXposedHookLoadPackage$Wrapper;

    move-object v4, p3

    check-cast v4, Lde/robv/android/xposed/IXposedHookLoadPackage;

    invoke-direct {v3, v4}, Lde/robv/android/xposed/IXposedHookLoadPackage$Wrapper;-><init>(Lde/robv/android/xposed/IXposedHookLoadPackage;)V

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->hookLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage;)V

    .line 29
    :cond_9
    instance-of p3, p3, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    if-nez p3, :cond_a

    goto :goto_0

    .line 30
    :cond_a
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    const-string v3, "can not hook resource!"

    invoke-direct {p3, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    :catchall_0
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Failed to load class "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 32
    :cond_b
    :goto_1
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/io/Closeable;)V

    .line 33
    invoke-static {v1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 34
    :catch_0
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Failed to load module from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :goto_2
    return-void

    .line 35
    :goto_3
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/io/Closeable;)V

    .line 36
    invoke-static {v1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    .line 37
    throw p0

    :catch_1
    move-object v0, v1

    .line 38
    :catch_2
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    :catch_3
    return-void
.end method

.method private static needsToCloseFilesForFork()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
