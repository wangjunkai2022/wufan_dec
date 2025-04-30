.class final Lcom/switfpass/pay/activity/zxing/camera/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "e"

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/switfpass/pay/activity/zxing/camera/e;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_0
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "getService"

    invoke-static {v0, v5, v4}, Lcom/switfpass/pay/activity/zxing/camera/e;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "hardware"

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/switfpass/pay/activity/zxing/camera/e;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "android.os.IHardwareService$Stub"

    invoke-static {v4}, Lcom/switfpass/pay/activity/zxing/camera/e;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v1

    const-string v6, "asInterface"

    invoke-static {v4, v6, v5}, Lcom/switfpass/pay/activity/zxing/camera/e;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v4, v3, v5}, Lcom/switfpass/pay/activity/zxing/camera/e;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/switfpass/pay/activity/zxing/camera/e;->b:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const-string v1, "setFlashlightEnabled"

    invoke-static {v0, v1, v2}, Lcom/switfpass/pay/activity/zxing/camera/e;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :goto_2
    sput-object v3, Lcom/switfpass/pay/activity/zxing/camera/e;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Unexpected error while invoking "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    return-object v1

    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method private static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected error while finding method "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_1
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error while finding class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_1
    return-object v0
.end method

.method static d()V
    .locals 5

    sget-object v0, Lcom/switfpass/pay/activity/zxing/camera/e;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/switfpass/pay/activity/zxing/camera/e;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/switfpass/pay/activity/zxing/camera/e;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
