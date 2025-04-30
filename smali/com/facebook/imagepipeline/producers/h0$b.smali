.class Lcom/facebook/imagepipeline/producers/h0$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final i:Lcom/facebook/imagepipeline/producers/m0;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/facebook/imagepipeline/request/d;

.field private l:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private m:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private n:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private o:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private p:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field final synthetic q:Lcom/facebook/imagepipeline/producers/h0;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Lcom/facebook/imagepipeline/request/d;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/m0;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/d;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->q:Lcom/facebook/imagepipeline/producers/h0;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/h0$b;->m:Lcom/facebook/common/references/a;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/facebook/imagepipeline/producers/h0$b;->n:I

    .line 5
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/h0$b;->o:Z

    .line 6
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/h0$b;->p:Z

    .line 7
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/h0$b;->i:Lcom/facebook/imagepipeline/producers/m0;

    .line 8
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/h0$b;->j:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/h0$b;->k:Lcom/facebook/imagepipeline/request/d;

    .line 10
    new-instance p2, Lcom/facebook/imagepipeline/producers/h0$b$a;

    invoke-direct {p2, p0, p1}, Lcom/facebook/imagepipeline/producers/h0$b$a;-><init>(Lcom/facebook/imagepipeline/producers/h0$b;Lcom/facebook/imagepipeline/producers/h0;)V

    invoke-interface {p6, p2}, Lcom/facebook/imagepipeline/producers/k0;->d(Lcom/facebook/imagepipeline/producers/l0;)V

    return-void
.end method

.method private A(Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Lcom/facebook/imagepipeline/request/d;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/m0;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/m0;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p3}, Lcom/facebook/imagepipeline/request/d;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Postprocessor"

    invoke-static {p2, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized B()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private C()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    :cond_0
    return-void
.end method

.method private D(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private E(Lcom/facebook/common/references/a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private G(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/c;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/image/d;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/d;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/h0$b;->k:Lcom/facebook/imagepipeline/request/d;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/h0$b;->q:Lcom/facebook/imagepipeline/producers/h0;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/h0;->d(Lcom/facebook/imagepipeline/producers/h0;)Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/request/d;->c(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/f;)Lcom/facebook/common/references/a;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/d;->p()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/d;->o()I

    move-result v0

    .line 6
    :try_start_0
    new-instance v3, Lcom/facebook/imagepipeline/image/d;

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/c;->b()Lcom/facebook/imagepipeline/image/h;

    move-result-object p1

    invoke-direct {v3, v1, p1, v2, v0}, Lcom/facebook/imagepipeline/image/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/image/h;II)V

    .line 8
    invoke-static {v3}, Lcom/facebook/common/references/a;->p(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 10
    throw p1
.end method

.method private declared-synchronized H()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->m:Lcom/facebook/common/references/a;

    .line 2
    invoke-static {v0}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private I(Lcom/facebook/imagepipeline/image/c;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/facebook/imagepipeline/image/d;

    return p1
.end method

.method private J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->q:Lcom/facebook/imagepipeline/producers/h0;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/h0;->c(Lcom/facebook/imagepipeline/producers/h0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/producers/h0$b$b;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/producers/h0$b$b;-><init>(Lcom/facebook/imagepipeline/producers/h0$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private K(Lcom/facebook/common/references/a;I)V
    .locals 1
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->l:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->m:Lcom/facebook/common/references/a;

    .line 5
    invoke-static {p1}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->m:Lcom/facebook/common/references/a;

    .line 6
    iput p2, p0, Lcom/facebook/imagepipeline/producers/h0$b;->n:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->o:Z

    .line 8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->H()Z

    move-result p1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->J()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/producers/h0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->C()V

    return-void
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/producers/h0$b;)Lcom/facebook/common/references/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->m:Lcom/facebook/common/references/a;

    return-object p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/producers/h0$b;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->m:Lcom/facebook/common/references/a;

    return-object p1
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/producers/h0$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->n:I

    return p0
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/producers/h0$b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->o:Z

    return p1
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/producers/h0$b;Lcom/facebook/common/references/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h0$b;->z(Lcom/facebook/common/references/a;I)V

    return-void
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/producers/h0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->x()V

    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->p:Z

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->H()Z

    move-result v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->J()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private y()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->m:Lcom/facebook/common/references/a;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->m:Lcom/facebook/common/references/a;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->l:Z

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return v1

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private z(Lcom/facebook/common/references/a;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/c;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/h0$b;->I(Lcom/facebook/imagepipeline/image/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h0$b;->E(Lcom/facebook/common/references/a;I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h0$b;->i:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->j:Ljava/lang/String;

    const-string v2, "PostprocessorProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/m0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/c;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/h0$b;->G(Lcom/facebook/imagepipeline/image/c;)Lcom/facebook/common/references/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->i:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/h0$b;->k:Lcom/facebook/imagepipeline/request/d;

    .line 7
    invoke-direct {p0, p1, v1, v3}, Lcom/facebook/imagepipeline/producers/h0$b;->A(Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Lcom/facebook/imagepipeline/request/d;)Ljava/util/Map;

    move-result-object v3

    .line 8
    invoke-interface {p1, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/h0$b;->E(Lcom/facebook/common/references/a;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/h0$b;->i:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/h0$b;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/h0$b;->k:Lcom/facebook/imagepipeline/request/d;

    .line 12
    invoke-direct {p0, p2, v1, v3}, Lcom/facebook/imagepipeline/producers/h0$b;->A(Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Lcom/facebook/imagepipeline/request/d;)Ljava/util/Map;

    move-result-object v3

    .line 13
    invoke-interface {p2, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/producers/m0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/h0$b;->D(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 16
    throw p1
.end method


# virtual methods
.method protected F(Lcom/facebook/common/references/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h0$b;->E(Lcom/facebook/common/references/a;I)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h0$b;->K(Lcom/facebook/common/references/a;I)V

    return-void
.end method

.method protected f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/h0$b;->C()V

    return-void
.end method

.method protected g(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/h0$b;->D(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h0$b;->F(Lcom/facebook/common/references/a;I)V

    return-void
.end method
