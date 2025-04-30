.class Lcom/ss/android/socialbase/downloader/e/a$1;
.super Ljava/lang/Object;
.source "AsyncStreamReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/e/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;)Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, v2, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, v2, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    .line 4
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3, v2}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 5
    iget v2, v2, Lcom/ss/android/socialbase/downloader/f/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 6
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3, v1}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)Z

    .line 8
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v1, [Ljava/io/Closeable;

    .line 10
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v2

    .line 12
    :try_start_3
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3, v2}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 14
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 15
    :try_start_4
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3, v1}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)Z

    .line 16
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 17
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    new-array v1, v1, [Ljava/io/Closeable;

    .line 18
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    .line 19
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v2

    .line 20
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 21
    :try_start_6
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/e/a;->a(Lcom/ss/android/socialbase/downloader/e/a;Z)Z

    .line 22
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/e/a;->c(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 23
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    new-array v1, v1, [Ljava/io/Closeable;

    .line 24
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/e/a$1;->a:Lcom/ss/android/socialbase/downloader/e/a;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/e/a;->b(Lcom/ss/android/socialbase/downloader/e/a;)Ljava/io/InputStream;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    throw v2

    :catchall_4
    move-exception v0

    .line 25
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
