.class public final Lcom/switfpass/pay/activity/zxing/decoding/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Landroid/app/Activity;

.field private c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/switfpass/pay/activity/zxing/decoding/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/switfpass/pay/activity/zxing/decoding/l;-><init>(B)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->c:Ljava/util/concurrent/ScheduledFuture;

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/switfpass/pay/activity/zxing/decoding/c;->b()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    invoke-direct {p0}, Lcom/switfpass/pay/activity/zxing/decoding/c;->a()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/switfpass/pay/activity/zxing/decoding/b;

    iget-object v2, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/switfpass/pay/activity/zxing/decoding/b;-><init>(Landroid/app/Activity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x12c

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-direct {p0}, Lcom/switfpass/pay/activity/zxing/decoding/c;->a()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
