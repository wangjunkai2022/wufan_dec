.class public Lnotchtools/geek/com/notchtools/helper/c;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Lnotchtools/geek/com/notchtools/helper/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.os.SystemProperties"

    .line 2
    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/helper/c;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/helper/c;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lnotchtools/geek/com/notchtools/helper/c;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    .line 3
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method public static c()Lnotchtools/geek/com/notchtools/helper/c;
    .locals 2

    .line 1
    sget-object v0, Lnotchtools/geek/com/notchtools/helper/c;->c:Lnotchtools/geek/com/notchtools/helper/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lnotchtools/geek/com/notchtools/helper/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lnotchtools/geek/com/notchtools/helper/c;->c:Lnotchtools/geek/com/notchtools/helper/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lnotchtools/geek/com/notchtools/helper/c;

    invoke-direct {v1}, Lnotchtools/geek/com/notchtools/helper/c;-><init>()V

    sput-object v1, Lnotchtools/geek/com/notchtools/helper/c;->c:Lnotchtools/geek/com/notchtools/helper/c;

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
    sget-object v0, Lnotchtools/geek/com/notchtools/helper/c;->c:Lnotchtools/geek/com/notchtools/helper/c;

    return-object v0
.end method

.method private d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 1
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    sget-object v1, Lnotchtools/geek/com/notchtools/helper/c;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object v0
.end method
