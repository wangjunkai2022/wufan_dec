.class public Lcom/ss/android/socialbase/downloader/impls/d;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/j;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/impls/k;

.field private b:Lcom/ss/android/socialbase/downloader/downloader/t;

.field private volatile c:Z

.field private volatile d:Z

.field private e:Lcom/ss/android/socialbase/downloader/h/h$a;

.field private f:Lcom/ss/android/socialbase/downloader/h/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/d$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/d$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lcom/ss/android/socialbase/downloader/h/h$a;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/h/h;

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/k;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "fix_sigbus_downloader_db"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->S()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->T()Lcom/ss/android/socialbase/downloader/downloader/c$a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/d$2;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/impls/d$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/c$a;->a(Lcom/ss/android/socialbase/downloader/downloader/c$a$a;)Lcom/ss/android/socialbase/downloader/downloader/t;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/b/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Lcom/ss/android/socialbase/downloader/b/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/b/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    :goto_1
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    .line 11
    new-instance v0, Lcom/ss/android/socialbase/downloader/h/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lcom/ss/android/socialbase/downloader/h/h$a;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/h/h;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/h/h$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/h/h;

    .line 12
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->g()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/d;Lcom/ss/android/socialbase/downloader/downloader/t;)Lcom/ss/android/socialbase/downloader/downloader/t;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/d;)Lcom/ss/android/socialbase/downloader/impls/k;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 39
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 40
    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_0

    .line 41
    :cond_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_0

    .line 42
    :cond_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/impls/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->j()V

    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/impls/k;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    return-object v0
.end method

.method public a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(II)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-object p1
.end method

.method public a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

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

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 26
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIII)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIII)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIII)V

    :goto_0
    return-void
.end method

.method public a(IIIJ)V
    .locals 9

    .line 20
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .line 22
    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIIJ)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIIJ)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIIJ)V

    :goto_0
    return-void
.end method

.method public a(IIJ)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IIJ)V

    .line 15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIJ)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIJ)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIJ)V

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

    if-eqz p2, :cond_1

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(ILjava/util/List;)V

    .line 45
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(ILjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ILjava/util/Map;)Z
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

    .line 47
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(ILjava/util/Map;)Z

    .line 48
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILjava/util/Map;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    .line 33
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->b(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    const/4 p3, 0x0

    .line 11
    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    return-object p2
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

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/k;->b()Ljava/util/List;

    move-result-object v0

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

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

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

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    if-nez p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p2

    .line 15
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/m;->b(ILjava/util/List;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(ILjava/util/List;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/b;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    :goto_0
    return-void
.end method

.method public c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->c(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    const/4 p3, 0x0

    .line 12
    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    return-object p2
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

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Ljava/util/List;

    move-result-object p1

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

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/k;->c()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 5
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->f()V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->c()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->c()V

    :goto_1
    return-void
.end method

.method public d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->d(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p2

    const/4 p3, 0x0

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->b(ILjava/util/List;)V

    return-object p2
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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)V

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->o(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-nez v0, :cond_1

    const-string v0, "DefaultDownloadCache"

    const-string v1, "ensureDownloadCacheSyncSuccess: waiting start!!!!"

    .line 4
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    .line 5
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "DefaultDownloadCache"

    const-string v1, "ensureDownloadCacheSyncSuccess: waiting end!!!!"

    .line 7
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    return v0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public e(I)Z
    .locals 1

    .line 11
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->n(I)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->e(I)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->e(I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->e(I)Z

    move-result p1

    return p1
.end method

.method public f()Lcom/ss/android/socialbase/downloader/downloader/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    return-object v0
.end method

.method public f(I)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/m;->p(I)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->f(I)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->f(I)Z

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->f(I)Z

    move-result p1

    return p1
.end method

.method public g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->g(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-object p1
.end method

.method public g()V
    .locals 8

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/d;->b:Lcom/ss/android/socialbase/downloader/constants/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/constants/d;)V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 9
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 10
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v7, :cond_0

    .line 11
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/impls/k;->f()Landroid/util/SparseArray;

    move-result-object v3

    .line 13
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 14
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2

    .line 16
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    new-instance v3, Lcom/ss/android/socialbase/downloader/impls/d$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/d$3;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/t;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/ss/android/socialbase/downloader/b/d;)V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-object p1
.end method

.method public h()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "task_resume_delay"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1388

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/h/h;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/d;->f:Lcom/ss/android/socialbase/downloader/h/h;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-object p1
.end method

.method public i()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "DefaultDownloadCache"

    const-string v1, "resumeUnCompleteTask: has resumed, return!!!"

    .line 3
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->d:Z

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->a()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->w()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 7
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    move-object v4, v2

    goto :goto_0

    :cond_4
    move-object v3, v2

    move-object v4, v3

    .line 10
    :goto_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v6}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 14
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    if-eqz v9, :cond_5

    .line 15
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v10, :cond_5

    .line 16
    invoke-virtual {v5, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 17
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_7

    return-void

    :cond_7
    const/4 v6, 0x0

    .line 19
    :goto_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_f

    .line 20
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    .line 21
    :cond_8
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v8, :cond_9

    goto :goto_3

    .line 22
    :cond_9
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v9

    .line 23
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatusAtDbInit()I

    move-result v10

    if-lt v10, v0, :cond_a

    const/16 v11, 0xb

    if-gt v10, v11, :cond_a

    .line 24
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v10

    const/4 v11, -0x5

    .line 25
    invoke-static {v10, v8, v2, v11}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/d/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    :cond_a
    if-eqz v3, :cond_e

    if-nez v4, :cond_b

    goto :goto_3

    .line 26
    :cond_b
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 27
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_3

    .line 28
    :cond_c
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v10

    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v10

    const-string v11, "enable_notification_ui"

    invoke-virtual {v10, v11}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_d

    const/4 v10, -0x2

    if-ne v9, v10, :cond_d

    .line 29
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_3

    .line 30
    :cond_d
    invoke-virtual {v8, v7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 31
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_f
    if-eqz v1, :cond_10

    if-eqz v4, :cond_10

    .line 32
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 33
    invoke-interface {v1, v4, v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/util/List;I)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->j(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-object p1
.end method

.method public l(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->l(I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->l(I)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v1, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a(ILjava/util/Map;)Z

    :cond_1
    return-object v0
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->m(I)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->m(I)V

    return-void
.end method

.method public n(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->n(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->n(I)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method
