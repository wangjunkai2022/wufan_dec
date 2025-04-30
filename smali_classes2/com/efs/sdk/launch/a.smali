.class public Lcom/efs/sdk/launch/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.efs.sdk.launch.a"

.field private static volatile b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static c:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/efs/sdk/launch/a$1;

    invoke-direct {v0}, Lcom/efs/sdk/launch/a$1;-><init>()V

    sput-object v0, Lcom/efs/sdk/launch/a;->c:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 4

    sget-object v0, Lcom/efs/sdk/launch/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    const-class v0, Lcom/efs/sdk/launch/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/efs/sdk/launch/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x4

    sget-object v3, Lcom/efs/sdk/launch/a;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/efs/sdk/launch/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/efs/sdk/launch/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/efs/sdk/launch/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
