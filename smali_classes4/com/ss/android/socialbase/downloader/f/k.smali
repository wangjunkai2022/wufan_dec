.class public Lcom/ss/android/socialbase/downloader/f/k;
.super Ljava/lang/Object;
.source "SegmentDispatcher.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/f/f;
.implements Lcom/ss/android/socialbase/downloader/network/c$a;


# instance fields
.field private A:I

.field private final B:Z

.field private final C:Lcom/ss/android/socialbase/downloader/h/e$b;

.field private final D:Lcom/ss/android/socialbase/downloader/h/e$b;

.field private final a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private final b:Lcom/ss/android/socialbase/downloader/f/n;

.field private final c:Lcom/ss/android/socialbase/downloader/f/b;

.field private final d:Lcom/ss/android/socialbase/downloader/h/f;

.field private final e:Lcom/ss/android/socialbase/downloader/f/g;

.field private volatile f:Z

.field private volatile g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/m;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/q;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/ss/android/socialbase/downloader/model/d;

.field private k:Lcom/ss/android/socialbase/downloader/model/d;

.field private volatile l:Z

.field private m:J

.field private final n:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private volatile r:Z

.field private final s:Ljava/lang/Object;

.field private final t:Lcom/ss/android/socialbase/downloader/i/e;

.field private final u:Lcom/ss/android/socialbase/downloader/h/e;

.field private volatile v:Z

.field private w:J

.field private x:J

.field private y:J

.field private z:F


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/n;Lcom/ss/android/socialbase/downloader/h/f;)V
    .locals 4
    .param p1    # Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/socialbase/downloader/f/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->l:Z

    .line 7
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    .line 9
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    .line 10
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->v:Z

    .line 11
    new-instance v2, Lcom/ss/android/socialbase/downloader/f/k$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/f/k$1;-><init>(Lcom/ss/android/socialbase/downloader/f/k;)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->C:Lcom/ss/android/socialbase/downloader/h/e$b;

    .line 12
    new-instance v2, Lcom/ss/android/socialbase/downloader/f/k$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/f/k$2;-><init>(Lcom/ss/android/socialbase/downloader/f/k;)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->D:Lcom/ss/android/socialbase/downloader/h/e$b;

    .line 13
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 14
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    .line 15
    new-instance v2, Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/n;->d()I

    move-result v3

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/n;->e()I

    move-result p2

    invoke-direct {v2, v3, p2}, Lcom/ss/android/socialbase/downloader/f/b;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    .line 16
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/f/k;->d:Lcom/ss/android/socialbase/downloader/h/f;

    .line 17
    new-instance p2, Lcom/ss/android/socialbase/downloader/f/g;

    invoke-direct {p2, p1, p3, v2}, Lcom/ss/android/socialbase/downloader/f/g;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/h/f;Lcom/ss/android/socialbase/downloader/f/c;)V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    .line 18
    new-instance p2, Lcom/ss/android/socialbase/downloader/h/e;

    invoke-direct {p2}, Lcom/ss/android/socialbase/downloader/h/e;-><init>()V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    .line 19
    new-instance p2, Lcom/ss/android/socialbase/downloader/i/e;

    invoke-direct {p2}, Lcom/ss/android/socialbase/downloader/i/e;-><init>()V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->t:Lcom/ss/android/socialbase/downloader/i/e;

    .line 20
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string p2, "debug"

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    return-void
.end method

.method private a(J)I
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 126
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/i;

    .line 127
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    return v1

    .line 128
    :cond_0
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 43
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/q;

    .line 44
    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private a(II)J
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/i;

    .line 130
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 131
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/i;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-wide v1

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v3

    sub-long/2addr p1, v3

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    return-wide p1

    .line 133
    :cond_2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/i;)J
    .locals 7

    .line 134
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 135
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v0

    sub-long v0, v2, v0

    :cond_0
    return-wide v0
.end method

.method private a(JJJI)Lcom/ss/android/socialbase/downloader/f/m;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 160
    iget-object v3, v0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ", threadIndex = "

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/socialbase/downloader/f/m;

    .line 161
    iget-wide v11, v9, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_2

    add-int/lit8 v7, v7, 0x1

    .line 162
    iget-wide v11, v9, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    cmp-long v15, v11, v1

    move-wide/from16 v11, p3

    move-wide/from16 v16, v5

    if-gez v15, :cond_1

    .line 163
    invoke-virtual {v9, v1, v2, v11, v12}, Lcom/ss/android/socialbase/downloader/f/m;->a(JJ)J

    move-result-wide v4

    .line 164
    iget-boolean v6, v0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    if-eqz v6, :cond_0

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "findPoorReadThread: speed = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    cmp-long v6, v4, v13

    if-ltz v6, :cond_1

    cmp-long v6, v4, v16

    if-gez v6, :cond_1

    move-wide v5, v4

    move-object v8, v9

    goto :goto_0

    :cond_1
    move-wide/from16 v5, v16

    goto :goto_0

    :cond_2
    move-wide/from16 v11, p3

    move-wide/from16 v16, v5

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v5

    if-eqz v8, :cond_4

    move/from16 v1, p7

    if-lt v7, v1, :cond_4

    cmp-long v1, v16, p5

    if-gez v1, :cond_4

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findPoorReadThread: ----------- minSpeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v16

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SegmentDispatcher"

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/f/k;ZJJ)Lcom/ss/android/socialbase/downloader/f/m;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/socialbase/downloader/f/k;->a(ZJJ)Lcom/ss/android/socialbase/downloader/f/m;

    move-result-object p0

    return-object p0
.end method

.method private a(ZJJ)Lcom/ss/android/socialbase/downloader/f/m;
    .locals 8

    .line 137
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/m;

    .line 138
    iget v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->e:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    sub-long v3, p2, v3

    cmp-long v5, v3, p4

    if-lez v5, :cond_0

    if-nez v1, :cond_2

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 140
    :cond_2
    iget-wide v3, v2, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    iget-wide v5, v1, Lcom/ss/android/socialbase/downloader/f/m;->d:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 3

    const-string v0, "SegmentDispatcher"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 95
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/b;->c()V

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/m;

    .line 98
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/m;->e()V

    goto :goto_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/q;)V
    .locals 7

    .line 50
    new-instance v6, Lcom/ss/android/socialbase/downloader/f/m;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/f/m;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/k;Lcom/ss/android/socialbase/downloader/f/c;Lcom/ss/android/socialbase/downloader/f/q;I)V

    .line 51
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->q()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 53
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/ss/android/socialbase/downloader/f/m;->a(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/d;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide v1

    .line 103
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide v3

    const/16 v5, 0x432

    const-string v6, "SegmentDispatcher"

    cmp-long v7, v1, v3

    if-eqz v7, :cond_2

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total len not equals,len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",sLen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",sCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",range="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",sRange = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/ss/android/socialbase/downloader/model/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",sUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/ss/android/socialbase/downloader/model/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {v6, v7}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    if-lez v10, :cond_2

    cmp-long v1, v3, v8

    if-gtz v1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p1, v5, v7}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 108
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/d;->c()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "etag not equals with main url, etag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mainEtag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v6, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 115
    :cond_3
    new-instance p1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p1, v5, v1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            "Z)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 47
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 49
    invoke-virtual {p2, v2}, Lcom/ss/android/socialbase/downloader/f/i;->a(I)V

    :cond_1
    return-void
.end method

.method private a(JJ)Z
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->t:Lcom/ss/android/socialbase/downloader/i/e;

    sub-long v2, p1, p3

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/ss/android/socialbase/downloader/i/e;->b(JJ)J

    move-result-wide v0

    .line 149
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    int-to-long v5, v4

    .line 150
    div-long/2addr v0, v5

    :cond_0
    const/high16 v5, 0x41200000    # 10.0f

    long-to-float v0, v0

    .line 151
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->z:F

    mul-float v0, v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v6, v0

    .line 152
    div-int/lit8 v8, v4, 0x2

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/ss/android/socialbase/downloader/f/k;->a(JJJI)Lcom/ss/android/socialbase/downloader/f/m;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SegmentDispatcher"

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;)Z

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handlePoorReadThread: reconnect for poor speed, threadIndex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/m;->f()V

    return v1

    :cond_1
    const/4 v4, 0x1

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    .line 156
    invoke-direct/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/f/k;->a(ZJJ)Lcom/ss/android/socialbase/downloader/f/m;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 157
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;)Z

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handlePoorReadThread: reconnect for connect timeout, threadIndex = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->f()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/f/k;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/f/k;Lcom/ss/android/socialbase/downloader/f/m;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/f/m;JJJD)Z
    .locals 6

    .line 141
    iget-wide v0, p1, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 142
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->t:Lcom/ss/android/socialbase/downloader/i/e;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/i/e;->b(JJ)J

    move-result-wide v0

    .line 143
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v2, v2

    .line 144
    div-long v2, v0, v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 145
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/ss/android/socialbase/downloader/f/m;->a(JJ)J

    move-result-wide p2

    cmp-long p4, p2, p6

    if-ltz p4, :cond_1

    long-to-double p4, p2

    long-to-double v4, v2

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, p8

    cmpg-double p8, p4, v4

    if-gez p8, :cond_2

    .line 147
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "isDownloadSpeedPoor: totalSpeed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, ", threadAvgSpeed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, ", poorSpeed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, ", speed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",threadIndex = "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;
    .locals 6

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/i;

    if-nez v0, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, v4, v0, v1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 26
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    :cond_2
    return-object v0

    .line 27
    :cond_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->m()V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 29
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_4

    .line 30
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, p2, p1, v1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    return-object p1

    .line 31
    :cond_4
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->p()Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(J)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->t:Lcom/ss/android/socialbase/downloader/i/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ss/android/socialbase/downloader/i/e;->a(JJ)Z

    .line 90
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/m;

    .line 91
    invoke-virtual {v1, p1, p2}, Lcom/ss/android/socialbase/downloader/f/m;->b(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/model/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/i;
        }
    .end annotation

    .line 47
    iget-object v0, p2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 p2, 0x1

    const-string p3, "segment already has an owner"

    invoke-direct {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->h()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    .line 50
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->b()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_4

    .line 51
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v2

    const/16 p1, 0x3ec

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    const-string v2, "SegmentDispatcher"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseHttpResponse: segment.getCurrentOffsetRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    new-instance p3, Lcom/ss/android/socialbase/downloader/exception/b;

    iget v0, p4, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2: response code error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p4, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " segment="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/ss/android/socialbase/downloader/exception/b;-><init>(IILjava/lang/String;)V

    throw p3

    .line 55
    :cond_3
    new-instance p3, Lcom/ss/android/socialbase/downloader/exception/b;

    iget v0, p4, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1: response code error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p4, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " segment="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/ss/android/socialbase/downloader/exception/b;-><init>(IILjava/lang/String;)V

    throw p3

    .line 56
    :cond_4
    :goto_1
    iget-boolean p1, p3, Lcom/ss/android/socialbase/downloader/f/q;->d:Z

    if-eqz p1, :cond_8

    .line 57
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez p1, :cond_a

    .line 58
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    .line 59
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->d:Lcom/ss/android/socialbase/downloader/h/f;

    if-eqz p1, :cond_5

    .line 63
    iget-object p3, p3, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    iget-object v2, p4, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v3

    invoke-interface {p1, p3, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/h/f;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;J)V

    .line 64
    :cond_5
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_a

    .line 65
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ss/android/socialbase/downloader/f/i;

    .line 66
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v0

    if-lez v6, :cond_7

    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v2

    sub-long v6, p1, v4

    cmp-long v8, v2, v6

    if-lez v8, :cond_6

    :cond_7
    sub-long v2, p1, v4

    .line 67
    invoke-virtual {p4, v2, v3}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 68
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 69
    :cond_8
    invoke-direct {p0, p4}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/model/d;)V

    .line 70
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez p1, :cond_a

    .line 71
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    .line 72
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_9

    .line 73
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide p1

    const-string p4, "SegmentDispatcher"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSegmentHttpResponse:len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/ss/android/socialbase/downloader/f/q;->a:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 76
    :cond_9
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 77
    :try_start_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 78
    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    :cond_a
    :goto_3
    return-void

    .line 79
    :cond_b
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 p2, 0x5

    const-string p3, "applySegment"

    invoke-direct {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/q;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/q;

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIpListLocked: urlRecord = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->l()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const-string v0, "SegmentDispatcher"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSegments: getExpectFileLength = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 9
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    new-instance v3, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-direct {v3, v1}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(Lcom/ss/android/socialbase/downloader/f/i;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->d(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Ljava/util/List;)V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    new-instance v1, Lcom/ss/android/socialbase/downloader/f/i;

    const-wide/16 v4, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    invoke-direct {p0, p1, v1, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    :goto_2
    const-string p1, "SegmentDispatcher"

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSegments: totalLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/f/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    return p0
.end method

.method private c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 48
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    .line 49
    invoke-direct {v0, v6, v2}, Lcom/ss/android/socialbase/downloader/f/k;->a(II)J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_0

    move v5, v6

    move-wide v3, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/n;->g()J

    move-result-wide v6

    .line 51
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/n;->i()J

    move-result-wide v8

    if-ltz v5, :cond_11

    cmp-long v2, v3, v6

    if-lez v2, :cond_11

    .line 52
    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/i;

    .line 53
    iget-object v5, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v10, v0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    .line 54
    :cond_2
    iget-object v5, v0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/f/n;->n()I

    move-result v5

    :goto_1
    const-string v10, ", threadIndex = "

    const-string v12, ", ratio = "

    const-string v13, ", childLength = "

    const-string v14, ", maxRemainBytes = "

    const-string v15, ", child = "

    const-string v11, "obtainSegment: parent = "

    const-string v0, "SegmentDispatcher"

    const-wide/16 v18, 0x2

    const-wide/16 v20, 0x0

    move-object/from16 v22, v0

    const/4 v0, 0x1

    if-ne v5, v0, :cond_b

    .line 55
    iget-object v0, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-eqz v0, :cond_a

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v23, 0xfa0

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    sub-long v14, v12, v23

    .line 57
    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/ss/android/socialbase/downloader/f/m;->a(JJ)J

    move-result-wide v23

    .line 58
    invoke-virtual {v1, v14, v15, v12, v13}, Lcom/ss/android/socialbase/downloader/f/m;->a(JJ)J

    move-result-wide v12

    const/high16 v5, -0x40800000    # -1.0f

    cmp-long v14, v23, v20

    if-lez v14, :cond_3

    cmp-long v14, v12, v20

    if-lez v14, :cond_3

    long-to-float v14, v12

    add-long v12, v23, v12

    long-to-float v12, v12

    div-float/2addr v14, v12

    goto :goto_2

    :cond_3
    const/high16 v14, -0x40800000    # -1.0f

    :goto_2
    cmpl-float v5, v14, v5

    if-nez v5, :cond_4

    .line 59
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/m;->b()J

    move-result-wide v12

    move/from16 p2, v14

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/m;->b()J

    move-result-wide v14

    cmp-long v0, v12, v20

    if-lez v0, :cond_5

    cmp-long v0, v14, v20

    if-lez v0, :cond_5

    long-to-float v0, v14

    add-long/2addr v12, v14

    long-to-float v5, v12

    div-float v14, v0, v5

    goto :goto_3

    :cond_4
    move/from16 p2, v14

    :cond_5
    move/from16 v14, p2

    :goto_3
    const/4 v0, 0x0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_a

    const v0, 0x3f666666    # 0.9f

    mul-float v14, v14, v0

    long-to-float v0, v3

    mul-float v0, v0, v14

    float-to-long v12, v0

    cmp-long v0, v12, v6

    if-gez v0, :cond_6

    move-wide v12, v6

    :cond_6
    cmp-long v0, v8, v20

    if-lez v0, :cond_7

    cmp-long v0, v12, v8

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    move-wide v8, v12

    .line 61
    :goto_4
    div-long v6, v6, v18

    sub-long v12, v3, v6

    cmp-long v0, v8, v12

    if-lez v0, :cond_8

    move-wide v8, v12

    goto :goto_5

    :cond_8
    cmp-long v0, v8, v6

    if-gez v0, :cond_9

    move-wide v8, v6

    .line 62
    :cond_9
    :goto_5
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v5

    sub-long v12, v3, v8

    add-long/2addr v5, v12

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v12

    invoke-direct {v0, v5, v6, v12, v13}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v26

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v25

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v15, v17

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v22

    invoke-static {v14, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    move-object/from16 v14, v22

    move-object/from16 v5, p0

    move-object v6, v14

    goto/16 :goto_8

    :cond_b
    move-object v0, v12

    move-object v12, v15

    move-object v15, v13

    move-object v13, v14

    const/4 v14, 0x2

    if-ne v5, v14, :cond_10

    move-object/from16 v5, p0

    move-object/from16 v16, v0

    move-object/from16 v14, v22

    .line 64
    iget-wide v0, v5, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    iget-object v14, v5, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v14}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v23

    sub-long v0, v0, v23

    .line 65
    invoke-direct/range {p0 .. p2}, Lcom/ss/android/socialbase/downloader/f/k;->d(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)F

    move-result v14

    long-to-float v0, v0

    mul-float v0, v0, v14

    float-to-long v0, v0

    cmp-long v17, v0, v6

    if-gez v17, :cond_c

    move-wide v0, v6

    :cond_c
    cmp-long v17, v8, v20

    if-lez v17, :cond_d

    cmp-long v17, v0, v8

    if-lez v17, :cond_d

    goto :goto_6

    :cond_d
    move-wide v8, v0

    .line 66
    :goto_6
    div-long v6, v6, v18

    sub-long v0, v3, v6

    cmp-long v17, v8, v0

    if-lez v17, :cond_e

    move-wide v8, v0

    goto :goto_7

    :cond_e
    cmp-long v0, v8, v6

    if-gez v0, :cond_f

    move-wide v8, v6

    .line 67
    :cond_f
    :goto_7
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v6

    sub-long v17, v3, v8

    add-long v6, v6, v17

    move-wide/from16 v17, v8

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v17

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    iget v2, v2, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v22

    invoke-static {v6, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_10
    move-object/from16 v5, p0

    move-object/from16 v6, v22

    .line 69
    :goto_8
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v7

    div-long v3, v3, v18

    add-long/2addr v7, v3

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v3

    invoke-direct {v0, v7, v8, v3, v4}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_11
    move-object v5, v0

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/f/k;)Lcom/ss/android/socialbase/downloader/model/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/q;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 18
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 19
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 23
    iget-boolean v5, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    if-eqz v5, :cond_2

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDnsResolved: ip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_2
    new-instance v5, Lcom/ss/android/socialbase/downloader/f/q;

    invoke-direct {v5, p1, v4}, Lcom/ss/android/socialbase/downloader/f/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v4, v5, Lcom/ss/android/socialbase/downloader/f/q;->c:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-nez v4, :cond_3

    .line 27
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 28
    iget-object v6, v5, Lcom/ss/android/socialbase/downloader/f/q;->c:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-lez v3, :cond_9

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-eqz v4, :cond_6

    .line 33
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 34
    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/q;

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    if-lez v3, :cond_8

    if-nez v0, :cond_5

    :cond_8
    return-object p1

    :cond_9
    :goto_2
    return-object v0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->j:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/f/o;->b(Ljava/util/List;)J

    move-result-wide v0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDownloadBytes: getCurBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 12
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", downloadedBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SegmentDispatcher"

    .line 13
    invoke-static {v2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    :cond_1
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/f/m;)Z
    .locals 1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->d(Lcom/ss/android/socialbase/downloader/f/m;)Lcom/ss/android/socialbase/downloader/f/q;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 45
    monitor-exit p0

    return p1

    .line 46
    :cond_0
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/f/m;->a(Lcom/ss/android/socialbase/downloader/f/q;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)F
    .locals 7

    .line 50
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->b()J

    move-result-wide v0

    .line 51
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-gt p2, v2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/n;->a()I

    move-result p2

    :cond_0
    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v0, v3

    if-gtz v6, :cond_5

    .line 53
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->m()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_1

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_2

    :cond_1
    int-to-float v0, p2

    div-float v0, v5, v0

    .line 54
    :cond_2
    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    if-nez p1, :cond_3

    return v0

    :cond_3
    if-le p2, v2, :cond_4

    sub-float/2addr v5, v0

    sub-int/2addr p2, v2

    :cond_4
    int-to-float p1, p2

    div-float/2addr v5, p1

    return v5

    .line 55
    :cond_5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->o()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_4

    long-to-float p1, v0

    long-to-float p2, v2

    div-float/2addr p1, p2

    return p1
.end method

.method private d(Lcom/ss/android/socialbase/downloader/f/m;)Lcom/ss/android/socialbase/downloader/f/q;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/f/q;

    .line 46
    iget-object v4, p1, Lcom/ss/android/socialbase/downloader/f/m;->b:Lcom/ss/android/socialbase/downloader/f/q;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/f/q;->d()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_1

    move-object v2, v3

    .line 47
    :cond_1
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/f/q;->a()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 48
    :goto_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/n;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    return-object v3

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/n;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    return-object v2
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/f/k;)Lcom/ss/android/socialbase/downloader/model/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->k:Lcom/ss/android/socialbase/downloader/model/d;

    return-object p0
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/f/g;->a(Lcom/ss/android/socialbase/downloader/f/d;)V
    :try_end_0
    .catch Lcom/ss/android/socialbase/downloader/f/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SegmentDispatcher"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSegments: loopAndWrite e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 5
    throw v0

    :catch_1
    nop

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 7
    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/i;

    if-nez v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->c(Ljava/util/List;)V

    .line 12
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_2
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->v:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "SegmentDispatcher"

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSegments: loopAndWrite  failedException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    throw v0

    .line 18
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)V

    :cond_5
    const-string v0, "SegmentDispatcher"

    const-string v1, "dispatchSegments::download finished"

    .line 20
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/i;

    .line 22
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    cmp-long v8, v1, v4

    if-lez v8, :cond_0

    .line 23
    new-instance v8, Lcom/ss/android/socialbase/downloader/f/i;

    sub-long/2addr v1, v6

    invoke-direct {v8, v4, v5, v1, v2}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(JJ)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixSegmentsLocked: first = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", add new first = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p0, p1, v8, v3}, Lcom/ss/android/socialbase/downloader/f/k;->a(Ljava/util/List;Lcom/ss/android/socialbase/downloader/f/i;Z)V

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SegmentDispatcher"

    if-eqz v1, :cond_2

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/socialbase/downloader/f/i;

    .line 31
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v11

    sub-long/2addr v11, v6

    cmp-long v13, v9, v11

    if-gez v13, :cond_1

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fixSegment: segment = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", new end = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v1, v9, v10}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    :cond_1
    move-object v1, v8

    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/socialbase/downloader/f/i;

    .line 36
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    const-wide/16 v8, -0x1

    cmp-long v3, v0, v4

    if-lez v3, :cond_3

    .line 37
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v3

    cmp-long v5, v3, v8

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v3

    sub-long/2addr v0, v6

    cmp-long v5, v3, v0

    if-gez v5, :cond_4

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixSegment: last segment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new end=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v8, v9}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    :cond_4
    return-void
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/f/k;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->w:J

    return-wide v0
.end method

.method private e()V
    .locals 7

    .line 2
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->a()I

    move-result v0

    .line 4
    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/n;->h()J

    move-result-wide v5

    div-long/2addr v3, v5

    long-to-int v1, v3

    if-le v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    const-string v1, "SegmentDispatcher"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchReadThread: totalLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", threadCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    .line 6
    :goto_2
    monitor-enter p0

    .line 7
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 8
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-eqz v0, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->j()Lcom/ss/android/socialbase/downloader/f/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/q;)V

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    .line 11
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 12
    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private e(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/f/j;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applySegment: start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SegmentDispatcher"

    invoke-static {v4, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    const-string v5, "applySegment: "

    if-ne v3, v1, :cond_0

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already the owner of "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-nez v3, :cond_17

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/downloader/f/m;->h()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-nez v3, :cond_16

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v7

    .line 19
    invoke-direct {v0, v7, v8}, Lcom/ss/android/socialbase/downloader/f/k;->a(J)I

    move-result v3

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-eq v3, v10, :cond_15

    .line 20
    iget-object v10, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ss/android/socialbase/downloader/f/i;

    if-eqz v10, :cond_15

    const-wide/16 v11, 0x0

    if-eq v10, v2, :cond_7

    .line 21
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-nez v18, :cond_5

    .line 22
    invoke-direct {v0, v10}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-lez v16, :cond_5

    .line 23
    iget-object v13, v10, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-eqz v13, :cond_3

    const-wide/32 v17, 0x80000

    cmp-long v19, v14, v17

    if-gez v19, :cond_1

    .line 24
    iget-wide v11, v1, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    move-wide/from16 v20, v7

    iget-wide v6, v13, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    sub-long/2addr v11, v6

    const-wide/16 v6, 0x3e8

    cmp-long v8, v11, v6

    if-lez v8, :cond_2

    .line 25
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v11

    sub-long/2addr v6, v11

    const-wide/16 v11, 0x2

    div-long/2addr v14, v11

    cmp-long v8, v6, v14

    if-gez v8, :cond_2

    goto :goto_0

    :cond_1
    move-wide/from16 v20, v7

    .line 26
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applySegmentLocked: has same segment, but owner is normal, abort. segmentInList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move-wide/from16 v20, v7

    :goto_0
    if-eqz v13, :cond_4

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applySegmentLocked: has same segment,and owner too slow, segmentInList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 28
    invoke-virtual {v13, v6}, Lcom/ss/android/socialbase/downloader/f/m;->a(Z)V

    goto :goto_1

    .line 29
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applySegmentLocked: has same segment and no owner, segmentInList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    :goto_1
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 31
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/f/i;->j()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/ss/android/socialbase/downloader/f/i;->b(I)V

    .line 32
    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v6, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v7

    :goto_2
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_6

    goto :goto_4

    .line 33
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not exist! but has another same segment, segmentInList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const-string v2, "segment not exist, but has another same segment"

    invoke-direct {v1, v9, v2}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_7
    move-wide/from16 v20, v7

    .line 35
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v6

    add-int/lit8 v8, v3, -0x1

    :goto_5
    const-wide/16 v9, 0x1

    if-ltz v8, :cond_e

    .line 36
    iget-object v11, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/socialbase/downloader/f/i;

    .line 37
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_8

    cmp-long v16, v12, v20

    if-ltz v16, :cond_b

    :cond_8
    cmp-long v12, v6, v14

    if-gtz v12, :cond_a

    .line 38
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v12

    cmp-long v14, v12, v20

    if-gtz v14, :cond_9

    goto :goto_6

    .line 39
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySegment:prev\'s current has over this start, prev = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", segment = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 v2, 0x3

    const-string v3, "prev overstep"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 42
    :cond_a
    :goto_6
    iget-object v12, v11, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-nez v12, :cond_c

    sub-long v12, v20, v9

    .line 43
    invoke-virtual {v11, v12, v13}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 44
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "applySegment: prev set end, prev = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v11}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 46
    :cond_c
    iget-object v6, v11, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    sub-long v7, v20, v9

    invoke-virtual {v6, v7, v8}, Lcom/ss/android/socialbase/downloader/f/m;->a(J)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 47
    invoke-virtual {v11, v7, v8}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applySegment: adjustSegmentEndOffset succeed, prev = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 49
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySegment: adjustSegmentEndOffset filed, prev = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 v2, 0x4

    const-string v3, "prev end adjust fail"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_e
    :goto_7
    const/4 v6, 0x1

    add-int/2addr v3, v6

    .line 51
    iget-object v6, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_8
    if-ge v3, v6, :cond_12

    .line 52
    iget-object v7, v0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/socialbase/downloader/f/i;

    .line 53
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-gtz v8, :cond_10

    iget-object v8, v7, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-eqz v8, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 54
    :cond_10
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v11

    .line 55
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v15

    cmp-long v3, v11, v13

    if-lez v3, :cond_11

    cmp-long v3, v11, v15

    if-ltz v3, :cond_12

    :cond_11
    sub-long v9, v15, v9

    .line 56
    invoke-virtual {v2, v9, v10}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applySegment: segment set end:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", later = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_14

    cmp-long v3, v20, v6

    if-gtz v3, :cond_13

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gtz v3, :cond_13

    goto :goto_a

    .line 60
    :cond_13
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 61
    :cond_14
    :goto_a
    iput-object v1, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySegment: OK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not exist! segmentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const-string v2, "segment not exist"

    invoke-direct {v1, v9, v2}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 65
    :cond_16
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const/4 v2, 0x5

    const-string v3, "applySegment"

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    throw v1

    .line 66
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already has an owner:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/ss/android/socialbase/downloader/f/j;

    const-string v2, "segment already has an owner"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/ss/android/socialbase/downloader/f/j;-><init>(ILjava/lang/String;)V

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b
.end method

.method static synthetic f(Lcom/ss/android/socialbase/downloader/f/k;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    new-instance v1, Lcom/ss/android/socialbase/downloader/f/q;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/q;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    new-instance v3, Lcom/ss/android/socialbase/downloader/f/q;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/ss/android/socialbase/downloader/f/q;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/f/n;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/ss/android/socialbase/downloader/f/k;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->j()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->w:J

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->x:J

    .line 5
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->o()F

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->z:F

    .line 6
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:I

    if-lez v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->C:Lcom/ss/android/socialbase/downloader/h/e$b;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/h/e;->a(Lcom/ss/android/socialbase/downloader/h/e$b;J)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->y:J

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->D:Lcom/ss/android/socialbase/downloader/h/e$b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/h/e;->a(Lcom/ss/android/socialbase/downloader/h/e$b;J)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/n;->l()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->l:Z

    .line 3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/c;->a()Lcom/ss/android/socialbase/downloader/network/c;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/ss/android/socialbase/downloader/network/c;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9
    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/ss/android/socialbase/downloader/network/c;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private j()Lcom/ss/android/socialbase/downloader/f/q;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->p:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->p:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/q;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private k()V
    .locals 2

    const-string v0, "SegmentDispatcher"

    const-string v1, "onComplete"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/b;->c()V

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->s:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/m;

    .line 2
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/m;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private m()V
    .locals 14

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v0, :cond_5

    .line 3
    iget-object v7, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/socialbase/downloader/f/i;

    .line 4
    iget-object v8, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/socialbase/downloader/f/i;

    .line 5
    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-lez v13, :cond_3

    .line 6
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/f/i;->a()J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-gtz v11, :cond_3

    iget-object v9, v8, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-nez v9, :cond_3

    if-nez v4, :cond_2

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :cond_2
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-boolean v9, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    if-eqz v9, :cond_4

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearCovered, covered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", prev = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_9

    .line 12
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/f/i;

    .line 13
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/f/m;

    .line 15
    iget-object v5, v4, Lcom/ss/android/socialbase/downloader/f/m;->a:Lcom/ss/android/socialbase/downloader/f/i;

    if-ne v5, v2, :cond_7

    .line 16
    iget-boolean v5, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    if-eqz v5, :cond_8

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearCoveredSegmentLocked: reconnect, segment = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", threadIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    :cond_8
    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/f/m;->a(Z)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method private n()Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    .line 2
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->r:Z

    return v2

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/f/o;->a(Ljava/util/List;)J

    move-result-wide v3

    const-string v5, "SegmentDispatcher"

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllContentDownloaded: firstOffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v5, v3, v0

    if-ltz v5, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->r:Z

    .line 7
    monitor-exit p0

    return v0

    .line 8
    :cond_1
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->r:Z

    .line 9
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private o()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/f/m;

    .line 2
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/f/m;->b()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private p()Lcom/ss/android/socialbase/downloader/f/i;
    .locals 15

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->q()Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v13, v1, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-nez v13, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/i;->j()I

    move-result v3

    const/4 v14, 0x2

    if-lt v3, v14, :cond_2

    return-object v2

    .line 4
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 5
    invoke-direct {p0, v7, v8}, Lcom/ss/android/socialbase/downloader/f/k;->b(J)V

    .line 6
    iget-wide v3, v13, Lcom/ss/android/socialbase/downloader/f/m;->f:J

    sub-long v3, v7, v3

    const-wide/16 v5, 0x7d0

    cmp-long v9, v3, v5

    if-lez v9, :cond_4

    sub-long v5, v7, v5

    const-wide/16 v9, 0x1f4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-object v4, v13

    .line 7
    invoke-direct/range {v3 .. v12}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/m;JJJD)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainSegmentWhenNoNewSegment: isDownloadSpeedPoor segment = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", owner.threadIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    return-object v1

    :cond_4
    add-int/lit8 v3, v0, 0x1

    if-le v0, v14, :cond_6

    .line 10
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    if-eqz v0, :cond_5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainSegmentWhenNoNewSegment: waitCount > 2, return segment = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    return-object v1

    .line 12
    :cond_6
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1f4

    .line 13
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 14
    monitor-exit p0

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v2
.end method

.method private q()Lcom/ss/android/socialbase/downloader/f/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/f/i;

    .line 2
    invoke-direct {p0, v3}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/i;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/f/i;->j()I

    move-result v4

    if-ge v4, v2, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private r()J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/f/k;->b(J)V

    .line 5
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/f/n;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 6
    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/f/k;->y:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    sub-long v4, v0, v6

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 7
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/f/k;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->y:J

    .line 9
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->A:I

    :cond_1
    const-wide/16 v0, 0x7d0

    .line 10
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/k;->b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;)Lcom/ss/android/socialbase/downloader/f/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->h()V

    .line 59
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/i;->j()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 60
    new-instance p2, Lcom/ss/android/socialbase/downloader/f/i;

    invoke-direct {p2, p1}, Lcom/ss/android/socialbase/downloader/f/i;-><init>(Lcom/ss/android/socialbase/downloader/f/i;)V

    monitor-exit p0

    return-object p2

    .line 61
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    const-string v0, "SegmentDispatcher"

    const-string v1, "cancel"

    .line 116
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/m;

    .line 120
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/m;->e()V

    goto :goto_0

    .line 121
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/g;->a()V

    .line 123
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/b;->c()V

    return-void

    :catchall_0
    move-exception v0

    .line 124
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;)V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->B:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReaderRun, threadIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SegmentDispatcher"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    .locals 0

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->i()V

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/model/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Lcom/ss/android/socialbase/downloader/exception/i;
        }
    .end annotation

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v0, :cond_3

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/f/k;->b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/model/d;)V

    const/4 p2, 0x0

    .line 69
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/f/m;->b(Z)V

    .line 70
    iget-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    .line 71
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    .line 72
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/model/d;->j()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/n;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    .line 76
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_3
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/p;

    const-string p2, "connected"

    invoke-direct {p1, p2}, Lcom/ss/android/socialbase/downloader/f/p;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 2

    .line 82
    monitor-enter p0

    :try_start_0
    const-string p2, "SegmentDispatcher"

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSegmentFailed: segment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", e = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/f/m;->b(Z)V

    .line 85
    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    if-nez p1, :cond_0

    .line 86
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-nez p1, :cond_1

    .line 89
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 90
    :cond_1
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->v:Z

    .line 91
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->q:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 92
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/q;Lcom/ss/android/socialbase/downloader/f/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;II)V
    .locals 0

    .line 79
    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/i/f;->b(Lcom/ss/android/socialbase/downloader/exception/BaseException;)Z

    move-result p2

    .line 80
    invoke-virtual {p4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p3

    const/16 p4, 0x417

    if-eq p3, p4, :cond_0

    const/16 p4, 0x432

    if-eq p3, p4, :cond_0

    const/16 p4, 0x41f

    if-ne p3, p4, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    if-nez p2, :cond_2

    if-lt p5, p6, :cond_3

    .line 81
    :cond_2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/m;)Z

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 34
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/k;->c(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 35
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_0
    monitor-enter p0

    if-eqz v0, :cond_1

    .line 37
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/f/k;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->l:Z

    .line 39
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->b:Lcom/ss/android/socialbase/downloader/f/n;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/f/n;->a(I)V

    .line 40
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    .line 41
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/f/i;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "finally pause"

    const-string v1, "SegmentDispatcher"

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->f()V

    .line 5
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/k;->b(Ljava/util/List;)V

    .line 6
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->e()V

    .line 7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->g()V

    .line 8
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->i()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 12
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    .line 13
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    .line 14
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->d:Lcom/ss/android/socialbase/downloader/h/f;

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/f/k;->m:J

    invoke-interface {p1, v3, v4}, Lcom/ss/android/socialbase/downloader/h/f;->a(J)V

    .line 16
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->h()V

    .line 17
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez p1, :cond_1

    .line 19
    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/k;->b()V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/e;->b()V

    return v2

    .line 22
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez p1, :cond_3

    .line 23
    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/k;->b()V

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/h/e;->b()V

    return v2

    :catchall_0
    move-exception p1

    .line 26
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 27
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->increaseAllConnectTime(J)V

    .line 28
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setFirstSpeedTime(J)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 29
    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/f/k;->f:Z

    if-nez v2, :cond_4

    .line 30
    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/k;->b()V

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->u:Lcom/ss/android/socialbase/downloader/h/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/h/e;->b()V

    throw p1
.end method

.method public b()V
    .locals 2

    const-string v0, "SegmentDispatcher"

    const-string v1, "pause1"

    .line 80
    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->g:Z

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/f/m;

    .line 84
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/m;->e()V

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/g;->b()V

    .line 87
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/b;->c()V

    return-void

    :catchall_0
    move-exception v0

    .line 88
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/f/m;)V
    .locals 3

    const-string v0, "SegmentDispatcher"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReaderExit: threadIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/ss/android/socialbase/downloader/f/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    monitor-enter p0

    const/4 v0, 0x1

    .line 37
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/f/m;->c(Z)V

    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->m()V

    .line 40
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->k()V

    goto :goto_1

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/f/m;

    .line 44
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/m;->e()V

    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/k;->k()V

    .line 46
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public b(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/f/k;->e(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)V
    .locals 3

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    if-ne v0, p1, :cond_0

    const-string v0, "SegmentDispatcher"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unApplySegment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/socialbase/downloader/f/i;->d(J)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p2, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    .line 41
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/m;->a()V

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lcom/ss/android/socialbase/downloader/f/m;Lcom/ss/android/socialbase/downloader/f/i;)Lcom/ss/android/socialbase/downloader/f/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/l;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k;->a:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/k;->c:Lcom/ss/android/socialbase/downloader/f/b;

    invoke-direct {p1, v0, v1, p2}, Lcom/ss/android/socialbase/downloader/f/l;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/b;Lcom/ss/android/socialbase/downloader/f/i;)V

    .line 42
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/f/k;->e:Lcom/ss/android/socialbase/downloader/f/g;

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/f/g;->a(Lcom/ss/android/socialbase/downloader/f/l;)V

    .line 43
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/f/l;->a()Lcom/ss/android/socialbase/downloader/f/e;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
