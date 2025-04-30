.class public Lcom/bytedance/sdk/openadsdk/b/a;
.super Ljava/lang/Object;
.source "TTThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/b/a$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/bytedance/sdk/openadsdk/b/a;


# instance fields
.field private volatile a:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/a$a;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/b/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/a;->b:Lcom/bytedance/sdk/openadsdk/b/a;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/b/a;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/b/a;->b:Lcom/bytedance/sdk/openadsdk/b/a;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/a;->b:Lcom/bytedance/sdk/openadsdk/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
