.class abstract Lcom/facebook/imagepipeline/producers/l$c;
.super Lcom/facebook/imagepipeline/producers/m;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final p:I = 0xa


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:Lcom/facebook/imagepipeline/producers/k0;

.field private final k:Lcom/facebook/imagepipeline/producers/m0;

.field private final l:Lcom/facebook/imagepipeline/common/b;

.field private m:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final n:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field final synthetic o:Lcom/facebook/imagepipeline/producers/l;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->o:Lcom/facebook/imagepipeline/producers/l;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    const-string p2, "ProgressiveDecoder"

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/l$c;->i:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    .line 5
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/k0;->getListener()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/l$c;->k:Lcom/facebook/imagepipeline/producers/m0;

    .line 6
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Lcom/facebook/imagepipeline/common/b;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/l$c;->l:Lcom/facebook/imagepipeline/common/b;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/l$c;->m:Z

    .line 8
    new-instance v0, Lcom/facebook/imagepipeline/producers/l$c$a;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/facebook/imagepipeline/producers/l$c$a;-><init>(Lcom/facebook/imagepipeline/producers/l$c;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/k0;I)V

    .line 9
    new-instance p5, Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/l;->e(Lcom/facebook/imagepipeline/producers/l;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget p2, p2, Lcom/facebook/imagepipeline/common/b;->a:I

    invoke-direct {p5, v1, v0, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$d;I)V

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/l$c;->n:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 10
    new-instance p2, Lcom/facebook/imagepipeline/producers/l$c$b;

    invoke-direct {p2, p0, p1, p4}, Lcom/facebook/imagepipeline/producers/l$c$b;-><init>(Lcom/facebook/imagepipeline/producers/l$c;Lcom/facebook/imagepipeline/producers/l;Z)V

    invoke-interface {p3, p2}, Lcom/facebook/imagepipeline/producers/k0;->d(Lcom/facebook/imagepipeline/producers/l0;)V

    return-void
.end method

.method private A(Lcom/facebook/imagepipeline/image/c;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->p(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/l$c;->C(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 5
    throw p2
.end method

.method private declared-synchronized B()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/l$c;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private C(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->m:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->m:Z

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->n:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->c()V

    return-void

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/producers/l$c;Lcom/facebook/imagepipeline/image/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->u(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/producers/l$c;)Lcom/facebook/imagepipeline/producers/k0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    return-object p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/producers/l$c;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/l$c;->n:Lcom/facebook/imagepipeline/producers/JobScheduler;

    return-object p0
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/producers/l$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/l$c;->y()V

    return-void
.end method

.method private u(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 18

    move-object/from16 v11, p0

    move/from16 v0, p2

    const-string v12, "DecodeProducer"

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object v1

    sget-object v2, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    if-eq v1, v2, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/l$c;->B()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->y(Lcom/facebook/imagepipeline/image/e;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object v1

    const-string v2, "unknown"

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imageformat/c;->b()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_2
    move-object v7, v2

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->u()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->n()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v5, 0x8

    .line 8
    invoke-static {v0, v5}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v9, 0x4

    .line 9
    invoke-static {v0, v9}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    move-result v13

    .line 10
    iget-object v14, v11, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {v14}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/d;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v14, Lcom/facebook/imagepipeline/common/d;->a:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/facebook/imagepipeline/common/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v14, v2

    .line 12
    :try_start_0
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/l$c;->n:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->f()J

    move-result-wide v15

    .line 13
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_6

    if-eqz v13, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/producers/l$c;->w(Lcom/facebook/imagepipeline/image/e;)I

    move-result v3

    goto :goto_3

    .line 15
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v3

    :goto_3
    if-nez v5, :cond_8

    if-eqz v13, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/l$c;->x()Lcom/facebook/imagepipeline/image/h;

    move-result-object v5

    goto :goto_5

    .line 17
    :cond_8
    :goto_4
    sget-object v5, Lcom/facebook/imagepipeline/image/g;->d:Lcom/facebook/imagepipeline/image/h;

    .line 18
    :goto_5
    iget-object v13, v11, Lcom/facebook/imagepipeline/producers/l$c;->k:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v1, v11, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v12}, Lcom/facebook/imagepipeline/producers/m0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    iget-object v13, v11, Lcom/facebook/imagepipeline/producers/l$c;->o:Lcom/facebook/imagepipeline/producers/l;

    invoke-static {v13}, Lcom/facebook/imagepipeline/producers/l;->f(Lcom/facebook/imagepipeline/producers/l;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v13

    iget-object v1, v11, Lcom/facebook/imagepipeline/producers/l$c;->l:Lcom/facebook/imagepipeline/common/b;

    move-object/from16 v4, p1

    invoke-interface {v13, v4, v3, v5, v1}, Lcom/facebook/imagepipeline/decoder/b;->a(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/image/h;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/image/c;

    move-result-object v13
    :try_end_1
    .catch Lcom/facebook/imagepipeline/decoder/DecodeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->r()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    or-int/lit8 v0, v0, 0x10

    :cond_9
    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v15

    move-object v9, v14

    .line 21
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/l$c;->v(Lcom/facebook/imagepipeline/image/c;JLcom/facebook/imagepipeline/image/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 22
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/l$c;->k:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, v11, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    .line 23
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v12, v1}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    invoke-direct {v11, v13, v0}, Lcom/facebook/imagepipeline/producers/l$c;->A(Lcom/facebook/imagepipeline/image/c;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v13

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 26
    :try_start_4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/decoder/DecodeException;->a()Lcom/facebook/imagepipeline/image/e;

    move-result-object v1

    const-string v3, "ProgressiveDecoder"

    const-string v4, "%s, {uri: %s, firstEncodedBytes: %s, length: %d}"

    new-array v9, v9, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    aput-object v13, v9, v17

    const/4 v13, 0x1

    aput-object v2, v9, v13

    const/4 v2, 0x2

    const/16 v13, 0xa

    .line 28
    invoke-virtual {v1, v13}, Lcom/facebook/imagepipeline/image/e;->m(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v2

    const/4 v2, 0x3

    .line 29
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    .line 30
    invoke-static {v3, v4, v9}, Lcom/facebook/common/logging/a;->q0(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    move-object/from16 v1, p0

    move-wide v3, v15

    move-object v9, v14

    .line 32
    :try_start_5
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/l$c;->v(Lcom/facebook/imagepipeline/image/c;JLcom/facebook/imagepipeline/image/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 33
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/l$c;->k:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v3, v11, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    .line 34
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v12, v0, v1}, Lcom/facebook/imagepipeline/producers/m0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 35
    invoke-direct {v11, v0}, Lcom/facebook/imagepipeline/producers/l$c;->z(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 37
    throw v0

    :cond_a
    :goto_7
    return-void
.end method

.method private v(Lcom/facebook/imagepipeline/image/c;JLcom/facebook/imagepipeline/image/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .param p1    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/c;",
            "J",
            "Lcom/facebook/imagepipeline/image/h;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    .line 1
    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/l$c;->k:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {v7}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/facebook/imagepipeline/producers/m0;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-interface/range {p4 .. p4}, Lcom/facebook/imagepipeline/image/h;->b()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 5
    instance-of v9, v1, Lcom/facebook/imagepipeline/image/d;

    const-string v10, "sampleSize"

    const-string v11, "requestedImageSize"

    const-string v12, "imageFormat"

    const-string v13, "encodedImageSize"

    const-string v14, "isFinal"

    const-string v15, "hasGoodQuality"

    const-string v0, "queueTime"

    if-eqz v9, :cond_1

    .line 6
    check-cast v1, Lcom/facebook/imagepipeline/image/d;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/d;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v5, Ljava/util/HashMap;

    const/16 v9, 0x8

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    const-string v9, "bitmapSize"

    .line 9
    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p9

    .line 16
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v5}, Lcom/facebook/common/internal/ImmutableMap;->a(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v5

    .line 18
    new-instance v5, Ljava/util/HashMap;

    const/4 v9, 0x7

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 19
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v5}, Lcom/facebook/common/internal/ImmutableMap;->a(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private y()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/l$c;->C(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    return-void
.end method

.method private z(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/l$c;->C(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DecodeProducer#onNewResultImpl"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->y(Lcom/facebook/imagepipeline/image/e;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    new-instance p1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string p2, "Encoded image is not valid."

    invoke-direct {p1, p2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/l$c;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->E(Lcom/facebook/imagepipeline/image/e;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-void

    :cond_4
    const/4 p1, 0x4

    .line 11
    :try_start_2
    invoke-static {p2, p1}, Lcom/facebook/imagepipeline/producers/b;->m(II)Z

    move-result p1

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->j:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->n:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->h()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :cond_6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 18
    :cond_8
    throw p1
.end method

.method protected E(Lcom/facebook/imagepipeline/image/e;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c;->n:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->k(Lcom/facebook/imagepipeline/image/e;I)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/l$c;->y()V

    return-void
.end method

.method public g(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/l$c;->z(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->D(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method protected i(F)V
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    mul-float p1, p1, v0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/m;->i(F)V

    return-void
.end method

.method protected abstract w(Lcom/facebook/imagepipeline/image/e;)I
.end method

.method protected abstract x()Lcom/facebook/imagepipeline/image/h;
.end method
