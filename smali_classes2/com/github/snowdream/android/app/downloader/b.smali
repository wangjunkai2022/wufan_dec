.class public Lcom/github/snowdream/android/app/downloader/b;
.super Ljava/lang/Object;
.source "CommonDownloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/snowdream/android/app/downloader/b$b;
    }
.end annotation


# static fields
.field private static f:Lcom/github/snowdream/android/app/downloader/b;


# instance fields
.field a:Lcom/github/snowdream/android/app/downloader/b$b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private e:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    new-instance v0, Lcom/github/snowdream/android/app/downloader/b$a;

    invoke-direct {v0, p0}, Lcom/github/snowdream/android/app/downloader/b$a;-><init>(Lcom/github/snowdream/android/app/downloader/b;)V

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/github/snowdream/android/app/downloader/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/snowdream/android/app/downloader/b;->b:Ljava/util/List;

    return-object p0
.end method

.method public static e()Lcom/github/snowdream/android/app/downloader/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/snowdream/android/app/downloader/b;->f:Lcom/github/snowdream/android/app/downloader/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/snowdream/android/app/downloader/b;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/b;-><init>()V

    sput-object v0, Lcom/github/snowdream/android/app/downloader/b;->f:Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    :cond_0
    sget-object v0, Lcom/github/snowdream/android/app/downloader/b;->f:Lcom/github/snowdream/android/app/downloader/b;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->e:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/c;->r(Landroid/os/Handler;)V

    .line 6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 7
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x6

    .line 8
    iput v2, v1, Landroid/os/Message;->what:I

    .line 9
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b;->e:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/c;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->e()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public f()Lcom/github/snowdream/android/app/downloader/b$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->a:Lcom/github/snowdream/android/app/downloader/b$b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    .line 2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/c;->e()V

    .line 6
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public j(Lcom/github/snowdream/android/app/downloader/b$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->a:Lcom/github/snowdream/android/app/downloader/b$b;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/c;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/c;->e()V

    .line 6
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Lcom/github/snowdream/android/app/downloader/b$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/b;->a:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized n()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    :goto_0
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 7
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_5
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    .line 12
    :goto_2
    :try_start_6
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v2, :cond_2

    monitor-exit p0

    return-void

    .line 14
    :cond_2
    :try_start_7
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 15
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/b;->c:Ljava/util/Map;

    .line 16
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
