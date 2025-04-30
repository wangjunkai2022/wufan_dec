.class Lcom/ss/android/socialbase/downloader/h/g$a;
.super Landroid/os/HandlerThread;
.source "ThreadWithHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/h/g;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/h/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/g$a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 2
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/g$a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/h/g;->a(Lcom/ss/android/socialbase/downloader/h/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/h/g$a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/h/g;->a(Lcom/ss/android/socialbase/downloader/h/g;Landroid/os/Handler;)Landroid/os/Handler;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g$a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/h/g;->b(Lcom/ss/android/socialbase/downloader/h/g;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/g$a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/h/g;->b(Lcom/ss/android/socialbase/downloader/h/g;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/h/g$b;

    .line 8
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/h/g$a;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/h/g;->c(Lcom/ss/android/socialbase/downloader/h/g;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/h/g$b;->a:Ljava/lang/Runnable;

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/h/g$b;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
