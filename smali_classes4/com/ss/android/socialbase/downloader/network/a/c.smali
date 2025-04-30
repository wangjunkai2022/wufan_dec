.class public Lcom/ss/android/socialbase/downloader/network/a/c;
.super Ljava/lang/Object;
.source "FakeDownloadHeadHttpConnection.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/g;


# static fields
.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:J

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/Object;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Lcom/ss/android/socialbase/downloader/network/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/a/c;->e:Ljava/util/ArrayList;

    const-string v1, "Content-Length"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Content-Range"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Transfer-Encoding"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Accept-Ranges"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Etag"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Content-Disposition"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->c:Ljava/util/List;

    .line 6
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->b:J

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/socialbase/downloader/network/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/a/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-interface {p1, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    .line 7
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-direct {p0, v3, v2}, Lcom/ss/android/socialbase/downloader/network/a/c;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/util/Map;)V

    .line 8
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->h:J

    .line 10
    iget v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/network/a/c;->a(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->i:Z

    .line 11
    :cond_1
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    .line 12
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 14
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 15
    :try_start_2
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v3, :cond_2

    .line 16
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    .line 17
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-direct {p0, v4, v3}, Lcom/ss/android/socialbase/downloader/network/a/c;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/util/Map;)V

    .line 18
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result v3

    iput v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->h:J

    .line 20
    iget v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    invoke-virtual {p0, v3}, Lcom/ss/android/socialbase/downloader/network/a/c;->a(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->i:Z

    .line 21
    :cond_2
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    .line 22
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 23
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
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
    iget v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->g:I

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->k:Lcom/ss/android/socialbase/downloader/network/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/g;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->d:Ljava/lang/Object;

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

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->i:Z

    return v0
.end method

.method public f()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->h:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/ss/android/socialbase/downloader/network/a/b;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->j:Z

    return v0
.end method

.method public h()Ljava/util/List;
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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/c;->f:Ljava/util/Map;

    return-object v0
.end method
