.class public final Lcom/bytedance/pangle/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/Executor;

.field public static b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/c/e;->a:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/c/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a(I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/pangle/c/e$1;

    invoke-direct {v0}, Lcom/bytedance/pangle/c/e$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
