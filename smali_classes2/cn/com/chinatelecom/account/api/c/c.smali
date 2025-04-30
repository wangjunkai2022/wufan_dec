.class public Lcn/com/chinatelecom/account/api/c/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static b:Landroid/os/Handler;


# instance fields
.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/com/chinatelecom/account/api/c/c;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/c;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/chinatelecom/account/api/c/c;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcn/com/chinatelecom/account/api/c/c;->a:Ljava/lang/String;

    const-string v1, "When InetAddress.getByName(),throws exception"

    invoke-static {v0, v1, p0}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/c;)Z
    .locals 0

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/c/c;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcn/com/chinatelecom/account/api/c/c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private b(Lcn/com/chinatelecom/account/api/c/b;)V
    .locals 4

    sget-object v0, Lcn/com/chinatelecom/account/api/c/c;->b:Landroid/os/Handler;

    new-instance v1, Lcn/com/chinatelecom/account/api/c/c$1;

    invoke-direct {v1, p0, p1}, Lcn/com/chinatelecom/account/api/c/c$1;-><init>(Lcn/com/chinatelecom/account/api/c/c;Lcn/com/chinatelecom/account/api/c/b;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcn/com/chinatelecom/account/api/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/c/c;->c()V

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 9

    :try_start_0
    const-string v0, "android.net.ConnectivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    const-string v3, "startUsingNetworkFeature"

    :try_start_1
    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "enableHIPRI"

    aput-object v8, v7, v5

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    sget-object v7, Lcn/com/chinatelecom/account/api/c/c;->a:Ljava/lang/String;

    const-string v8, "STMN_V4"

    invoke-static {v7, v8, v3}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-static {p1}, Lcn/com/chinatelecom/account/api/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/c/c;->a(Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v3, "requestRouteToHost"

    :try_start_4
    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v8, v7, v5

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v0, Lcn/com/chinatelecom/account/api/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STMN_V4 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    const/4 p1, -0x2

    return p1

    :catchall_1
    move-exception p1

    sget-object v0, Lcn/com/chinatelecom/account/api/c/c;->a:Ljava/lang/String;

    const-string v1, "STMN_V4_T"

    invoke-static {v0, v1, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/com/chinatelecom/account/api/c/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/com/chinatelecom/account/api/c/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcn/com/chinatelecom/account/api/c/b;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1}, Lcn/com/chinatelecom/account/api/c/c;->b(Lcn/com/chinatelecom/account/api/c/b;)V

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    new-instance v4, Lcn/com/chinatelecom/account/api/c/c$2;

    invoke-direct {v4, p0, p1, v0, v1}, Lcn/com/chinatelecom/account/api/c/c$2;-><init>(Lcn/com/chinatelecom/account/api/c/c;Lcn/com/chinatelecom/account/api/c/b;J)V

    iput-object v4, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/c/c;->d()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-interface {p1, v2, v3}, Lcn/com/chinatelecom/account/api/c/b;->a(J)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcn/com/chinatelecom/account/api/c/b;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcn/com/chinatelecom/account/api/c/d;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/c/d;-><init>()V

    new-instance v1, Lcn/com/chinatelecom/account/api/c/c$3;

    invoke-direct {v1, p0, p2, p1}, Lcn/com/chinatelecom/account/api/c/c$3;-><init>(Lcn/com/chinatelecom/account/api/c/c;Ljava/lang/String;Lcn/com/chinatelecom/account/api/c/b;)V

    invoke-virtual {v0, v1}, Lcn/com/chinatelecom/account/api/c/d;->a(Lcn/com/chinatelecom/account/api/c/e;)V

    return-void
.end method
