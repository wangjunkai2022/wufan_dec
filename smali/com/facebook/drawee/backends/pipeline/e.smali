.class public Lcom/facebook/drawee/backends/pipeline/e;
.super Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "Lcom/facebook/drawee/backends/pipeline/e;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/imagepipeline/image/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final s:Lcom/facebook/imagepipeline/core/g;

.field private final t:Lcom/facebook/drawee/backends/pipeline/g;

.field private u:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lp0/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private v:Lh0/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private w:Lh0/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/g;Lcom/facebook/imagepipeline/core/g;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/drawee/backends/pipeline/g;",
            "Lcom/facebook/imagepipeline/core/g;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 2
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/e;->s:Lcom/facebook/imagepipeline/core/g;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/e;->t:Lcom/facebook/drawee/backends/pipeline/g;

    return-void
.end method

.method public static S(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/e$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "is not supported. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0
.end method

.method private T()Lcom/facebook/cache/common/c;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->s:Lcom/facebook/imagepipeline/core/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/g;->s()Lcom/facebook/imagepipeline/cache/f;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->j()Lcom/facebook/imagepipeline/request/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h()Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic B()Lcom/facebook/drawee/controller/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/e;->W()Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object v0

    return-object v0
.end method

.method protected U(Lk0/a;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/a;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/e;->s:Lcom/facebook/imagepipeline/core/g;

    .line 2
    invoke-static {p5}, Lcom/facebook/drawee/backends/pipeline/e;->S(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p5

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->V(Lk0/a;)Lr0/c;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/facebook/imagepipeline/core/g;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lr0/c;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method protected V(Lk0/a;)Lr0/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/facebook/drawee/backends/pipeline/d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/d;->b0()Lr0/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected W()Lcom/facebook/drawee/backends/pipeline/d;
    .locals 8

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeControllerBuilder#obtainController"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t()Lk0/a;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f()Ljava/lang/String;

    move-result-object v3

    .line 5
    instance-of v1, v0, Lcom/facebook/drawee/backends/pipeline/d;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/d;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/e;->t:Lcom/facebook/drawee/backends/pipeline/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/g;->c()Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object v0

    .line 8
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->C(Lk0/a;Ljava/lang/String;)Lcom/facebook/common/internal/k;

    move-result-object v2

    .line 9
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/e;->T()Lcom/facebook/cache/common/c;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->h()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/drawee/backends/pipeline/e;->u:Lcom/facebook/common/internal/ImmutableList;

    iget-object v7, p0, Lcom/facebook/drawee/backends/pipeline/e;->v:Lh0/b;

    move-object v1, v0

    .line 11
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/drawee/backends/pipeline/d;->d0(Lcom/facebook/common/internal/k;Ljava/lang/String;Lcom/facebook/cache/common/c;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lh0/b;)V

    .line 12
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/e;->w:Lh0/d;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/d;->e0(Lh0/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 17
    :cond_3
    throw v0
.end method

.method public X(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 0
    .param p1    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lp0/a;",
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/e;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->u:Lcom/facebook/common/internal/ImmutableList;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->w()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    return-object p1
.end method

.method public varargs Y([Lp0/a;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/ImmutableList;->b([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->X(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    return-object p1
.end method

.method public Z(Lp0/a;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lp0/a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableList;->b([Ljava/lang/Object;)Lcom/facebook/common/internal/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->X(Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/net/Uri;)Lk0/d;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    return-object p1
.end method

.method public a0(Lh0/b;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 0
    .param p1    # Lh0/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->v:Lh0/b;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->w()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    return-object p1
.end method

.method public b0(Lh0/d;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 0
    .param p1    # Lh0/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/e;->w:Lh0/d;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->w()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    return-object p1
.end method

.method public c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->M(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->b()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->H(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->M(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    return-object p1
.end method

.method public d0(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->c(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->M(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    return-object p1
.end method

.method protected bridge synthetic l(Lk0/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/c;
    .locals 0

    .line 1
    check-cast p3, Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual/range {p0 .. p5}, Lcom/facebook/drawee/backends/pipeline/e;->U(Lk0/a;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUri(Ljava/lang/String;)Lk0/d;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->d0(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    return-object p1
.end method
