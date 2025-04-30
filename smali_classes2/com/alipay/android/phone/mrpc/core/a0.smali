.class final Lcom/alipay/android/phone/mrpc/core/a0;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/alipay/android/phone/mrpc/core/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/e0;

.field final synthetic b:Lcom/alipay/android/phone/mrpc/core/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/z;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/e0;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/a0;->b:Lcom/alipay/android/phone/mrpc/core/z;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/a0;->a:Lcom/alipay/android/phone/mrpc/core/e0;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/a0;->a:Lcom/alipay/android/phone/mrpc/core/e0;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/e0;->d()Lcom/alipay/android/phone/mrpc/core/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/alipay/android/phone/mrpc/core/d;->a:Z

    if-eqz v2, :cond_3

    :cond_1
    iput-boolean v1, v0, Lcom/alipay/android/phone/mrpc/core/d;->a:Z

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing http request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    iput-boolean v1, v0, Lcom/alipay/android/phone/mrpc/core/d;->a:Z

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/android/phone/mrpc/core/a;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/a;->a()I

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/a;->b()Ljava/lang/String;

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method
