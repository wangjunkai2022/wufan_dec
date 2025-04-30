.class final Lcom/zxing/android/camera/d;
.super Ljava/lang/Object;
.source "FlashlightManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/zxing/android/camera/d;->c()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/zxing/android/camera/d;->b:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lcom/zxing/android/camera/d;->d(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/zxing/android/camera/d;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/zxing/android/camera/d;->h(Z)V

    return-void
.end method

.method static b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/zxing/android/camera/d;->h(Z)V

    return-void
.end method

.method private static c()Ljava/lang/Object;
    .locals 7

    const-string v0, "android.os.ServiceManager"

    .line 1
    invoke-static {v0}, Lcom/zxing/android/camera/d;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getService"

    invoke-static {v0, v4, v3}, Lcom/zxing/android/camera/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "hardware"

    aput-object v4, v3, v5

    .line 3
    invoke-static {v0, v1, v3}, Lcom/zxing/android/camera/d;->e(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string v3, "android.os.IHardwareService$Stub"

    .line 4
    invoke-static {v3}, Lcom/zxing/android/camera/d;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    new-array v4, v2, [Ljava/lang/Class;

    .line 5
    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    const-string v6, "asInterface"

    invoke-static {v3, v6, v4}, Lcom/zxing/android/camera/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 6
    invoke-static {v3, v1, v2}, Lcom/zxing/android/camera/d;->e(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-string v1, "setFlashlightEnabled"

    invoke-static {p0, v1, v0}, Lcom/zxing/android/camera/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static varargs e(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Unexpected error while invoking "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v1

    :catch_1
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    return-object v1

    .line 4
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error while finding class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_1
    return-object v0
.end method

.method private static varargs g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
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

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error while finding method "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_1
    return-object v0
.end method

.method private static h(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/zxing/android/camera/d;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/zxing/android/camera/d;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Lcom/zxing/android/camera/d;->e(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
