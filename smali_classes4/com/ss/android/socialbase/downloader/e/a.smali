.class public Lcom/ss/android/socialbase/downloader/e/a;
.super Ljava/lang/Object;
.source "AsyncStreamReader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/e/b;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/ss/android/socialbase/downloader/f/a;

.field private g:Lcom/ss/android/socialbase/downloader/f/a;

.field private h:Lcom/ss/android/socialbase/downloader/f/a;

.field private i:Lcom/ss/android/socialbase/downloader/f/a;

.field private j:Lcom/ss/android/socialbase/downloader/f/a;

.field private k:Lcom/ss/android/socialbase/downloader/f/a;

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Ljava/lang/Throwable;

.field private volatile o:Ljava/util/concurrent/Future;

.field private p:I

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/e/a$1;-><init>(Lcom/ss/android/socialbase/downloader/e/a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->q:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->a:Ljava/io/InputStream;

    .line 6
    iput p2, p0, Lcom/ss/android/socialbase/downloader/e/a;->b:I

    const/16 p1, 0x40

    const/4 p2, 0x1

    if-ge p3, p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    if-le p3, p1, :cond_1

    const/16 p3, 0x40

    .line 7
    :cond_1
    :goto_0
    iput p3, p0, Lcom/ss/android/socialbase/downloader/e/a;->c:I

    .line 8
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/e/a;)Lcom/ss/android/socialbase/downloader/f/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/p;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;->d()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->n:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/f/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/f/a;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/e/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/e/a;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method private b(Lcom/ss/android/socialbase/downloader/f/a;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->g:Lcom/ss/android/socialbase/downloader/f/a;

    if-nez v1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->g:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 13
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 15
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->g:Lcom/ss/android/socialbase/downloader/f/a;

    .line 16
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->q()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->q:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->o:Ljava/util/concurrent/Future;

    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/f/a;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->j:Lcom/ss/android/socialbase/downloader/f/a;

    if-nez v1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->j:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 7
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 9
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a;->j:Lcom/ss/android/socialbase/downloader/f/a;

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d()Lcom/ss/android/socialbase/downloader/f/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/p;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->h:Lcom/ss/android/socialbase/downloader/f/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->l:Z

    if-nez v2, :cond_0

    .line 3
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->h:Lcom/ss/android/socialbase/downloader/f/a;

    .line 4
    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->l:Z

    if-nez v2, :cond_5

    .line 8
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->f:Lcom/ss/android/socialbase/downloader/f/a;

    if-nez v2, :cond_2

    .line 9
    iget v3, p0, Lcom/ss/android/socialbase/downloader/e/a;->p:I

    iget v4, p0, Lcom/ss/android/socialbase/downloader/e/a;->c:I

    if-ge v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 10
    iput v3, p0, Lcom/ss/android/socialbase/downloader/e/a;->p:I

    .line 11
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/a;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->b:I

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;-><init>(I)V

    .line 12
    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    .line 13
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 14
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->l:Z

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->f:Lcom/ss/android/socialbase/downloader/f/a;

    goto :goto_0

    .line 16
    :cond_3
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_4
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a;->h:Lcom/ss/android/socialbase/downloader/f/a;

    .line 18
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->g:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 19
    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 20
    monitor-exit v0

    return-object v2

    .line 21
    :cond_5
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private e()Lcom/ss/android/socialbase/downloader/f/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->k:Lcom/ss/android/socialbase/downloader/f/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->k:Lcom/ss/android/socialbase/downloader/f/a;

    .line 3
    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->i:Lcom/ss/android/socialbase/downloader/f/a;

    if-nez v2, :cond_3

    .line 6
    :cond_1
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->m:Z

    if-eqz v2, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;->f()V

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 9
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->i:Lcom/ss/android/socialbase/downloader/f/a;

    if-eqz v2, :cond_1

    .line 10
    :cond_3
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a;->k:Lcom/ss/android/socialbase/downloader/f/a;

    .line 11
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->j:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 12
    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 13
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method private f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->n:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/f/p;

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x42c

    const-string v2, "async reader closed!"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "async_read"

    .line 4
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5
    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x42d

    const-string v2, "async reader terminated!"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;->e()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/a;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/f/a;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/e/a;->l:Z

    .line 4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->o:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/e/a;->o:Ljava/util/concurrent/Future;

    :cond_0
    return-void

    :catchall_1
    move-exception v1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
