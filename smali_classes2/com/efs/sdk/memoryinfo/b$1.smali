.class final Lcom/efs/sdk/memoryinfo/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/observer/IConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/memoryinfo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/efs/sdk/memoryinfo/b;


# direct methods
.method constructor <init>(Lcom/efs/sdk/memoryinfo/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/b$1;->c:Lcom/efs/sdk/memoryinfo/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/b$1;->c:Lcom/efs/sdk/memoryinfo/b;

    .line 2
    iget-boolean v0, v0, Lcom/efs/sdk/memoryinfo/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "apm_memperf_sampling_rate"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/16 v2, 0x64

    if-ne v0, v2, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 5
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-gt v2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    const-string v0, "apm_memperf_collect_interval"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v2, "apm_memperf_collect_max_period_sec"

    .line 8
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 9
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 11
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "mem-info"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance v3, Lcom/efs/sdk/memoryinfo/b$1$1;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/efs/sdk/memoryinfo/b$1$1;-><init>(Lcom/efs/sdk/memoryinfo/b$1;Landroid/os/Looper;Landroid/os/HandlerThread;)V

    .line 14
    new-instance v2, Lcom/efs/sdk/memoryinfo/b$1$2;

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/efs/sdk/memoryinfo/b$1$2;-><init>(Lcom/efs/sdk/memoryinfo/b$1;Landroid/os/Handler;II)V

    .line 15
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    iget-object p1, p0, Lcom/efs/sdk/memoryinfo/b$1;->c:Lcom/efs/sdk/memoryinfo/b;

    .line 17
    iput-boolean v1, p1, Lcom/efs/sdk/memoryinfo/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "collect "

    .line 18
    invoke-static {v0, p1}, Lcom/efs/sdk/memoryinfo/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
