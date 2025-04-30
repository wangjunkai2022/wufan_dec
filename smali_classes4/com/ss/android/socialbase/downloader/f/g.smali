.class Lcom/ss/android/socialbase/downloader/f/g;
.super Ljava/lang/Object;
.source "MultiSegmentWriter.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final d:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private final e:Lcom/ss/android/socialbase/downloader/g/a;

.field private final f:Lcom/ss/android/socialbase/downloader/h/f;

.field private final g:Lcom/ss/android/socialbase/downloader/f/c;

.field private h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private final l:Lcom/ss/android/socialbase/downloader/a/a;

.field private final m:Z

.field private final n:J

.field private final o:J

.field private final p:Z

.field private q:J

.field private volatile r:J

.field private volatile s:J


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/h/f;Lcom/ss/android/socialbase/downloader/f/c;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->i:Z

    .line 5
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->r:J

    .line 8
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->s:J

    .line 9
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/g;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->x()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/f/g;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 11
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/g;->f:Lcom/ss/android/socialbase/downloader/h/f;

    .line 12
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/f/g;->g:Lcom/ss/android/socialbase/downloader/f/c;

    .line 13
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/g;->l:Lcom/ss/android/socialbase/downloader/a/a;

    .line 14
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    const-string p2, "sync_strategy"

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/f/g;->m:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x1388

    const-string v1, "sync_interval_ms_fg"

    .line 16
    invoke-virtual {p1, v1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    int-to-long v1, p2

    const/16 p2, 0x3e8

    const-string v3, "sync_interval_ms_bg"

    .line 17
    invoke-virtual {p1, v3, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    int-to-long v3, p2

    const-wide/16 v5, 0x1f4

    .line 18
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->n:J

    .line 19
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->o:J

    goto :goto_1

    .line 20
    :cond_1
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->n:J

    .line 21
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/g;->o:J

    :goto_1
    const-string p2, "monitor_rw"

    .line 22
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->p:Z

    return-void
.end method

.method private a(JZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->s:J

    sub-long v0, p1, v0

    .line 134
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/g;->m:Z

    if-eqz v2, :cond_1

    .line 135
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/f/g;->l:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/g;->n:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/g;->o:J

    :goto_0
    cmp-long p3, v0, v2

    if-lez p3, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V

    .line 137
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/g;->s:J

    goto :goto_1

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/g;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/g;->r:J

    sub-long/2addr v2, v4

    if-nez p3, :cond_2

    .line 139
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/ss/android/socialbase/downloader/f/g;->a(JJ)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V

    .line 141
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/g;->s:J

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/e;)V
    .locals 1

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->b:Ljava/util/List;

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/l;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/l;

    .line 146
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/l;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/l;

    .line 148
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/l;->e()Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 151
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/i;->a(J)V

    .line 153
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(JJ)Z
    .locals 3

    const-wide/32 v0, 0x10000

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 p1, 0x1f4

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/l;

    .line 2
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/l;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->p:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/g;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 4
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/g;->d:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 5
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    .line 6
    iget-object v6, p0, Lcom/ss/android/socialbase/downloader/f/g;->b:Ljava/util/List;

    .line 7
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/ss/android/socialbase/downloader/downloader/j;->l(I)Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_1

    .line 8
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    :cond_1
    const/4 v8, 0x0

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-direct {p0, v5}, Lcom/ss/android/socialbase/downloader/f/g;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x1

    .line 11
    :try_start_1
    invoke-direct {p0, v5}, Lcom/ss/android/socialbase/downloader/f/g;->b(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception v10

    .line 12
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :goto_1
    invoke-direct {p0, v5, v7}, Lcom/ss/android/socialbase/downloader/f/g;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 15
    invoke-direct {p0, v6}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 16
    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 17
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 18
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_3

    .line 19
    invoke-virtual {v3, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 20
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v5

    invoke-interface {v4, v5, v7}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILjava/util/Map;)Z

    .line 21
    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    .line 22
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/f/g;->r:J

    :cond_3
    if-eqz v0, :cond_4

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 24
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 25
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/l;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/l;

    .line 27
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/l;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    .line 155
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->i:Z

    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/f/d;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 4
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_2c

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_33

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/b;->e()V

    const/4 v2, 0x0

    .line 6
    iput-object v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 7
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/f/g;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 8
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->f:Lcom/ss/android/socialbase/downloader/h/f;

    .line 9
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->g:Lcom/ss/android/socialbase/downloader/f/c;

    .line 10
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 12
    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/f/g;->p:Z

    const-wide/16 v9, 0x0

    const/16 v22, 0x1

    const/4 v15, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealStartDownloadTime()V
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_0 .. :try_end_0} :catch_16
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-wide v11, v9

    move-wide/from16 v16, v11

    move-wide/from16 v18, v16

    const/4 v13, 0x0

    :goto_0
    if-eqz v14, :cond_1

    .line 14
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11
    :try_end_1
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-wide/from16 v23, v9

    :goto_1
    move v15, v13

    move-wide/from16 v17, v16

    :goto_2
    const/16 v27, 0x0

    goto/16 :goto_18

    :catch_0
    move-exception v0

    move-wide/from16 v23, v9

    :goto_3
    move v15, v13

    move-wide/from16 v17, v16

    :goto_4
    const/16 v27, 0x0

    goto/16 :goto_25

    :catch_1
    move-exception v0

    move v15, v13

    move-wide/from16 v25, v16

    :goto_5
    const/16 v27, 0x0

    goto/16 :goto_2c

    .line 15
    :cond_1
    :goto_6
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/d;->a()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v2
    :try_end_2
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_2 .. :try_end_2} :catch_10
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-eqz v14, :cond_2

    .line 16
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v23
    :try_end_3
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long v23, v23, v11

    add-long v9, v9, v23

    :cond_2
    move-wide/from16 v23, v9

    .line 17
    :try_start_4
    iget v9, v2, Lcom/ss/android/socialbase/downloader/f/a;->c:I
    :try_end_4
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_4 .. :try_end_4} :catch_e
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 18
    :try_start_5
    iget-object v9, v2, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/e;

    invoke-direct {v1, v9}, Lcom/ss/android/socialbase/downloader/f/g;->a(Lcom/ss/android/socialbase/downloader/f/e;)V

    .line 19
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    move-wide/from16 v9, v23

    const/4 v2, 0x0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move v15, v13

    move-wide/from16 v25, v16

    :goto_7
    move-wide/from16 v9, v23

    goto :goto_5

    :cond_3
    if-eqz v14, :cond_4

    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10
    :try_end_5
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v11, v10

    .line 21
    :cond_4
    :try_start_6
    iget-object v10, v2, Lcom/ss/android/socialbase/downloader/f/a;->b:Lcom/ss/android/socialbase/downloader/f/e;

    invoke-interface {v10, v2}, Lcom/ss/android/socialbase/downloader/f/e;->b(Lcom/ss/android/socialbase/downloader/f/a;)V
    :try_end_6
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v14, :cond_5

    .line 22
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25
    :try_end_7
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sub-long v25, v25, v11

    add-long v16, v16, v25

    :cond_5
    move-wide/from16 v25, v16

    .line 23
    :try_start_8
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/f/c;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 24
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->i:Z

    if-eqz v2, :cond_d

    .line 25
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z
    :try_end_8
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-nez v2, :cond_7

    :try_start_9
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-eqz v2, :cond_6

    goto :goto_8

    .line 26
    :cond_6
    iput-boolean v15, v1, Lcom/ss/android/socialbase/downloader/f/g;->i:Z
    :try_end_9
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    move v15, v13

    move-wide/from16 v17, v25

    goto :goto_2

    :catch_4
    move-exception v0

    move v15, v13

    move-wide/from16 v17, v25

    goto :goto_4

    :catch_5
    move-exception v0

    move v15, v13

    goto :goto_7

    :cond_7
    :goto_8
    if-lez v13, :cond_8

    int-to-long v9, v13

    .line 27
    :try_start_a
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    :catchall_3
    nop

    .line 28
    :cond_8
    :goto_9
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_9

    .line 29
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loopAndWrite: finally sync, e = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_9
    :goto_a
    const/4 v2, 0x0

    .line 31
    :goto_b
    monitor-enter p0

    .line 32
    :try_start_c
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 33
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 35
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v5, v9, v5

    move-wide v10, v5

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 37
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    const/16 v27, 0x0

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_c

    .line 38
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/16 v22, 0x0

    :cond_b
    :goto_c
    if-nez v22, :cond_c

    :try_start_d
    const-string v0, "loopAndWrite_finally"

    .line 39
    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    .line 40
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 41
    throw v0

    :cond_c
    :goto_d
    return-void

    :catchall_5
    move-exception v0

    .line 42
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :cond_d
    :goto_e
    const/16 v27, 0x0

    add-int/2addr v13, v9

    const/high16 v2, 0x10000

    if-lt v13, v2, :cond_11

    .line 43
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v15, v9, v18

    const-wide/16 v28, 0x64

    cmp-long v2, v15, v28

    if-lez v2, :cond_11

    move-wide/from16 v28, v11

    int-to-long v11, v13

    .line 44
    invoke-interface {v3, v11, v12}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z

    move-result v2
    :try_end_f
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_f .. :try_end_f} :catch_a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 45
    :try_start_10
    invoke-direct {v1, v9, v10, v2}, Lcom/ss/android/socialbase/downloader/f/g;->a(JZ)V

    .line 46
    sget-boolean v2, Lcom/ss/android/socialbase/downloader/network/b;->a:Z

    if-nez v2, :cond_10

    .line 47
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v2

    if-nez v2, :cond_f

    .line 48
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadFromReserveWifi()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 49
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_f

    .line 50
    :cond_e
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/e;-><init>()V

    throw v0

    .line 51
    :cond_f
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/c;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/c;-><init>()V

    throw v0
    :try_end_10
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :cond_10
    :goto_f
    move-wide/from16 v18, v9

    move-wide/from16 v9, v23

    move-wide/from16 v16, v25

    move-wide/from16 v11, v28

    const/4 v2, 0x0

    const/4 v13, 0x0

    goto :goto_10

    :catchall_6
    move-exception v0

    move-wide/from16 v17, v25

    goto/16 :goto_17

    :catch_7
    move-exception v0

    move-wide/from16 v17, v25

    goto/16 :goto_24

    :catch_8
    move-exception v0

    move-wide/from16 v9, v23

    goto/16 :goto_2b

    :catchall_7
    move-exception v0

    goto :goto_11

    :catch_9
    move-exception v0

    goto :goto_12

    :catch_a
    move-exception v0

    goto :goto_13

    :cond_11
    move-wide/from16 v28, v11

    move-wide/from16 v9, v23

    move-wide/from16 v16, v25

    move-wide/from16 v11, v28

    const/4 v2, 0x0

    :goto_10
    const/4 v15, 0x0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    const/16 v27, 0x0

    :goto_11
    move v15, v13

    move-wide/from16 v17, v25

    goto :goto_18

    :catch_b
    move-exception v0

    const/16 v27, 0x0

    :goto_12
    move v15, v13

    move-wide/from16 v17, v25

    goto/16 :goto_25

    :catch_c
    move-exception v0

    const/16 v27, 0x0

    :goto_13
    move v15, v13

    goto :goto_14

    :catchall_9
    move-exception v0

    const/16 v27, 0x0

    goto :goto_15

    :catch_d
    move-exception v0

    const/16 v27, 0x0

    goto :goto_16

    :catch_e
    move-exception v0

    const/16 v27, 0x0

    move v15, v13

    move-wide/from16 v25, v16

    :goto_14
    move-wide/from16 v9, v23

    goto/16 :goto_2c

    :catchall_a
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v23, v9

    :goto_15
    move v15, v13

    move-wide/from16 v17, v16

    goto :goto_18

    :catch_f
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v23, v9

    :goto_16
    move v15, v13

    move-wide/from16 v17, v16

    goto/16 :goto_25

    :catch_10
    move-exception v0

    const/16 v27, 0x0

    move v15, v13

    move-wide/from16 v25, v16

    goto/16 :goto_2c

    :catchall_b
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v17, v9

    move-wide/from16 v23, v17

    :goto_17
    const/4 v15, 0x0

    .line 52
    :goto_18
    :try_start_11
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v2, :cond_19

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-eqz v2, :cond_12

    goto/16 :goto_1e

    .line 53
    :cond_12
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    const-string v2, "MultiSegmentWriter"

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loopAndWrite:  e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_15

    :try_start_12
    const-string v2, "loopAndWrite"

    .line 56
    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_15

    if-lez v15, :cond_14

    int-to-long v9, v15

    .line 57
    :try_start_13
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    goto :goto_19

    :catchall_c
    nop

    .line 58
    :cond_14
    :goto_19
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_15

    .line 59
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    goto :goto_1a

    :catchall_d
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loopAndWrite: finally sync, e = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_15
    :goto_1a
    const/4 v2, 0x0

    .line 61
    :goto_1b
    monitor-enter p0

    .line 62
    :try_start_15
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 63
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 65
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v5, v9, v5

    move-wide v10, v5

    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 67
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_18

    .line 68
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_17

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_16

    goto :goto_1c

    :cond_16
    const/16 v22, 0x0

    :cond_17
    :goto_1c
    if-nez v22, :cond_18

    :try_start_16
    const-string v0, "loopAndWrite_finally"

    .line 69
    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_16 .. :try_end_16} :catch_11

    goto :goto_1d

    :catch_11
    move-exception v0

    .line 70
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 71
    throw v0

    :cond_18
    :goto_1d
    return-void

    :catchall_e
    move-exception v0

    .line 72
    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    throw v0

    :catch_12
    move-exception v0

    .line 73
    :try_start_18
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 74
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    :cond_19
    :goto_1e
    if-lez v15, :cond_1a

    int-to-long v9, v15

    .line 75
    :try_start_19
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    goto :goto_1f

    :catchall_f
    nop

    .line 76
    :cond_1a
    :goto_1f
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_1b

    .line 77
    :try_start_1a
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    goto :goto_20

    :catchall_10
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loopAndWrite: finally sync, e = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_1b
    :goto_20
    const/4 v2, 0x0

    .line 79
    :goto_21
    monitor-enter p0

    .line 80
    :try_start_1b
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 81
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    .line 83
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v5, v9, v5

    move-wide v10, v5

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 85
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_1e

    .line 86
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_1d

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_1c

    goto :goto_22

    :cond_1c
    const/16 v22, 0x0

    :cond_1d
    :goto_22
    if-nez v22, :cond_1e

    :try_start_1c
    const-string v0, "loopAndWrite_finally"

    .line 87
    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1c
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1c .. :try_end_1c} :catch_13

    goto :goto_23

    :catch_13
    move-exception v0

    .line 88
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 89
    throw v0

    :cond_1e
    :goto_23
    return-void

    :catchall_11
    move-exception v0

    .line 90
    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    throw v0

    :catch_14
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v17, v9

    move-wide/from16 v23, v17

    :goto_24
    const/4 v15, 0x0

    .line 91
    :goto_25
    :try_start_1e
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v9, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v9}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 92
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v2, :cond_1f

    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    if-eqz v2, :cond_25

    :cond_1f
    if-lez v15, :cond_20

    int-to-long v9, v15

    .line 93
    :try_start_1f
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    goto :goto_26

    :catchall_12
    nop

    .line 94
    :cond_20
    :goto_26
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_21

    .line 95
    :try_start_20
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    goto :goto_27

    :catchall_13
    move-exception v0

    move-object v2, v0

    const-string v0, "MultiSegmentWriter"

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loopAndWrite: finally sync, e = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_21
    :goto_27
    const/4 v2, 0x0

    .line 97
    :goto_28
    monitor-enter p0

    .line 98
    :try_start_21
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 99
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    .line 101
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v5, v9, v5

    move-wide v10, v5

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 103
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move v0, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move v7, v0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v2, :cond_24

    .line 104
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v0, :cond_23

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_22

    goto :goto_29

    :cond_22
    const/16 v22, 0x0

    :cond_23
    :goto_29
    if-nez v22, :cond_24

    :try_start_22
    const-string v0, "loopAndWrite_finally"

    .line 105
    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_22
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_22 .. :try_end_22} :catch_15

    goto :goto_2a

    :catch_15
    move-exception v0

    .line 106
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 107
    throw v0

    :cond_24
    :goto_2a
    return-void

    :catchall_14
    move-exception v0

    .line 108
    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    throw v0

    .line 109
    :cond_25
    :try_start_24
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    const-string v2, "MultiSegmentWriter"

    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loopAndWrite:  BaseException e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 113
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    :catchall_15
    move-exception v0

    move-object v2, v0

    goto :goto_2d

    :catch_16
    move-exception v0

    const/16 v27, 0x0

    move-wide/from16 v25, v9

    :goto_2b
    const/4 v15, 0x0

    .line 114
    :goto_2c
    :try_start_25
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 115
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    :catchall_16
    move-exception v0

    move-object v2, v0

    move-wide/from16 v23, v9

    move-wide/from16 v17, v25

    :goto_2d
    if-lez v15, :cond_27

    int-to-long v9, v15

    .line 116
    :try_start_26
    invoke-interface {v3, v9, v10}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_17

    goto :goto_2e

    :catchall_17
    nop

    .line 117
    :cond_27
    :goto_2e
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v0, :cond_28

    .line 118
    :try_start_27
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/f/g;->c()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_18

    goto :goto_2f

    :catchall_18
    move-exception v0

    move-object v3, v0

    const-string v0, "MultiSegmentWriter"

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loopAndWrite: finally sync, e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_30

    :cond_28
    :goto_2f
    const/4 v0, 0x0

    .line 120
    :goto_30
    monitor-enter p0

    .line 121
    :try_start_28
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/downloader/f/g;->c(Ljava/util/List;)V

    .line 122
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 123
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    .line 124
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v9

    sub-long v5, v9, v5

    move-wide v10, v5

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v12, v5, v7

    .line 126
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->e:Lcom/ss/android/socialbase/downloader/g/a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    iget-boolean v8, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move/from16 v25, v7

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/f/g;->q:J

    move-wide/from16 v19, v6

    const/16 v21, 0x0

    move-wide/from16 v15, v23

    move/from16 v7, v25

    const/4 v6, 0x0

    invoke-static/range {v3 .. v21}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    if-eqz v0, :cond_2b

    .line 127
    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    if-nez v3, :cond_2a

    iget-boolean v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->k:Z

    if-nez v3, :cond_2a

    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v3, :cond_29

    goto :goto_31

    :cond_29
    const/16 v22, 0x0

    :cond_2a
    :goto_31
    if-nez v22, :cond_2b

    :try_start_29
    const-string v3, "loopAndWrite_finally"

    .line 128
    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_29 .. :try_end_29} :catch_17

    goto :goto_32

    :catch_17
    move-exception v0

    .line 129
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/f/g;->h:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 130
    throw v0

    .line 131
    :cond_2b
    :goto_32
    throw v2

    :catchall_19
    move-exception v0

    .line 132
    :try_start_2a
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_19

    throw v0

    :cond_2c
    :goto_33
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/f/l;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->j:Z

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/g;->i:Z

    return-void
.end method
