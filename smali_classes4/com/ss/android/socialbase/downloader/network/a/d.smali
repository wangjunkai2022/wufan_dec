.class public Lcom/ss/android/socialbase/downloader/network/a/d;
.super Ljava/lang/Object;
.source "FakeDownloadHttpConnection.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/i;


# instance fields
.field protected final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ss/android/socialbase/downloader/network/i;

.field private d:Z

.field private e:J

.field private f:Ljava/io/InputStream;


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/g;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->c:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/network/a/d;->a(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public h()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/a/d;->e:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/ss/android/socialbase/downloader/network/a/b;->a:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
