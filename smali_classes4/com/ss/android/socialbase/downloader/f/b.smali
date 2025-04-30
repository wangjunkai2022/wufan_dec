.class Lcom/ss/android/socialbase/downloader/f/b;
.super Ljava/lang/Object;
.source "BufferQueue.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/f/c;
.implements Lcom/ss/android/socialbase/downloader/f/d;
.implements Lcom/ss/android/socialbase/downloader/f/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private e:Lcom/ss/android/socialbase/downloader/f/a;

.field private f:Lcom/ss/android/socialbase/downloader/f/a;

.field private g:Lcom/ss/android/socialbase/downloader/f/a;

.field private h:Lcom/ss/android/socialbase/downloader/f/a;

.field private i:Lcom/ss/android/socialbase/downloader/f/a;

.field private volatile j:Z

.field private k:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    const/16 p1, 0x40

    :cond_0
    const/16 v0, 0x2000

    if-ge p2, v0, :cond_1

    const/16 p2, 0x2000

    .line 4
    :cond_1
    iput p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->a:I

    .line 5
    iput p2, p0, Lcom/ss/android/socialbase/downloader/f/b;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/f/a;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/p;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->i:Lcom/ss/android/socialbase/downloader/f/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 3
    iput-object v1, v0, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->g:Lcom/ss/android/socialbase/downloader/f/a;

    :goto_0
    if-nez v2, :cond_2

    .line 6
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->j:Z

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 8
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->g:Lcom/ss/android/socialbase/downloader/f/a;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, "read"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/f/b;->i:Lcom/ss/android/socialbase/downloader/f/a;

    .line 11
    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->h:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->g:Lcom/ss/android/socialbase/downloader/f/a;

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

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/a;)V
    .locals 2
    .param p1    # Lcom/ss/android/socialbase/downloader/f/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    if-nez v1, :cond_0

    .line 17
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->e:Lcom/ss/android/socialbase/downloader/f/a;

    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 19
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lcom/ss/android/socialbase/downloader/f/a;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/p;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->j:Z

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->e:Lcom/ss/android/socialbase/downloader/f/a;

    if-nez v1, :cond_2

    .line 4
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->k:I

    iget v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->a:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->k:I

    .line 6
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/a;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->b:I

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;-><init>(I)V

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 9
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->j:Z

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->e:Lcom/ss/android/socialbase/downloader/f/a;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, "obtain"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->e:Lcom/ss/android/socialbase/downloader/f/a;

    .line 13
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 14
    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/f/b;->f:Lcom/ss/android/socialbase/downloader/f/a;

    .line 15
    :cond_3
    iput-object v3, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 16
    monitor-exit v0

    return-object v1

    .line 17
    :cond_4
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string v2, "obtain"

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/f/a;)V
    .locals 2
    .param p1    # Lcom/ss/android/socialbase/downloader/f/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->h:Lcom/ss/android/socialbase/downloader/f/a;

    if-nez v1, :cond_0

    .line 21
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->h:Lcom/ss/android/socialbase/downloader/f/a;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->g:Lcom/ss/android/socialbase/downloader/f/a;

    .line 22
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 23
    :cond_0
    iput-object p1, v1, Lcom/ss/android/socialbase/downloader/f/a;->d:Lcom/ss/android/socialbase/downloader/f/a;

    .line 24
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/b;->h:Lcom/ss/android/socialbase/downloader/f/a;

    .line 25
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

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->j:Z

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/b;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
