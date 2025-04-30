.class public final Lde/robv/android/xposed/XposedHelpers;
.super Ljava/lang/Object;
.source "XposedHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;,
        Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError;
    }
.end annotation


# static fields
.field private static final additionalFields:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final constructorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final fieldCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMethodDepth:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XposedHelpers;->fieldCache:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XposedHelpers;->methodCache:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XposedHelpers;->sMethodDepth:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assetAsByteArray(Landroid/content/res/Resources;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "res",
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedHelpers;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "methodName",
            "parameterTypes",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lde/robv/android/xposed/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 8
    throw p0

    :catch_2
    move-exception p0

    .line 9
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 10
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "methodName",
            "args"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 3
    throw p0

    :catch_2
    move-exception p0

    .line 4
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "parameterTypes",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lde/robv/android/xposed/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 8
    throw p0

    :catch_2
    move-exception p0

    .line 9
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 10
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 3
    throw p0

    :catch_2
    move-exception p0

    .line 4
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static closeSilently(Ldalvik/system/DexFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dexFile"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ldalvik/system/DexFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static closeSilently(Ljava/util/zip/ZipFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static decrementMethodDepth(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lde/robv/android/xposed/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    return p0
.end method

.method static fileContains(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4
    :goto_0
    invoke-static {v1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/io/Closeable;)V

    .line 5
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static varargs findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "parameterTypesAndCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    instance-of v0, v0, Lde/robv/android/xposed/XC_MethodHook;

    if-eqz v0, :cond_0

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p1}, Lde/robv/android/xposed/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 4
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no callback defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "classLoader",
            "parameterTypesAndCallback"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "parameterTypesAndCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;"
        }
    .end annotation

    .line 1
    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    instance-of v0, v0, Lde/robv/android/xposed/XC_MethodHook;

    if-eqz v0, :cond_0

    .line 2
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Lde/robv/android/xposed/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 4
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no callback defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "classLoader",
            "methodName",
            "parameterTypesAndCallback"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0
.end method

.method public static findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "classLoader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lde/robv/android/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, p0, v0}, Lexternal/org/apache/commons/lang3/d;->i(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError;

    invoke-direct {p1, p0}, Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "classLoader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lde/robv/android/xposed/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#bestmatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lde/robv/android/xposed/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    if-eqz p0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 7
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 8
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v1, :cond_4

    aget-object v6, p0, v2

    .line 9
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-static {p1, v7, v5}, Lexternal/org/apache/commons/lang3/d;->D([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 11
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 12
    invoke-static {v5, v7, p1}, Lexternal/org/apache/commons/lang3/reflect/a;->a([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v5

    if-gez v5, :cond_3

    :cond_2
    move-object v4, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 14
    sget-object p0, Lde/robv/android/xposed/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object p1, Lde/robv/android/xposed/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "parameterTypes",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 20
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 21
    invoke-static {p2}, Lde/robv/android/xposed/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 22
    :cond_1
    aget-object v2, v0, v1

    aput-object v2, p1, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 18
    invoke-static {p1}, Lde/robv/android/xposed/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lde/robv/android/xposed/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#exact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lde/robv/android/xposed/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    if-eqz p0, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 9
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 10
    :catch_0
    sget-object p0, Lde/robv/android/xposed/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findConstructorExact(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "classLoader",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findConstructorExactIfExists(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs findConstructorExactIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "classLoader",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lde/robv/android/xposed/XposedHelpers;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    if-eqz p0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 8
    :catch_0
    sget-object p0, Lde/robv/android/xposed/XposedHelpers;->fieldCache:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p0, Ljava/lang/NoSuchFieldError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findFieldIfExists(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    nop

    goto :goto_0

    .line 5
    :cond_0
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static findFirstFieldByExactType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p1, :cond_0

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lde/robv/android/xposed/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#bestmatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lde/robv/android/xposed/XposedHelpers;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v4, v2

    const/4 v5, 0x1

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    if-nez v5, :cond_2

    .line 8
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {p2, v10, v3}, Lexternal/org/apache/commons/lang3/d;->D([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 11
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 12
    invoke-static {v10, v11, p2}, Lexternal/org/apache/commons/lang3/reflect/a;->a([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v10

    if-gez v10, :cond_4

    :cond_3
    move-object v4, v9

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_7

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 15
    sget-object p0, Lde/robv/android/xposed/XposedHelpers;->methodCache:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 16
    :cond_6
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 17
    sget-object p1, Lde/robv/android/xposed/XposedHelpers;->methodCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    throw p0

    :cond_7
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "parameterTypes",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 21
    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 22
    invoke-static {p3}, Lde/robv/android/xposed/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 23
    :cond_1
    aget-object v2, v0, v1

    aput-object v2, p2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 19
    invoke-static {p2}, Lde/robv/android/xposed/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lde/robv/android/xposed/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#exact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lde/robv/android/xposed/XposedHelpers;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 9
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 10
    :catch_0
    sget-object p0, Lde/robv/android/xposed/XposedHelpers;->methodCache:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p2}, Lde/robv/android/xposed/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findMethodExact(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "classLoader",
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p3}, Lde/robv/android/xposed/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findMethodExactIfExists(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs findMethodExactIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "classLoader",
            "methodName",
            "parameterTypes"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs findMethodsByExactParameters(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "returnType",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p0, v3

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq p1, v5, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 5
    array-length v6, p2

    array-length v7, v5

    if-eq v6, v7, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    .line 6
    :goto_1
    array-length v7, p2

    const/4 v8, 0x1

    if-ge v6, v7, :cond_3

    .line 7
    aget-object v7, p2, v6

    aget-object v9, v5, v6

    if-eq v7, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 9
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/reflect/Method;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "key"
        }
    .end annotation

    const-string v0, "object must not be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "key must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lde/robv/android/xposed/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    monitor-enter p0

    .line 8
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static getAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "key"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getByteField(Ljava/lang/Object;Ljava/lang/String;)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getCharField(Ljava/lang/Object;Ljava/lang/String;)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs getClassesAsArray([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazzes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public static getDoubleField(Ljava/lang/Object;Ljava/lang/String;)D
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getFirstParameterIndexByType(Ljava/lang/reflect/Member;Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 3
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 4
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No parameter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " found in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static getFloatField(Ljava/lang/Object;Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getIntField(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getLongField(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getMD5Sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 3
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 7
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p0, 0x10

    .line 8
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getMethodDepth(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lde/robv/android/xposed/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method private static getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lde/robv/android/xposed/XposedHelpers;->sMethodDepth:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lde/robv/android/xposed/XposedHelpers$1;

    invoke-direct {v1}, Lde/robv/android/xposed/XposedHelpers$1;-><init>()V

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static getOverriddenMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 8
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    return-object v2

    .line 9
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method static getOverriddenMethods(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    invoke-static {v3}, Lde/robv/android/xposed/XposedHelpers;->getOverriddenMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "parameterTypesAndCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 2
    aget-object v3, p1, v0

    if-eqz v3, :cond_4

    .line 3
    instance-of v4, v3, Lde/robv/android/xposed/XC_MethodHook;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 4
    new-array v2, v2, [Ljava/lang/Class;

    .line 5
    :cond_1
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 6
    check-cast v3, Ljava/lang/Class;

    aput-object v3, v2, v0

    goto :goto_1

    .line 7
    :cond_2
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 8
    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9
    :cond_3
    new-instance p0, Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError;

    const-string p1, "parameter type must either be specified as Class or String"

    invoke-direct {p0, p1, v1}, Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 10
    :cond_4
    new-instance p0, Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError;

    const-string p1, "parameter type must not be null"

    invoke-direct {p0, p1, v1}, Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_5
    if-nez v2, :cond_6

    const/4 p0, 0x0

    new-array v2, p0, [Ljava/lang/Class;

    :cond_6
    return-object v2
.end method

.method public static getParameterIndexByType(Ljava/lang/reflect/Member;Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 3
    :goto_1
    array-length v4, v0

    const-string v5, " found in "

    if-ge v1, v4, :cond_3

    .line 4
    aget-object v4, v0, v1

    if-ne v4, p1, :cond_2

    if-ne v3, v2, :cond_1

    move v3, v1

    goto :goto_2

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than one parameter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq v3, v2, :cond_4

    return v3

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/NoSuchFieldError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No parameter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static varargs getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static varargs getParametersString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazzes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p0, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const-string v6, ","

    .line 3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v5, "null"

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ")"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortField(Ljava/lang/Object;Ljava/lang/String;)S
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticByteField(Ljava/lang/Class;Ljava/lang/String;)B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")B"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticCharField(Ljava/lang/Class;Ljava/lang/String;)C
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")C"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticDoubleField(Ljava/lang/Class;Ljava/lang/String;)D
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticFloatField(Ljava/lang/Class;Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticLongField(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticShortField(Ljava/lang/Class;Ljava/lang/String;)S
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")S"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getSurroundingThis(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const-string v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static incrementMethodDepth(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lde/robv/android/xposed/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "parameterTypes",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/InstantiationError;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 9
    new-instance p1, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 10
    throw p0

    :catch_3
    move-exception p0

    .line 11
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 12
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/InstantiationError;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 3
    new-instance p1, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 4
    throw p0

    :catch_3
    move-exception p0

    .line 5
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 6
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "key"
        }
    .end annotation

    const-string v0, "object must not be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "key must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lde/robv/android/xposed/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    monitor-enter p0

    .line 8
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static removeAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static removeAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "key"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "key",
            "value"
        }
    .end annotation

    const-string v0, "object must not be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "key must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lde/robv/android/xposed/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    monitor-enter v1

    .line 9
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static setAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setByteField(Ljava/lang/Object;Ljava/lang/String;B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setCharField(Ljava/lang/Object;Ljava/lang/String;C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setDoubleField(Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setFloatField(Ljava/lang/Object;Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setIntField(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setLongField(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setShortField(Ljava/lang/Object;Ljava/lang/String;S)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticByteField(Ljava/lang/Class;Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticCharField(Ljava/lang/Class;Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticDoubleField(Ljava/lang/Class;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticFloatField(Ljava/lang/Class;Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticIntField(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticLongField(Ljava/lang/Class;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticShortField(Ljava/lang/Class;Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "S)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
