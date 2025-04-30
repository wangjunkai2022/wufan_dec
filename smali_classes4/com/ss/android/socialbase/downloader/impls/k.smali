.class public Lcom/ss/android/socialbase/downloader/impls/k;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/j;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public declared-synchronized a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 42
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 44
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x2

    if-eq p2, p3, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isFailedStatus(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    const/4 p3, -0x4

    if-eq p2, p3, :cond_0

    const/4 p2, 0x4

    .line 48
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_0
    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 38
    invoke-virtual {p1, p4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->seteTag(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 40
    invoke-virtual {p1, p5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setName(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x3

    .line 41
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_1
    return-object p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(IIII)V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(IIIJ)V
    .locals 2

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v1

    if-ne v1, p3, :cond_1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ss/android/socialbase/downloader/model/b;

    if-eqz p3, :cond_3

    .line 26
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v0

    if-ne v0, p2, :cond_3

    .line 27
    invoke-virtual {p3, p4, p5}, Lcom/ss/android/socialbase/downloader/model/b;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized a(IIJ)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 18
    invoke-virtual {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/model/b;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    .line 49
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/b;

    if-nez p2, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 53
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 55
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 56
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 3

    .line 9
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized a(ILjava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 58
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 32
    monitor-exit p0

    return v0

    .line 33
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 3
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    const/4 p2, -0x1

    .line 26
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    :cond_0
    return-object p1
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 18
    monitor-exit p0

    return-object v0

    .line 19
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_1

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    monitor-exit p0

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 7
    monitor-exit p0

    return-object v1

    .line 8
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isFailedStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public b(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 0

    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 18
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    const/4 p2, -0x3

    .line 20
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSuccess(Z)V

    :cond_0
    return-object p1
.end method

.method public declared-synchronized c(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 16
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, p2, p3, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    const/4 p2, -0x2

    .line 18
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_0
    return-object p1
.end method

.method public declared-synchronized d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isUnCompletedStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized e(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method public f(I)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->e(I)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->m(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_0
    return-object p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstDownload(Z)V

    :cond_0
    return-object p1
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_0
    return-object p1
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x7

    .line 2
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_0
    return-object p1
.end method

.method public declared-synchronized l(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
