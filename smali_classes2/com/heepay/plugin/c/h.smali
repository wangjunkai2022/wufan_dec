.class public Lcom/heepay/plugin/c/h;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x5

.field private static b:I = 0x64

.field private static c:I = 0x2710

.field private static d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/heepay/plugin/c/h;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/heepay/plugin/c/h$1;

    invoke-direct {v0}, Lcom/heepay/plugin/c/h$1;-><init>()V

    sput-object v0, Lcom/heepay/plugin/c/h;->f:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/heepay/plugin/c/h;->a:I

    sget v3, Lcom/heepay/plugin/c/h;->b:I

    sget v1, Lcom/heepay/plugin/c/h;->c:I

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/heepay/plugin/c/h;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/heepay/plugin/c/h;->f:Ljava/util/concurrent/ThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/heepay/plugin/c/h;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/heepay/plugin/c/h;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
