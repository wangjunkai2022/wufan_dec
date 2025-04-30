.class public Lcom/facebook/imagepipeline/producers/c0;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "NetworkFetchProducer"

.field public static final e:Ljava/lang/String; = "intermediate_result"

.field private static final f:I = 0x4000

.field static final g:J = 0x64L
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/common/memory/g;

.field private final b:Lcom/facebook/common/memory/a;

.field private final c:Lcom/facebook/imagepipeline/producers/d0;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/c0;->a:Lcom/facebook/common/memory/g;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/c0;->b:Lcom/facebook/common/memory/a;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/c0;->c:Lcom/facebook/imagepipeline/producers/d0;

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/c0;Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/c0;->k(Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/c0;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/c0;->j(Lcom/facebook/imagepipeline/producers/r;)V

    return-void
.end method

.method protected static e(II)F
    .locals 4

    if-lez p1, :cond_0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    neg-int p0, p0

    int-to-double v0, p0

    const-wide v2, 0x40e86a0000000000L    # 50000.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private f(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/r;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/m0;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->c:Lcom/facebook/imagepipeline/producers/d0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/d0;->d(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected static i(Lcom/facebook/common/memory/i;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/i;",
            "I",
            "Lcom/facebook/imagepipeline/common/a;",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/common/memory/i;->a()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/common/references/a;->p(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/facebook/imagepipeline/image/e;->D(Lcom/facebook/imagepipeline/common/a;)V

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/e;->z()V

    .line 5
    invoke-interface {p3, v1, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 7
    invoke-static {p0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 9
    invoke-static {p0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 10
    throw p1
.end method

.method private j(Lcom/facebook/imagepipeline/producers/r;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/m0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    return-void
.end method

.method private k(Lcom/facebook/imagepipeline/producers/r;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/facebook/imagepipeline/producers/m0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/m0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method private m(Lcom/facebook/imagepipeline/producers/r;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->getContext()Lcom/facebook/imagepipeline/producers/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/k0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->c:Lcom/facebook/imagepipeline/producers/d0;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/d0;->c(Lcom/facebook/imagepipeline/producers/r;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getListener()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/m0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->c:Lcom/facebook/imagepipeline/producers/d0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/d0;->e(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)Lcom/facebook/imagepipeline/producers/r;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/c0;->c:Lcom/facebook/imagepipeline/producers/d0;

    new-instance v0, Lcom/facebook/imagepipeline/producers/c0$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/c0$a;-><init>(Lcom/facebook/imagepipeline/producers/c0;Lcom/facebook/imagepipeline/producers/r;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/imagepipeline/producers/d0;->a(Lcom/facebook/imagepipeline/producers/r;Lcom/facebook/imagepipeline/producers/d0$a;)V

    return-void
.end method

.method protected g(Lcom/facebook/common/memory/i;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/common/memory/i;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/producers/c0;->f(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkFetchProducer"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/m0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v3, v2}, Lcom/facebook/imagepipeline/producers/m0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->e()I

    move-result v0

    or-int/2addr v0, v2

    .line 6
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->f()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p2

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/facebook/imagepipeline/producers/c0;->i(Lcom/facebook/common/memory/i;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method protected h(Lcom/facebook/common/memory/i;Lcom/facebook/imagepipeline/producers/r;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/c0;->m(Lcom/facebook/imagepipeline/producers/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->c()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 4
    invoke-virtual {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/r;->h(J)V

    .line 5
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->d()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const-string v3, "intermediate_result"

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/m0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->e()I

    move-result v0

    .line 8
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->f()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p2

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/facebook/imagepipeline/producers/c0;->i(Lcom/facebook/common/memory/i;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;)V

    :cond_0
    return-void
.end method

.method protected l(Lcom/facebook/imagepipeline/producers/r;Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->a:Lcom/facebook/common/memory/g;

    invoke-interface {v0, p3}, Lcom/facebook/common/memory/g;->f(I)Lcom/facebook/common/memory/i;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/c0;->a:Lcom/facebook/common/memory/g;

    invoke-interface {v0}, Lcom/facebook/common/memory/g;->c()Lcom/facebook/common/memory/i;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/c0;->b:Lcom/facebook/common/memory/a;

    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 4
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/c0;->h(Lcom/facebook/common/memory/i;Lcom/facebook/imagepipeline/producers/r;)V

    .line 7
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->size()I

    move-result v2

    invoke-static {v2, p3}, Lcom/facebook/imagepipeline/producers/c0;->e(II)F

    move-result v2

    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/r;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/c0;->c:Lcom/facebook/imagepipeline/producers/d0;

    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->size()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/imagepipeline/producers/d0;->b(Lcom/facebook/imagepipeline/producers/r;I)V

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/c0;->g(Lcom/facebook/common/memory/i;Lcom/facebook/imagepipeline/producers/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/c0;->b:Lcom/facebook/common/memory/a;

    invoke-interface {p1, v1}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/c0;->b:Lcom/facebook/common/memory/a;

    invoke-interface {p2, v1}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->close()V

    .line 15
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
