.class public Li0/a;
.super Lcom/facebook/drawee/controller/b;
.source "ImagePerfControllerListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/b<",
        "Lcom/facebook/imagepipeline/image/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/common/time/c;

.field private final c:Lcom/facebook/drawee/backends/pipeline/info/d;

.field private final d:Lcom/facebook/drawee/backends/pipeline/info/c;


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/c;Lcom/facebook/drawee/backends/pipeline/info/d;Lcom/facebook/drawee/backends/pipeline/info/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    .line 2
    iput-object p1, p0, Li0/a;->b:Lcom/facebook/common/time/c;

    .line 3
    iput-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    .line 4
    iput-object p3, p0, Li0/a;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    return-void
.end method

.method private j(J)V
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->w(Z)V

    .line 2
    iget-object v0, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->q(J)V

    .line 3
    iget-object p1, p0, Li0/a;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/info/c;->d(Lcom/facebook/drawee/backends/pipeline/info/d;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/f;

    invoke-virtual {p0, p1, p2}, Li0/a;->i(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p2, p0, Li0/a;->b:Lcom/facebook/common/time/c;

    invoke-interface {p2}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v0

    .line 2
    iget-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->f(J)V

    .line 3
    iget-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->h(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Li0/a;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 v2, 0x5

    invoke-virtual {p1, p2, v2}, Lcom/facebook/drawee/backends/pipeline/info/c;->e(Lcom/facebook/drawee/backends/pipeline/info/d;I)V

    .line 5
    invoke-direct {p0, v0, v1}, Li0/a;->j(J)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/b;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Li0/a;->b:Lcom/facebook/common/time/c;

    invoke-interface {v0}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v2}, Lcom/facebook/drawee/backends/pipeline/info/d;->a()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->e(J)V

    .line 5
    iget-object v2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->h(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Li0/a;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object v2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/facebook/drawee/backends/pipeline/info/c;->e(Lcom/facebook/drawee/backends/pipeline/info/d;I)V

    .line 7
    :cond_0
    invoke-direct {p0, v0, v1}, Li0/a;->j(J)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/f;

    invoke-virtual {p0, p1, p2, p3}, Li0/a;->h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li0/a;->b:Lcom/facebook/common/time/c;

    invoke-interface {v0}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->j(J)V

    .line 3
    iget-object v2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->h(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->c(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Li0/a;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/facebook/drawee/backends/pipeline/info/c;->e(Lcom/facebook/drawee/backends/pipeline/info/d;I)V

    .line 6
    invoke-virtual {p0, v0, v1}, Li0/a;->k(J)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/image/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p3, p0, Li0/a;->b:Lcom/facebook/common/time/c;

    invoke-interface {p3}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v0

    .line 2
    iget-object p3, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p3, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->g(J)V

    .line 3
    iget-object p3, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p3, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->o(J)V

    .line 4
    iget-object p3, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p3, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->h(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->k(Lcom/facebook/imagepipeline/image/f;)V

    .line 6
    iget-object p1, p0, Li0/a;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/c;->e(Lcom/facebook/drawee/backends/pipeline/info/d;I)V

    return-void
.end method

.method public i(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Li0/a;->b:Lcom/facebook/common/time/c;

    invoke-interface {v0}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->i(J)V

    .line 3
    iget-object v0, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/d;->h(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->k(Lcom/facebook/imagepipeline/image/f;)V

    .line 5
    iget-object p1, p0, Li0/a;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/info/c;->e(Lcom/facebook/drawee/backends/pipeline/info/d;I)V

    return-void
.end method

.method public k(J)V
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/d;->w(Z)V

    .line 2
    iget-object v0, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->v(J)V

    .line 3
    iget-object p1, p0, Li0/a;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object p2, p0, Li0/a;->c:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p2, v1}, Lcom/facebook/drawee/backends/pipeline/info/c;->d(Lcom/facebook/drawee/backends/pipeline/info/d;I)V

    return-void
.end method
