.class public Lcom/ss/android/socialbase/downloader/impls/n;
.super Lcom/ss/android/socialbase/downloader/downloader/a;
.source "IndependentDownloadServiceHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private g:Lcom/ss/android/socialbase/downloader/downloader/n;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 9
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/a;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 12
    :try_start_4
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 13
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    sget-object v1, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v2, "resumePendingTaskForIndependent failed"

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "fix_downloader_db_sigbus"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "fix_sigbus_downloader_db"

    .line 2
    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;Z)V

    .line 3
    :cond_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v0, "onBind IndependentDownloadBinder"

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/m;

    invoke-direct {p1}, Lcom/ss/android/socialbase/downloader/impls/m;-><init>()V

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 7
    iput p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->l(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/n;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryDownload aidlService == null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/n;->g()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)Lcom/ss/android/socialbase/downloader/model/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(Lcom/ss/android/socialbase/downloader/model/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(IZ)V

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->C()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    :cond_1
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->h()V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v0, "onServiceConnected "

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/i$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Landroid/os/IBinder;)V

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected aidlService!=null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " pendingTasks.size:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz p1, :cond_3

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    .line 8
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    .line 9
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Z

    .line 10
    iget p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->h:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 11
    :try_start_0
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/i;->l(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 13
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz p1, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/n;->g()V

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v0, "onServiceDisconnected "

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    .line 4
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->h()V

    :cond_0
    return-void
.end method

.method public startService()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fix_downloader_db_sigbus"

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v3, "fix_sigbus_downloader_db"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Ljava/lang/String;

    const-string v1, "stopService"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
