.class public Lcom/facebook/imagepipeline/core/g;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final m:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/core/l;

.field private final b:Lr0/c;

.field private final c:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/cache/e;

.field private final g:Lcom/facebook/imagepipeline/cache/e;

.field private final h:Lcom/facebook/imagepipeline/cache/f;

.field private final i:Lcom/facebook/imagepipeline/producers/u0;

.field private final j:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/atomic/AtomicLong;

.field private final l:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/g;->m:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/l;Ljava/util/Set;Lcom/facebook/common/internal/k;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/common/internal/k;Lcom/facebook/common/internal/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/l;",
            "Ljava/util/Set<",
            "Lr0/c;",
            ">;",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/producers/u0;",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/l;

    .line 4
    new-instance p1, Lr0/b;

    invoke-direct {p1, p2}, Lr0/b;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/g;->b:Lr0/c;

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/core/g;->c:Lcom/facebook/common/internal/k;

    .line 6
    iput-object p4, p0, Lcom/facebook/imagepipeline/core/g;->d:Lcom/facebook/imagepipeline/cache/p;

    .line 7
    iput-object p5, p0, Lcom/facebook/imagepipeline/core/g;->e:Lcom/facebook/imagepipeline/cache/p;

    .line 8
    iput-object p6, p0, Lcom/facebook/imagepipeline/core/g;->f:Lcom/facebook/imagepipeline/cache/e;

    .line 9
    iput-object p7, p0, Lcom/facebook/imagepipeline/core/g;->g:Lcom/facebook/imagepipeline/cache/e;

    .line 10
    iput-object p8, p0, Lcom/facebook/imagepipeline/core/g;->h:Lcom/facebook/imagepipeline/cache/f;

    .line 11
    iput-object p9, p0, Lcom/facebook/imagepipeline/core/g;->i:Lcom/facebook/imagepipeline/producers/u0;

    .line 12
    iput-object p10, p0, Lcom/facebook/imagepipeline/core/g;->j:Lcom/facebook/common/internal/k;

    .line 13
    iput-object p11, p0, Lcom/facebook/imagepipeline/core/g;->l:Lcom/facebook/common/internal/k;

    return-void
.end method

.method private J(Landroid/net/Uri;)Lcom/facebook/common/internal/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/common/internal/i<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/g$g;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/g$g;-><init>(Lcom/facebook/imagepipeline/core/g;Landroid/net/Uri;)V

    return-object v0
.end method

.method private P(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lr0/c;)Lcom/facebook/datasource/c;
    .locals 10
    .param p5    # Lr0/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lr0/c;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p5}, Lcom/facebook/imagepipeline/core/g;->y(Lcom/facebook/imagepipeline/request/ImageRequest;Lr0/c;)Lr0/c;

    move-result-object p5

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 5
    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 6
    new-instance p3, Lcom/facebook/imagepipeline/producers/q0;

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/g;->p()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 8
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/f;->m(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v8, 0x1

    .line 10
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    move-object v1, p3

    move-object v2, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/facebook/imagepipeline/producers/q0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 11
    invoke-static {p1, p3, p5}, Lcom/facebook/imagepipeline/datasource/e;->A(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-object p1

    .line 17
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 19
    :cond_5
    throw p1
.end method

.method private Q(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0}, Lcom/facebook/imagepipeline/core/g;->y(Lcom/facebook/imagepipeline/request/ImageRequest;Lr0/c;)Lr0/c;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->i()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v1

    .line 3
    invoke-static {v1, p3}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 4
    new-instance p3, Lcom/facebook/imagepipeline/producers/q0;

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/g;->p()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p2

    move-object v4, v0

    move-object v5, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/facebook/imagepipeline/producers/q0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    .line 6
    invoke-static {p1, p3, v0}, Lcom/facebook/imagepipeline/datasource/g;->z(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/g;)Lcom/facebook/imagepipeline/cache/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/g;->g:Lcom/facebook/imagepipeline/cache/e;

    return-object p0
.end method


# virtual methods
.method public A(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->h:Lcom/facebook/imagepipeline/cache/f;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->d:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 5
    throw v0
.end method

.method public B(Landroid/net/Uri;)Lcom/facebook/datasource/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/g;->C(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public C(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->h:Lcom/facebook/imagepipeline/cache/f;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/facebook/datasource/i;->s()Lcom/facebook/datasource/i;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/g;->f:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/e;->k(Lcom/facebook/cache/common/c;)Lbolts/h;

    move-result-object v1

    new-instance v2, Lcom/facebook/imagepipeline/core/g$f;

    invoke-direct {v2, p0, p1}, Lcom/facebook/imagepipeline/core/g$f;-><init>(Lcom/facebook/imagepipeline/core/g;Lcom/facebook/cache/common/c;)V

    .line 4
    invoke-virtual {v1, v2}, Lbolts/h;->q(Lbolts/g;)Lbolts/h;

    move-result-object p1

    new-instance v1, Lcom/facebook/imagepipeline/core/g$e;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/core/g$e;-><init>(Lcom/facebook/imagepipeline/core/g;Lcom/facebook/datasource/i;)V

    .line 5
    invoke-virtual {p1, v1}, Lbolts/h;->m(Lbolts/g;)Lbolts/h;

    return-object v0
.end method

.method public D(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/g;->E(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/g;->E(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public E(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/g;->F(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result p1

    return p1
.end method

.method public F(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->h:Lcom/facebook/imagepipeline/cache/f;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object p1

    .line 3
    sget-object v1, Lcom/facebook/imagepipeline/core/g$h;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/g;->g:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/cache/e;->n(Lcom/facebook/cache/common/c;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/g;->f:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/cache/e;->n(Lcom/facebook/cache/common/c;)Z

    move-result p1

    return p1
.end method

.method public G()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->l:Lcom/facebook/common/internal/k;

    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->i:Lcom/facebook/imagepipeline/producers/u0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/u0;->c()Z

    move-result v0

    return v0
.end method

.method public I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->i:Lcom/facebook/imagepipeline/producers/u0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/u0;->e()V

    return-void
.end method

.method public K(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->c:Lcom/facebook/common/internal/k;

    invoke-interface {v0}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/facebook/imagepipeline/core/g;->m:Ljava/util/concurrent/CancellationException;

    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->y()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->j:Lcom/facebook/common/internal/k;

    .line 5
    invoke-interface {v0}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/l;

    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/l;->j(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/l;

    .line 8
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/l;->g(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 9
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    sget-object v6, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/g;->Q(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public L(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/g;->M(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public M(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->c:Lcom/facebook/common/internal/k;

    invoke-interface {v0}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/facebook/imagepipeline/core/g;->m:Ljava/util/concurrent/CancellationException;

    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/l;

    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/l;->j(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object v2

    .line 5
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/g;->Q(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->i:Lcom/facebook/imagepipeline/producers/u0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/u0;->f()V

    return-void
.end method

.method public O(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/q0;",
            "Lr0/c;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#submitFetchRequest"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/datasource/e;->A(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object p1

    .line 9
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 11
    :cond_3
    throw p1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/g;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/g;->c()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->f:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/e;->j()Lbolts/h;

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->g:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/e;->j()Lbolts/h;

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/g$d;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/g$d;-><init>(Lcom/facebook/imagepipeline/core/g;)V

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/g;->d:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/p;->b(Lcom/facebook/common/internal/i;)I

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/g;->e:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/p;->b(Lcom/facebook/common/internal/i;)I

    return-void
.end method

.method public e(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/g;->h(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/g;->f(Landroid/net/Uri;)V

    return-void
.end method

.method public f(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/g;->g(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    return-void
.end method

.method public g(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->h:Lcom/facebook/imagepipeline/cache/f;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/f;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->f:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/e;->t(Lcom/facebook/cache/common/c;)Lbolts/h;

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->g:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/e;->t(Lcom/facebook/cache/common/c;)Lbolts/h;

    return-void
.end method

.method public h(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/g;->J(Landroid/net/Uri;)Lcom/facebook/common/internal/i;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->d:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->b(Lcom/facebook/common/internal/i;)I

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->e:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->b(Lcom/facebook/common/internal/i;)I

    return-void
.end method

.method public i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/g;->j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/g;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)Lcom/facebook/datasource/c;
    .locals 7
    .param p4    # Lr0/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lr0/c;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/l;

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/l;->i(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/g;->P(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lr0/c;)Lcom/facebook/datasource/c;
    .locals 1
    .param p3    # Lr0/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lr0/c;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/g;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/g;->n(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lr0/c;)Lcom/facebook/datasource/c;
    .locals 7
    .param p3    # Lr0/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lr0/c;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/l;

    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/l;->k(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->F(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    :cond_0
    move-object v3, p1

    .line 8
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/g;->P(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/facebook/datasource/d;->c(Ljava/lang/Throwable;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/g;->j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/facebook/imagepipeline/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->d:Lcom/facebook/imagepipeline/cache/p;

    return-object v0
.end method

.method public r(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipeline#getCacheKey"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->h:Lcom/facebook/imagepipeline/cache/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lcom/facebook/imagepipeline/request/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v1

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-object v1
.end method

.method public s()Lcom/facebook/imagepipeline/cache/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->h:Lcom/facebook/imagepipeline/cache/f;

    return-object v0
.end method

.method public t(Lcom/facebook/cache/common/c;)Lcom/facebook/common/references/a;
    .locals 2
    .param p1    # Lcom/facebook/cache/common/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->d:Lcom/facebook/imagepipeline/cache/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/c;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/c;->b()Lcom/facebook/imagepipeline/image/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/h;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->close()V

    return-object v1

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public u(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/g$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/core/g$a;-><init>(Lcom/facebook/imagepipeline/core/g;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)V

    return-object v0
.end method

.method public v(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)Lcom/facebook/common/internal/k;
    .locals 7
    .param p4    # Lr0/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lr0/c;",
            ")",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/imagepipeline/core/g$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/g$b;-><init>(Lcom/facebook/imagepipeline/core/g;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)V

    return-object v6
.end method

.method public w(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/g$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/core/g$c;-><init>(Lcom/facebook/imagepipeline/core/g;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V

    return-object v0
.end method

.method public x()Lcom/facebook/imagepipeline/core/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->a:Lcom/facebook/imagepipeline/core/l;

    return-object v0
.end method

.method public y(Lcom/facebook/imagepipeline/request/ImageRequest;Lr0/c;)Lr0/c;
    .locals 6
    .param p2    # Lr0/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()Lr0/c;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/g;->b:Lr0/c;

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lr0/b;

    new-array v0, v0, [Lr0/c;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/g;->b:Lr0/c;

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()Lr0/c;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p2, v0}, Lr0/b;-><init>([Lr0/c;)V

    return-object p2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()Lr0/c;

    move-result-object v3

    if-nez v3, :cond_2

    .line 5
    new-instance p1, Lr0/b;

    new-array v0, v0, [Lr0/c;

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/g;->b:Lr0/c;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lr0/b;-><init>([Lr0/c;)V

    return-object p1

    .line 6
    :cond_2
    new-instance v3, Lr0/b;

    const/4 v4, 0x3

    new-array v4, v4, [Lr0/c;

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/g;->b:Lr0/c;

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->o()Lr0/c;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-direct {v3, v4}, Lr0/b;-><init>([Lr0/c;)V

    return-object v3
.end method

.method public z(Landroid/net/Uri;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/g;->J(Landroid/net/Uri;)Lcom/facebook/common/internal/i;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/g;->d:Lcom/facebook/imagepipeline/cache/p;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->c(Lcom/facebook/common/internal/i;)Z

    move-result p1

    return p1
.end method
