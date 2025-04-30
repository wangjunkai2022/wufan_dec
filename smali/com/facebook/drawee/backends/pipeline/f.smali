.class public Lcom/facebook/drawee/backends/pipeline/f;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerBuilderSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/k<",
        "Lcom/facebook/drawee/backends/pipeline/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/imagepipeline/core/g;

.field private final c:Lcom/facebook/drawee/backends/pipeline/g;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/f;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 1
    .param p2    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/core/i;->j()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/drawee/backends/pipeline/f;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 1
    .param p3    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/drawee/backends/pipeline/f;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Ljava/util/Set;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Ljava/util/Set;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 10
    .param p4    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/imagepipeline/core/i;",
            "Ljava/util/Set<",
            "Lcom/facebook/drawee/controller/c;",
            ">;",
            "Lcom/facebook/drawee/backends/pipeline/c;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/f;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/core/i;->h()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/f;->b:Lcom/facebook/imagepipeline/core/g;

    if-eqz p4, :cond_0

    .line 7
    invoke-virtual {p4}, Lcom/facebook/drawee/backends/pipeline/c;->c()Lcom/facebook/drawee/backends/pipeline/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p4}, Lcom/facebook/drawee/backends/pipeline/c;->c()Lcom/facebook/drawee/backends/pipeline/g;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/f;->c:Lcom/facebook/drawee/backends/pipeline/g;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/facebook/drawee/backends/pipeline/g;

    invoke-direct {v1}, Lcom/facebook/drawee/backends/pipeline/g;-><init>()V

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/f;->c:Lcom/facebook/drawee/backends/pipeline/g;

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/f;->c:Lcom/facebook/drawee/backends/pipeline/g;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/facebook/drawee/components/a;->e()Lcom/facebook/drawee/components/a;

    move-result-object v4

    .line 13
    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/core/i;->a(Landroid/content/Context;)Lp0/a;

    move-result-object v5

    .line 14
    invoke-static {}, Lcom/facebook/common/executors/i;->f()Lcom/facebook/common/executors/i;

    move-result-object v6

    .line 15
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->q()Lcom/facebook/imagepipeline/cache/p;

    move-result-object v7

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 16
    invoke-virtual {p4}, Lcom/facebook/drawee/backends/pipeline/c;->a()Lcom/facebook/common/internal/ImmutableList;

    move-result-object p2

    move-object v8, p2

    goto :goto_1

    :cond_1
    move-object v8, p1

    :goto_1
    if-eqz p4, :cond_2

    .line 17
    invoke-virtual {p4}, Lcom/facebook/drawee/backends/pipeline/c;->b()Lcom/facebook/common/internal/k;

    move-result-object p1

    :cond_2
    move-object v9, p1

    .line 18
    invoke-virtual/range {v2 .. v9}, Lcom/facebook/drawee/backends/pipeline/g;->a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lp0/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/common/internal/k;)V

    .line 19
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/f;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/backends/pipeline/e;
    .locals 5

    .line 1
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/e;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/f;->c:Lcom/facebook/drawee/backends/pipeline/g;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/f;->b:Lcom/facebook/imagepipeline/core/g;

    iget-object v4, p0, Lcom/facebook/drawee/backends/pipeline/f;->d:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/drawee/backends/pipeline/e;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/g;Lcom/facebook/imagepipeline/core/g;Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/f;->a()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    return-object v0
.end method
