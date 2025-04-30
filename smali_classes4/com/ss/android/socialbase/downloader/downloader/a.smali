.class public abstract Lcom/ss/android/socialbase/downloader/downloader/a;
.super Ljava/lang/Object;
.source "AbsDownloadServiceHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/o;


# static fields
.field private static final e:Ljava/lang/String; = "a"


# instance fields
.field protected final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadTask;",
            ">;>;"
        }
    .end annotation
.end field

.field protected volatile b:Z

.field protected volatile c:Z

.field protected volatile d:Z

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->g:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/a$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/a$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 3
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v0, "onBind Abs"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/c/a;->a(I)V

    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startForeground  id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  isServiceAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string p2, "startForeground: downloadService is null, do nothing!"

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .locals 0

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/n;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pendDownloadTask pendingTasks.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " downloadId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before pendDownloadTask taskArray.size:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "after pendDownloadTask pendingTasks.size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopForeground  service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  isServiceAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    :try_start_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    .line 14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    return v0
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    if-nez v0, :cond_5

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v1, "tryDownload but service is not alive"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/high16 v0, 0x40000

    .line 6
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 8
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Z

    if-nez p1, :cond_3

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v0, "tryDownload: 1"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/a;->startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Z

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->g:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/a;->startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 17
    :cond_5
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v1, "tryDownload when isServiceAlive"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;->e()V

    .line 19
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryDownload current task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    return-void
.end method

.method protected e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumePendingTask pendingTasks.size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 9
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 10
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    .line 11
    sget-object v5, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resumePendingTask key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public startService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->e:Ljava/lang/String;

    const-string v1, "startService"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/a;->startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method

.method protected startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    return-void
.end method

.method protected stopService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    return-void
.end method
