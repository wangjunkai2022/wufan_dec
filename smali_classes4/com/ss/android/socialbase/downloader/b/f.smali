.class public Lcom/ss/android/socialbase/downloader/b/f;
.super Ljava/lang/Object;
.source "SqlDownloadCacheAidlWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/ss/android/socialbase/downloader/downloader/t;


# static fields
.field private static b:Z

.field private static c:I

.field private static d:J


# instance fields
.field private a:Lcom/ss/android/socialbase/downloader/b/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Lcom/ss/android/socialbase/downloader/b/b;

.field private g:Lcom/ss/android/socialbase/downloader/downloader/c$a$a;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/CountDownLatch;


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
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->f:Lcom/ss/android/socialbase/downloader/b/b;

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/f$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/b/f$1;-><init>(Lcom/ss/android/socialbase/downloader/b/f;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->h:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->j:Ljava/util/concurrent/CountDownLatch;

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/SqlDownloadCacheService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/downloader/c$a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->g:Lcom/ss/android/socialbase/downloader/downloader/c$a$a;

    return-object p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->f:Lcom/ss/android/socialbase/downloader/b/b;

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/b/f;)Lcom/ss/android/socialbase/downloader/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    return-object p0
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->j:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/b/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/b/f;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    return v0
.end method

.method static synthetic g(Lcom/ss/android/socialbase/downloader/b/f;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private g()Z
    .locals 10

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget v0, Lcom/ss/android/socialbase/downloader/b/f;->c:I

    const/4 v2, 0x5

    const-string v3, "SqlDownloadCacheAidlWra"

    if-le v0, v2, :cond_2

    const-string v0, "bindMainProcess: bind too many times!!! "

    .line 5
    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    sget-wide v6, Lcom/ss/android/socialbase/downloader/b/f;->d:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3a98

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    const-string v0, "bindMainProcess: time too short since last bind!!! "

    .line 8
    invoke-static {v3, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_3
    sget v0, Lcom/ss/android/socialbase/downloader/b/f;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/ss/android/socialbase/downloader/b/f;->c:I

    .line 10
    sput-wide v4, Lcom/ss/android/socialbase/downloader/b/f;->d:J

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->e:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/socialbase/downloader/b/f$3;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/b/f$3;-><init>(Lcom/ss/android/socialbase/downloader/b/f;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1
.end method

.method static synthetic h(Lcom/ss/android/socialbase/downloader/b/f;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/b/f;->i:Ljava/util/concurrent/Future;

    return-object p0
.end method


# virtual methods
.method public a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 6

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 36
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/b/c;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(IIIJ)V
    .locals 6

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 24
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(IIJ)V
    .locals 1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/b/c;->a(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->a(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;",
            "Lcom/ss/android/socialbase/downloader/b/d;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/b/f$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/f$4;-><init>(Lcom/ss/android/socialbase/downloader/b/f;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/b;)V
    .locals 1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/b/b;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->f:Lcom/ss/android/socialbase/downloader/b/b;

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/c$a$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->g:Lcom/ss/android/socialbase/downloader/downloader/c$a$a;

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ILjava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->b()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/b/c;->b(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->b(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->c(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/b/c;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->d(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->d()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/b/c;->e()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Z
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->e(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)Z
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->f(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/b/c;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public m(I)V
    .locals 0

    return-void
.end method

.method public synthetic n(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/b/f;->a(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    .line 2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/f;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/b/c$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/ss/android/socialbase/downloader/b/f$2;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/socialbase/downloader/b/f$2;-><init>(Lcom/ss/android/socialbase/downloader/b/f;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->i:Ljava/util/concurrent/Future;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/f;->a:Lcom/ss/android/socialbase/downloader/b/c;

    const/4 p1, 0x0

    .line 2
    sput-boolean p1, Lcom/ss/android/socialbase/downloader/b/f;->b:Z

    return-void
.end method
