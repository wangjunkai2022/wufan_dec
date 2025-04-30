.class public Lcom/mob/commons/s;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z = true

.field private static volatile b:I = -0x1

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 1
    sput p0, Lcom/mob/commons/s;->b:I

    return p0
.end method

.method static synthetic a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/mob/commons/s;->b(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 4
    sget-object v0, Lcom/mob/commons/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/mob/commons/s$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/s$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(ZZ)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/mob/commons/s;->b(ZZ)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 5
    sget-boolean v0, Lcom/mob/commons/s;->a:Z

    return v0
.end method

.method private static b(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 6
    sget-object v0, Lcom/mob/commons/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/n;->a(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/mob/commons/s;->i()V

    .line 9
    invoke-static {}, Lcom/mob/commons/v;->a()V

    .line 10
    invoke-static {}, Lcom/mob/commons/s;->j()V

    .line 11
    invoke-static {}, Lcom/mob/commons/s;->h()V

    .line 12
    new-instance v0, Lcom/mob/commons/s$2;

    const-string v1, "PY-C"

    invoke-direct {v0, v1, p0}, Lcom/mob/commons/s$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static b(Z)V
    .locals 3

    .line 16
    sput p0, Lcom/mob/commons/s;->b:I

    .line 17
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit py: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 18
    new-instance v0, Lcom/mob/commons/s$4;

    const-string v1, "004[ghiihigk"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mob/commons/s$4;-><init>(Ljava/lang/String;Z)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(ZZ)V
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    invoke-static {}, Lcom/mob/commons/s;->f()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "main"

    goto :goto_0

    :cond_0
    const-string v0, "sub"

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez p1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/mob/commons/s;->b(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/mob/commons/b;->h()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static b()Z
    .locals 3

    .line 14
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v1, Lcom/mob/commons/w;->h:Ljava/lang/String;

    sget-boolean v2, Lcom/mob/commons/n;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 15
    sget v0, Lcom/mob/commons/s;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static c()I
    .locals 3

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get py grtd status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mob/commons/s;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    sget v0, Lcom/mob/commons/s;->b:I

    return v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/mob/commons/s;->a:Z

    return p0
.end method

.method public static d()I
    .locals 5

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get py grtd status mem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mob/commons/s;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    sget v0, Lcom/mob/commons/s;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    sget v0, Lcom/mob/commons/s;->b:I

    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/mob/commons/w;->a()Lcom/mob/commons/w;

    move-result-object v0

    sget-object v3, Lcom/mob/commons/w;->i:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/mob/commons/w;->b(Ljava/lang/String;I)I

    move-result v0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get py grtd status cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method static synthetic d(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/s;->e(Z)V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string v0, "jvr<1fgxsowakcet{mpzqnWPKUVCN0dy2iuhFDHQ|GTXERO:43YJ7lZ;/MI>\"@8A?9[)_]5=.(S\'6~\u76fa\u673cL\\-"

    return-object v0
.end method

.method private static e(Z)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/s;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 3
    :try_start_1
    invoke-static {p0}, Lcom/mob/commons/s;->f(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static f()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .line 11
    sget-object v0, Lcom/mob/commons/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/l;->b()Lcom/mob/tools/a/k;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/a/l;->a(Landroid/content/Context;)Lcom/mob/tools/a/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/a/l;->a(Lcom/mob/tools/a/k;)V

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->d()Lcom/mob/tools/a/a;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/a/c;->a(Lcom/mob/tools/a/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0
.end method

.method private static f(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/commons/q;->f()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "009:defgejffdh.iiNgh9e"

    .line 2
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/mob/commons/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "036ge8dhdeXj\'dfdgdiYge?eceddedgdi\'g-dfdcSdc?ecdhdegcdfJdWdeecdkAgFfgId;dfRd.dcfg"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v1, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v1}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    invoke-static {}, Lcom/mob/tools/network/NetCommunicator;->getCommonDefaultHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RS sp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "004*dgecXhi"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RS code is not 200: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RS is illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic g()I
    .locals 1

    .line 1
    sget v0, Lcom/mob/commons/s;->b:I

    return v0
.end method

.method private static h()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static i()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0x9426

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 4
    sput-boolean v1, Lcom/mob/commons/m;->a:Z

    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 6
    :try_start_2
    sput-boolean v0, Lcom/mob/commons/m;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method

.method private static j()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/commons/i;->a()Lcom/mob/commons/i;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/s$3;

    invoke-direct {v1}, Lcom/mob/commons/s$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mob/commons/i;->a(Lcom/mob/commons/h;)V

    return-void
.end method
