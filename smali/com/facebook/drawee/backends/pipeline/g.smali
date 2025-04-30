.class public Lcom/facebook/drawee/backends/pipeline/g;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerFactory.java"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/facebook/drawee/components/a;

.field private c:Lp0/a;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/common/internal/ImmutableList;
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

.field private g:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lp0/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/common/internal/k;)V
    .locals 0
    .param p6    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/common/internal/k;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Lp0/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lp0/a;",
            ">;",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/g;->a:Landroid/content/res/Resources;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/g;->b:Lcom/facebook/drawee/components/a;

    .line 3
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lp0/a;

    .line 4
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/g;->d:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/g;->e:Lcom/facebook/imagepipeline/cache/p;

    .line 6
    iput-object p6, p0, Lcom/facebook/drawee/backends/pipeline/g;->f:Lcom/facebook/common/internal/ImmutableList;

    .line 7
    iput-object p7, p0, Lcom/facebook/drawee/backends/pipeline/g;->g:Lcom/facebook/common/internal/k;

    return-void
.end method

.method protected b(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lp0/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/d;
    .locals 8
    .param p6    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Lp0/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lp0/a;",
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/d;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/facebook/drawee/backends/pipeline/d;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/backends/pipeline/d;-><init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lp0/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/common/internal/ImmutableList;)V

    return-object v7
.end method

.method public c()Lcom/facebook/drawee/backends/pipeline/d;
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/g;->b:Lcom/facebook/drawee/components/a;

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lp0/a;

    iget-object v4, p0, Lcom/facebook/drawee/backends/pipeline/g;->d:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/facebook/drawee/backends/pipeline/g;->e:Lcom/facebook/imagepipeline/cache/p;

    iget-object v6, p0, Lcom/facebook/drawee/backends/pipeline/g;->f:Lcom/facebook/common/internal/ImmutableList;

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/drawee/backends/pipeline/g;->b(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lp0/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/d;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->g:Lcom/facebook/common/internal/k;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/d;->m0(Z)V

    :cond_0
    return-object v0
.end method
