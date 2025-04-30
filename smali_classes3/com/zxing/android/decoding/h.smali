.class public final Lcom/zxing/android/decoding/h;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zxing/android/decoding/h$b;
    }
.end annotation


# static fields
.field private static final d:I = 0x12c


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Landroid/app/Activity;

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/zxing/android/decoding/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zxing/android/decoding/h$b;-><init>(Lcom/zxing/android/decoding/h$a;)V

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zxing/android/decoding/h;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object v1, p0, Lcom/zxing/android/decoding/h;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    iput-object p1, p0, Lcom/zxing/android/decoding/h;->b:Landroid/app/Activity;

    .line 6
    invoke-virtual {p0}, Lcom/zxing/android/decoding/h;->b()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/decoding/h;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zxing/android/decoding/h;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/zxing/android/decoding/h;->a()V

    .line 2
    iget-object v0, p0, Lcom/zxing/android/decoding/h;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/zxing/android/decoding/g;

    iget-object v2, p0, Lcom/zxing/android/decoding/h;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/zxing/android/decoding/g;-><init>(Landroid/app/Activity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x12c

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/zxing/android/decoding/h;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zxing/android/decoding/h;->a()V

    .line 2
    iget-object v0, p0, Lcom/zxing/android/decoding/h;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
