.class public Lcom/mob/apc/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mob/apc/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/mob/apc/a/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/apc/a/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic a(Lcom/mob/apc/a/b;Ljava/lang/String;Lcom/mob/apc/a/e;J)Lcom/mob/apc/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/apc/a/b;->a(Ljava/lang/String;Lcom/mob/apc/a/e;J)Lcom/mob/apc/a/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/mob/apc/a/e;J)Lcom/mob/apc/a/e;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const-string v1, "[realSendAIDLMessage] pkg: %s, InnerMessage: %s, timeout: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/mob/apc/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/apc/a/d;

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {v0}, Landroid/os/Binder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    const-string v2, "[realSendAIDLMessage] serverBinder %s is alive."

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v1, v2, v5}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0, p2}, Lcom/mob/apc/a/d;->a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 22
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    const-string v2, "[realSendAIDLMessage] serverBinder send error: %s %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v1, v2, v5}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    .line 24
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    const-class v1, Lcom/mob/MobACService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    :try_start_1
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check alive, pkg: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/apc/a/c;->c()Lcom/mob/apc/b$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 28
    invoke-interface {v1, p1}, Lcom/mob/apc/b$a;->a(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    const-string v2, "WARNING: mgsRequestListener null, can not check alive"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is tgt alv: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v7}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 31
    invoke-static {}, Lcom/mob/apc/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_1

    .line 32
    :cond_2
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const-string v1, "can not rebnd acSvc, msg can not be send "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x0

    .line 33
    :goto_1
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    const-string v2, "[realSendAIDLMessage] rebind service: %s %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v1, v2, v5}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    .line 34
    :try_start_2
    iget-object v0, p0, Lcom/mob/apc/a/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_3

    new-array v0, v3, [B

    .line 35
    iget-object v1, p0, Lcom/mob/apc/a/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_3
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    :try_start_3
    invoke-virtual {v0, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 38
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :try_start_4
    iget-object p3, p0, Lcom/mob/apc/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/apc/a/d;

    .line 40
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p4

    const-string v0, "[realSendAIDLMessage] rebind service binder: %s %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p4, v0, v1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p3, :cond_4

    .line 41
    :try_start_5
    invoke-virtual {p3, p2}, Lcom/mob/apc/a/d;->a(Lcom/mob/apc/a/e;)Lcom/mob/apc/a/e;

    move-result-object p1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object p1

    :catch_1
    move-exception p2

    .line 42
    :try_start_6
    new-instance p3, Lcom/mob/apc/APCException;

    const/16 p4, 0x3ec

    const-string v0, "service binder %s send message RemoteException: %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 43
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Lcom/mob/apc/APCException;-><init>(ILjava/lang/String;)V

    throw p3

    .line 44
    :cond_4
    new-instance p2, Lcom/mob/apc/APCException;

    const/16 p3, 0x3e9

    const-string p4, "service binder %s is null or timeout"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/mob/apc/APCException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_0
    move-exception p2

    .line 45
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p2

    .line 46
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p3

    const-string p4, "[realSendAIDLMessage] service binder %s send exception: %s"

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {p3, p4, v0}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance p1, Lcom/mob/apc/APCException;

    invoke-direct {p1, p2}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 48
    :cond_5
    new-instance p2, Lcom/mob/apc/APCException;

    const/16 p3, 0x3eb

    const-string p4, "service %s bind failed"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/mob/apc/APCException;-><init>(ILjava/lang/String;)V

    throw p2

    :catchall_2
    move-exception p1

    .line 49
    new-instance p2, Lcom/mob/apc/APCException;

    const/16 p3, 0x3ea

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "service bind exception: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/mob/apc/APCException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/lang/String;Lcom/mob/apc/a/e;JLjava/util/concurrent/BlockingQueue;)Ljava/lang/Runnable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mob/apc/a/e;",
            "J",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mob/apc/a/e;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 15
    new-instance v7, Lcom/mob/apc/a/b$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mob/apc/a/b$1;-><init>(Lcom/mob/apc/a/b;Ljava/lang/String;Lcom/mob/apc/a/e;JLjava/util/concurrent/BlockingQueue;)V

    .line 16
    sget-object p1, Lcom/mob/apc/a/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method static synthetic a(Lcom/mob/apc/a/b;Ljava/lang/String;Lcom/mob/apc/a/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mob/apc/a/b;->a(Ljava/lang/String;Lcom/mob/apc/a/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mob/apc/a/e;)V
    .locals 6

    if-eqz p2, :cond_3

    .line 50
    iget-object p2, p2, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    if-eqz p2, :cond_3

    .line 51
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/apc/a/c;->c()Lcom/mob/apc/b$a;

    move-result-object v0

    .line 52
    iget p2, p2, Lcom/mob/apc/a;->a:I

    .line 53
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APCMessageType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/16 v4, 0x3e9

    const-string v5, "Need GD. busType: "

    if-eq p2, v4, :cond_1

    const/16 v1, 0x3eb

    if-eq p2, v1, :cond_2

    const/16 v1, 0x232c

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v3}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 55
    invoke-interface {v0, v2, p1}, Lcom/mob/apc/b$a;->a(ILjava/lang/String;)Ljava/util/HashMap;

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v2, v3}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 57
    invoke-interface {v0, v1, p1}, Lcom/mob/apc/b$a;->a(ILjava/lang/String;)Ljava/util/HashMap;

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "No need to call GD."

    invoke-virtual {p1, v0, p2}, Lcom/mob/apc/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v0, p2

    move-object v1, p3

    move-wide v6, p4

    .line 3
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v3, v8

    const/4 v9, 0x1

    aput-object v0, v3, v9

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "[sendAIDLMessage] pkg: %s, businessID: %s, apcMessage: %s, timeout: %s"

    invoke-virtual {v2, v4, v3}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 5
    :try_start_0
    new-instance v2, Lcom/mob/apc/a/e;

    invoke-direct {v2, p3, p2, v6, v7}, Lcom/mob/apc/a/e;-><init>(Lcom/mob/apc/a;Ljava/lang/String;J)V

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p4

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/mob/apc/a/b;->a(Ljava/lang/String;Lcom/mob/apc/a/e;JLjava/util/concurrent/BlockingQueue;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-gtz v3, :cond_0

    .line 6
    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/apc/a/e;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v6, v7, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/apc/a/e;

    if-nez v1, :cond_1

    .line 8
    sget-object v2, Lcom/mob/apc/a/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 9
    iget-object v1, v0, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    if-eqz v1, :cond_2

    return-object v1

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/mob/apc/a/e;->d:Lcom/mob/apc/APCException;

    if-eqz v0, :cond_3

    .line 11
    throw v0

    .line 12
    :cond_3
    new-instance v0, Lcom/mob/apc/APCException;

    const-string v1, "[sendAIDLMessage] callback is null or timeout."

    invoke-direct {v0, v1}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "[sendAIDLMessage] exception: %s"

    invoke-virtual {v1, v3, v2}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v1, Lcom/mob/apc/APCException;

    invoke-direct {v1, v0}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    const-string v3, "[AIDLMessager][onServiceConnected] pkg: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lcom/mob/apc/a/d;->a(Landroid/os/IBinder;)Lcom/mob/apc/a/d;

    move-result-object p2

    .line 4
    iget-object v2, p0, Lcom/mob/apc/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/mob/apc/a/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    .line 6
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p2

    const-string v2, "[AIDLMessager][onServiceConnected] exception: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p2, v2, v1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    const-string v3, "[AIDLMessager][onServiceDisconnected] pkg: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/mob/apc/a/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/apc/a/f;->a(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "[AIDLMessager][onServiceDisconnected] exception: %s"

    invoke-virtual {v2, p1, v1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
