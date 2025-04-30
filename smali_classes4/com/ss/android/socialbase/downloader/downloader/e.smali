.class public Lcom/ss/android/socialbase/downloader/downloader/e;
.super Ljava/lang/Object;
.source "DownloadResponseHandler.java"


# static fields
.field private static b:Ljava/lang/String; = "ResponseHandler"


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private volatile E:J

.field private volatile F:J

.field a:Z

.field private final c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/ss/android/socialbase/downloader/model/b;

.field private final f:Lcom/ss/android/socialbase/downloader/network/i;

.field private g:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private h:Lcom/ss/android/socialbase/downloader/impls/k;

.field private i:Lcom/ss/android/socialbase/downloader/downloader/t;

.field private j:Lcom/ss/android/socialbase/downloader/model/e;

.field private k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private volatile l:Z

.field private volatile m:Z

.field private final n:Lcom/ss/android/socialbase/downloader/h/f;

.field private o:J

.field private p:J

.field private volatile q:J

.field private volatile r:J

.field private final s:Z

.field private final t:Lcom/ss/android/socialbase/downloader/g/a;

.field private final u:Lcom/ss/android/socialbase/downloader/a/a;

.field private final v:Z

.field private final w:J

.field private final x:J

.field private final y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/model/b;Lcom/ss/android/socialbase/downloader/h/f;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->E:J

    .line 4
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->F:J

    .line 5
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 6
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->x()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->g:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 8
    instance-of v3, p2, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz v3, :cond_0

    .line 9
    check-cast p2, Lcom/ss/android/socialbase/downloader/impls/d;

    .line 10
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/impls/d;->a()Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    .line 11
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/impls/d;->f()Lcom/ss/android/socialbase/downloader/downloader/t;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Lcom/ss/android/socialbase/downloader/downloader/t;

    .line 12
    :cond_0
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    .line 13
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    .line 14
    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    .line 15
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    .line 16
    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    .line 17
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/b;->q()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p4, v0}, Lcom/ss/android/socialbase/downloader/model/b;->c(Z)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    .line 20
    :goto_0
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->q:J

    .line 21
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->u:Lcom/ss/android/socialbase/downloader/a/a;

    .line 22
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const-string p2, "sync_strategy"

    .line 23
    invoke-virtual {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->v:Z

    if-eqz p2, :cond_3

    const/16 p2, 0x1388

    const-string p4, "sync_interval_ms_fg"

    .line 24
    invoke-virtual {p1, p4, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    int-to-long p4, p2

    const/16 p2, 0x3e8

    const-string v1, "sync_interval_ms_bg"

    .line 25
    invoke-virtual {p1, v1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p2

    int-to-long v1, p2

    const-wide/16 v3, 0x1f4

    .line 26
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->w:J

    .line 27
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->x:J

    goto :goto_2

    .line 28
    :cond_3
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->w:J

    .line 29
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->x:J

    :goto_2
    const-string p2, "monitor_rw"

    .line 30
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p3, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->y:Z

    const/high16 p1, 0x10000

    .line 31
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->s:Z

    return-void
.end method

.method private a(Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/e/b;
    .locals 8

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->H()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v2, "rw_concurrent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 11
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 12
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    const-wide/32 v6, 0x1400000

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const/4 v4, 0x4

    const-string v5, "rw_concurrent_max_buffer_count"

    invoke-virtual {v1, v5, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 14
    :try_start_0
    new-instance v4, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-direct {v4, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(Ljava/io/InputStream;II)V

    .line 15
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :cond_0
    new-instance v1, Lcom/ss/android/socialbase/downloader/e/c;

    invoke-direct {v1, p1, v0}, Lcom/ss/android/socialbase/downloader/e/c;-><init>(Ljava/io/InputStream;I)V

    .line 18
    iput-boolean v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->z:Z

    return-object v1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/e;)Lcom/ss/android/socialbase/downloader/network/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/downloader/j;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 29
    instance-of v8, v7, Lcom/ss/android/socialbase/downloader/b/e;

    if-eqz v8, :cond_1

    .line 30
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v15, v1

    .line 31
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->e()Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v1

    goto :goto_0

    .line 33
    :cond_2
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    :goto_0
    move-object v5, v1

    if-eqz v5, :cond_7

    .line 34
    iget-wide v1, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    invoke-virtual {v5, v1, v2}, Lcom/ss/android/socialbase/downloader/model/b;->b(J)V

    if-eqz v8, :cond_3

    if-eqz v15, :cond_3

    .line 35
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v10

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v11

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v12

    iget-wide v13, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    move-object v9, v15

    invoke-interface/range {v9 .. v14}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIIJ)V

    move-object v11, v5

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v2

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v3

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    iget-wide v9, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    move-object/from16 v1, p1

    move-object v11, v5

    move-wide v5, v9

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIIJ)V

    .line 37
    :goto_1
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->j()J

    move-result-wide v2

    .line 40
    iget-wide v4, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    if-eqz v8, :cond_4

    if-eqz v15, :cond_4

    .line 41
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    invoke-interface {v15, v1, v4, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIJ)V

    goto :goto_2

    .line 42
    :cond_4
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v4

    invoke-interface {v7, v1, v4, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIJ)V

    :goto_2
    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_9

    if-eqz v8, :cond_6

    if-eqz v15, :cond_6

    .line 43
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    invoke-interface {v15, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIJ)V

    goto :goto_3

    .line 44
    :cond_6
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIJ)V

    goto :goto_3

    .line 45
    :cond_7
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v8, :cond_8

    if-eqz v15, :cond_8

    .line 46
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    invoke-interface {v15, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(IIJ)V

    goto :goto_3

    .line 47
    :cond_8
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIJ)V

    :cond_9
    :goto_3
    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->F:J

    sub-long v2, v0, v2

    .line 21
    iget-boolean v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->v:Z

    if-eqz v4, :cond_1

    .line 22
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->u:Lcom/ss/android/socialbase/downloader/a/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->w:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->x:J

    :goto_0
    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 23
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 24
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->F:J

    goto :goto_1

    .line 25
    :cond_1
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->E:J

    sub-long/2addr v4, v6

    if-nez p1, :cond_2

    .line 26
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 28
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->F:J

    :cond_3
    :goto_1
    return-void
.end method

.method private b(JJ)Z
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

.method private f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/e$1;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$1;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->y:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 3
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealDownloadTime(Z)V

    .line 4
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v4

    if-le v4, v3, :cond_1

    const/4 v2, 0x1

    .line 5
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->b()Z

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v3

    if-eqz v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Lcom/ss/android/socialbase/downloader/downloader/t;

    invoke-direct {p0, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    if-eqz v3, :cond_2

    .line 7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/m;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_2

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Lcom/ss/android/socialbase/downloader/downloader/t;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 9
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/m;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    goto :goto_2

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:Lcom/ss/android/socialbase/downloader/downloader/t;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->k()I

    move-result v3

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    invoke-interface {v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IJ)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 11
    :goto_2
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->E:J

    .line 12
    :cond_5
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->y:Z

    if-eqz v2, :cond_6

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 14
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->C:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->C:J

    :cond_6
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    return-wide v0
.end method

.method public a(JJ)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->q:J

    .line 8
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    return-void
.end method

.method public a(JJJ)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    .line 4
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    .line 5
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->q:J

    .line 6
    iput-wide p5, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    .line 3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->g()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->g()V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->f()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    if-nez v0, :cond_0

    goto/16 :goto_16

    .line 2
    :cond_0
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/network/g;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_37

    .line 3
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->l()J

    move-result-wide v6

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 5
    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->y:Z

    .line 6
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    instance-of v11, v0, Lcom/ss/android/socialbase/downloader/network/a;

    const/4 v14, 0x1

    .line 7
    :try_start_0
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v12

    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v10

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v5, "flush_buffer_size_byte"

    const/4 v13, -0x1

    .line 8
    invoke-virtual {v4, v5, v13}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v4

    .line 9
    invoke-static {v0, v12, v10, v4}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/e;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 10
    :try_start_1
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/model/e;->a(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 11
    :try_start_2
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 12
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateRealStartDownloadTime()V

    .line 13
    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Ljava/io/InputStream;)Lcom/ss/android/socialbase/downloader/e/b;

    move-result-object v10
    :try_end_2
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 14
    :try_start_3
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-boolean v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->z:Z

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setIsRwConcurrent(Z)V

    .line 15
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getOpenLimitSpeed()Z

    move-result v0

    iput-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Z

    .line 16
    sget-wide v4, Lcom/ss/android/socialbase/downloader/constants/e;->d:J

    .line 17
    sget-wide v18, Lcom/ss/android/socialbase/downloader/constants/e;->e:J

    const-wide/16 v20, 0x3e8

    .line 18
    div-long v20, v20, v18

    div-long v4, v4, v20

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    .line 20
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->f()Z

    move-result v0
    :try_end_3
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_1

    .line 22
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    :cond_1
    if-eqz v10, :cond_2

    .line 23
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 24
    :cond_2
    :try_start_4
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->s:Z

    if-eqz v0, :cond_4

    .line 25
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 26
    :try_start_5
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-nez v0, :cond_3

    .line 27
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 28
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_3

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 30
    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 31
    :cond_4
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 32
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_5

    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    :goto_1
    new-array v0, v14, [Ljava/io/Closeable;

    .line 34
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->D:J

    .line 36
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    move/from16 v29, v15

    move v15, v0

    :goto_2
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v0

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->D:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->A:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->B:J

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->C:J

    move-wide/from16 v26, v2

    const/16 v28, 0x0

    move/from16 v21, v29

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    return-void

    :catchall_1
    move-exception v0

    new-array v2, v14, [Ljava/io/Closeable;

    .line 37
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_6
    move/from16 v29, v15

    if-eqz v29, :cond_7

    .line 38
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    .line 39
    :cond_7
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->a()Lcom/ss/android/socialbase/downloader/f/a;

    move-result-object v0

    if-eqz v29, :cond_8

    .line 40
    iget-wide v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->A:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v27

    sub-long v27, v27, v22

    add-long v14, v14, v27

    iput-wide v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->A:J

    .line 41
    :cond_8
    iget v12, v0, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    if-ne v12, v13, :cond_9

    move-wide/from16 v30, v2

    move-wide/from16 v32, v6

    goto/16 :goto_5

    .line 42
    :cond_9
    iget-object v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v14}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v14

    if-nez v14, :cond_b

    iget-wide v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    move-wide/from16 v30, v14

    iget-wide v13, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J
    :try_end_7
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move-wide/from16 v32, v6

    :try_start_8
    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    sub-long/2addr v13, v6

    cmp-long v6, v30, v13

    if-lez v6, :cond_a

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    iget-wide v13, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J
    :try_end_8
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-wide/from16 v30, v2

    :try_start_9
    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    sub-long/2addr v13, v2

    int-to-long v2, v12

    add-long/2addr v13, v2

    cmp-long v2, v6, v13

    if-gez v2, :cond_c

    .line 43
    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    sub-long/2addr v6, v12

    sub-long/2addr v2, v6

    long-to-int v12, v2

    goto :goto_3

    :cond_a
    move-wide/from16 v30, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-wide/from16 v30, v2

    goto/16 :goto_9

    :cond_b
    move-wide/from16 v30, v2

    move-wide/from16 v32, v6

    :cond_c
    :goto_3
    if-eqz v29, :cond_d

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide/from16 v22, v2

    .line 45
    :cond_d
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    iget-object v3, v0, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v12}, Lcom/ss/android/socialbase/downloader/model/e;->a([BII)V

    if-eqz v29, :cond_e

    .line 46
    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->B:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v22

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->B:J

    .line 47
    :cond_e
    invoke-interface {v10, v0}, Lcom/ss/android/socialbase/downloader/e/b;->a(Lcom/ss/android/socialbase/downloader/f/a;)V

    .line 48
    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    int-to-long v6, v12

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    add-long v24, v24, v6

    .line 49
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_9
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 50
    :try_start_a
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->s:Z

    if-eqz v0, :cond_f

    .line 51
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-nez v0, :cond_10

    .line 52
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z

    move-result v0

    .line 53
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 54
    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Z)V

    goto :goto_4

    .line 55
    :cond_f
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    invoke-interface {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/h/f;->b(J)Z

    move-result v0

    .line 56
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 57
    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Z)V

    .line 58
    :cond_10
    :goto_4
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 59
    :try_start_b
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 60
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveWithWifiValid()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 61
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-nez v0, :cond_15

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_15

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    iget-wide v6, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    iget-wide v12, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J
    :try_end_b
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    sub-long/2addr v6, v12

    cmp-long v0, v2, v6

    if-gtz v0, :cond_15

    .line 62
    :goto_5
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_11

    .line 63
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    .line 64
    :cond_11
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 65
    :try_start_c
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->s:Z

    if-eqz v0, :cond_13

    .line 66
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 67
    :try_start_d
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-nez v0, :cond_12

    .line 68
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 69
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_12

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 71
    :cond_12
    monitor-exit v2

    goto :goto_6

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0

    .line 72
    :cond_13
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 73
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_14

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_14
    :goto_6
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/Closeable;

    .line 75
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v8

    iput-wide v5, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->D:J

    .line 77
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    const/4 v3, 0x0

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    const/4 v6, 0x1

    goto/16 :goto_10

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v2, v6, [Ljava/io/Closeable;

    .line 78
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_15
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 79
    :try_start_f
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Z

    if-eqz v0, :cond_17

    cmp-long v0, v24, v4

    if-lez v0, :cond_17

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12
    :try_end_f
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    sub-long v12, v12, v20

    cmp-long v0, v12, v18

    if-gez v0, :cond_16

    sub-long v12, v18, v12

    .line 81
    :try_start_10
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 82
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 83
    :cond_16
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide/from16 v20, v12

    const-wide/16 v24, 0x0

    :cond_17
    move/from16 v15, v29

    move-wide/from16 v2, v30

    move-wide/from16 v6, v32

    const/4 v13, -0x1

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 84
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/e;-><init>()V

    throw v0

    :cond_19
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 85
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/c;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/exception/c;-><init>()V

    throw v0
    :try_end_11
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 86
    :goto_8
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    throw v0
    :try_end_13
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_13

    :catchall_7
    move-exception v0

    goto :goto_8

    :catchall_8
    move-exception v0

    goto :goto_9

    :catchall_9
    move-exception v0

    move-wide/from16 v30, v2

    move-wide/from16 v32, v6

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :catchall_a
    move-exception v0

    move-wide/from16 v30, v2

    move-wide/from16 v32, v6

    move/from16 v29, v15

    :goto_9
    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_c

    :catch_3
    move-exception v0

    move/from16 v29, v15

    :goto_a
    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_13

    :cond_1a
    move-wide/from16 v30, v2

    move-wide/from16 v32, v6

    move/from16 v29, v15

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 87
    :try_start_14
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x412

    new-instance v4, Ljava/io/IOException;

    const-string v5, "inputStream is null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception v0

    move-wide/from16 v30, v2

    move-wide/from16 v32, v6

    move/from16 v29, v15

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 88
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v4, 0x41e

    invoke-direct {v2, v4, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_14
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto/16 :goto_12

    :catchall_c
    move-exception v0

    move-wide/from16 v30, v2

    move-wide/from16 v32, v6

    move/from16 v29, v15

    const/4 v3, 0x0

    const/4 v6, 0x1

    :goto_b
    const/4 v10, 0x0

    :goto_c
    if-eqz v11, :cond_1b

    .line 89
    :try_start_15
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    check-cast v2, Lcom/ss/android/socialbase/downloader/network/a;

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/network/a;->a(Ljava/lang/Throwable;)V

    .line 90
    :cond_1b
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResponse: e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->f()Z

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_13

    if-eqz v2, :cond_21

    .line 92
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_1c

    .line 93
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    :cond_1c
    if-eqz v10, :cond_1d

    .line 94
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 95
    :cond_1d
    :try_start_16
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->s:Z

    if-eqz v0, :cond_1f

    .line 96
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 97
    :try_start_17
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-nez v0, :cond_1e

    .line 98
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 99
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_1e

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 101
    :cond_1e
    monitor-exit v2

    goto :goto_d

    :catchall_d
    move-exception v0

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    :try_start_18
    throw v0

    .line 102
    :cond_1f
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 103
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_20

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    :cond_20
    :goto_d
    new-array v0, v6, [Ljava/io/Closeable;

    .line 105
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    .line 106
    :goto_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->D:J

    .line 107
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    goto/16 :goto_2

    :catchall_e
    move-exception v0

    new-array v2, v6, [Ljava/io/Closeable;

    .line 108
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    throw v0

    .line 109
    :cond_21
    :try_start_19
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    :cond_22
    :try_start_1a
    const-string v2, "ResponseHandler"

    .line 111
    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    .line 112
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_23

    .line 113
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    :cond_23
    if-eqz v10, :cond_24

    .line 114
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 115
    :cond_24
    :try_start_1b
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->s:Z

    if-eqz v0, :cond_26

    .line 116
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 117
    :try_start_1c
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-nez v0, :cond_25

    .line 118
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 119
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_25

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 121
    :cond_25
    monitor-exit v2

    goto :goto_f

    :catchall_f
    move-exception v0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    :try_start_1d
    throw v0

    .line 122
    :cond_26
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 123
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_27

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    :cond_27
    :goto_f
    new-array v0, v6, [Ljava/io/Closeable;

    .line 125
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    iput-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->D:J

    .line 127
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    :goto_10
    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v0

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    sub-long v17, v4, v7

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->D:J

    move-wide/from16 v19, v4

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->A:J

    move-wide/from16 v22, v4

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->B:J

    move-wide/from16 v24, v4

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->C:J

    move-wide/from16 v26, v4

    const/16 v28, 0x0

    move/from16 v21, v29

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 128
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isIgnoreDataVerify()Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    .line 129
    :cond_28
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    sub-long/2addr v4, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-ltz v0, :cond_2a

    .line 130
    iget-wide v9, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    cmp-long v0, v9, v7

    if-ltz v0, :cond_2a

    iget-wide v7, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    cmp-long v0, v7, v4

    if-nez v0, :cond_29

    goto :goto_11

    .line 131
    :cond_29
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x41b

    const-string v7, "handle data length[%d] != content length[%d] downloadChunkContentLen[%d], range[%d, %d) , current offset[%d] , handle start from %d"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    .line 132
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v6

    const/4 v3, 0x2

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x3

    .line 133
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x4

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x5

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x6

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    .line 134
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2a
    :goto_11
    return-void

    :catchall_10
    move-exception v0

    new-array v2, v6, [Ljava/io/Closeable;

    .line 135
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    throw v0

    :catch_6
    move-exception v0

    .line 136
    :try_start_1e
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 137
    throw v0

    :catch_7
    move-exception v0

    move/from16 v29, v15

    const/4 v3, 0x0

    const/4 v6, 0x1

    :goto_12
    const/4 v10, 0x0

    .line 138
    :goto_13
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResponse: BaseException e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    const-string v4, "ignore_base_ex_on_stop_status"

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->f()Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    if-eqz v2, :cond_30

    .line 141
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v0, :cond_2b

    .line 142
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    :cond_2b
    if-eqz v10, :cond_2c

    .line 143
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 144
    :cond_2c
    :try_start_1f
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->s:Z

    if-eqz v0, :cond_2e

    .line 145
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    .line 146
    :try_start_20
    iget-boolean v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-nez v0, :cond_2d

    .line 147
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 148
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_2d

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 150
    :cond_2d
    monitor-exit v2

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    :try_start_21
    throw v0

    .line 151
    :cond_2e
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 152
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v0, :cond_2f

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    :cond_2f
    :goto_14
    new-array v0, v6, [Ljava/io/Closeable;

    .line 154
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    goto/16 :goto_e

    :catchall_12
    move-exception v0

    new-array v2, v6, [Ljava/io/Closeable;

    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    throw v0

    .line 155
    :cond_30
    :try_start_22
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_31
    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 158
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_13

    :catchall_13
    move-exception v0

    .line 159
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    if-eqz v2, :cond_32

    .line 160
    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/network/i;->d()V

    :cond_32
    if-eqz v10, :cond_33

    .line 161
    invoke-interface {v10}, Lcom/ss/android/socialbase/downloader/e/b;->b()V

    .line 162
    :cond_33
    :try_start_23
    iget-boolean v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->s:Z

    if-eqz v2, :cond_35

    .line 163
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lcom/ss/android/socialbase/downloader/h/f;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    .line 164
    :try_start_24
    iget-boolean v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    if-nez v4, :cond_34

    .line 165
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v4}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 166
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v4, :cond_34

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 168
    :cond_34
    monitor-exit v2

    goto :goto_15

    :catchall_14
    move-exception v0

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    :try_start_25
    throw v0

    .line 169
    :cond_35
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    .line 170
    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    if-eqz v2, :cond_36

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    :cond_36
    :goto_15
    new-array v2, v6, [Ljava/io/Closeable;

    .line 172
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->D:J

    .line 174
    iget-object v10, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->t:Lcom/ss/android/socialbase/downloader/g/a;

    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v12, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Lcom/ss/android/socialbase/downloader/network/i;

    iget-boolean v14, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->l:Z

    iget-boolean v15, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->m:Z

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    move-object/from16 v16, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->o:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->p:J

    sub-long v17, v2, v4

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->D:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->A:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->B:J

    move-wide/from16 v24, v2

    iget-wide v2, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->C:J

    move-wide/from16 v26, v2

    const/16 v28, 0x0

    move/from16 v21, v29

    invoke-static/range {v10 .. v28}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    throw v0

    :catchall_15
    move-exception v0

    new-array v2, v6, [Ljava/io/Closeable;

    .line 175
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Lcom/ss/android/socialbase/downloader/model/e;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    throw v0

    .line 176
    :cond_37
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/f;

    const/16 v2, 0x3ec

    const-string v3, "the content-length is 0"

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/exception/f;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_38
    :goto_16
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->E:J

    return-wide v0
.end method
