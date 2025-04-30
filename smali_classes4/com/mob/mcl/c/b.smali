.class public Lcom/mob/mcl/c/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mob/mcl/c/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/mob/mcl/c/b;->c:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mob/mcl/c/b;->e:Z

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/b;->b:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lcom/mob/mcl/c/b;->c()V

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/b;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a()Lcom/mob/mcl/c/b;
    .locals 2

    .line 4
    sget-object v0, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/mob/mcl/c/b;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/mob/mcl/c/b;

    invoke-direct {v1}, Lcom/mob/mcl/c/b;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mcl/c/b;->a:Lcom/mob/mcl/c/b;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .line 10
    iget v0, p0, Lcom/mob/mcl/c/b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11
    iput p1, p0, Lcom/mob/mcl/c/b;->c:I

    return-void

    .line 12
    :cond_0
    iput p1, p0, Lcom/mob/mcl/c/b;->c:I

    if-eqz p1, :cond_2

    .line 13
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/mcl/c/h;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v0, 0xc8

    .line 14
    new-instance v2, Lcom/mob/mcl/c/b$2;

    invoke-direct {v2, p0}, Lcom/mob/mcl/c/b$2;-><init>(Lcom/mob/mcl/c/b;)V

    invoke-static {p1, v0, v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/mcl/c/b;->e()V

    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/b;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/mcl/c/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/b;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mob/mcl/c/b;->e:Z

    return p1
.end method

.method private c()V
    .locals 9

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x21

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v3, "registerReceiver"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/mob/mcl/c/b;->b:Landroid/content/Context;

    new-array v1, v6, [Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/mob/mcl/c/b;->d()Landroid/content/BroadcastReceiver;

    move-result-object v7

    aput-object v7, v1, v5

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    aput-object v7, v1, v4

    new-array v2, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v2, v5

    const-class v5, Landroid/content/IntentFilter;

    aput-object v5, v2, v4

    .line 4
    invoke-static {v0, v3, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/b;->b:Landroid/content/Context;

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lcom/mob/mcl/c/b;->d()Landroid/content/BroadcastReceiver;

    move-result-object v8

    aput-object v8, v7, v5

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/BroadcastReceiver;

    aput-object v2, v1, v5

    const-class v2, Landroid/content/IntentFilter;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    .line 7
    invoke-static {v0, v3, v7, v1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private d()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/mcl/c/b$3;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/b$3;-><init>(Lcom/mob/mcl/c/b;)V

    return-object v0
.end method

.method private e()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->f()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->g()Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mob/mcl/c/b;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "HB already started"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mob/mcl/c/b;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/mob/mcl/c/b$1;

    invoke-direct {v3, p0}, Lcom/mob/mcl/c/b$1;-><init>(Lcom/mob/mcl/c/b;)V

    const-wide/16 v4, 0x0

    .line 4
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget v0, v0, Lcom/mob/mcl/c/h;->e:I

    int-to-long v6, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "HB timer error"

    invoke-virtual {v1, v2, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
