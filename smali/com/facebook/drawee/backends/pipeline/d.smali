.class public Lcom/facebook/drawee/backends/pipeline/d;
.super Lcom/facebook/drawee/controller/a;
.source "PipelineDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/a<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/imagepipeline/image/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final I:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/facebook/cache/common/c;

.field private B:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Lcom/facebook/common/internal/ImmutableList;
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

.field private E:Lcom/facebook/drawee/backends/pipeline/info/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr0/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private G:Lh0/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private H:Lg0/a;

.field private final w:Landroid/content/res/Resources;

.field private final x:Lp0/a;

.field private final y:Lcom/facebook/common/internal/ImmutableList;
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

.field private final z:Lcom/facebook/imagepipeline/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/drawee/backends/pipeline/d;

    sput-object v0, Lcom/facebook/drawee/backends/pipeline/d;->I:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lp0/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/common/internal/ImmutableList;)V
    .locals 1
    .param p5    # Lcom/facebook/imagepipeline/cache/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p4, v0, v0}, Lcom/facebook/drawee/controller/a;-><init>(Lcom/facebook/drawee/components/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->w:Landroid/content/res/Resources;

    .line 3
    new-instance p2, Lcom/facebook/drawee/backends/pipeline/b;

    invoke-direct {p2, p1, p3}, Lcom/facebook/drawee/backends/pipeline/b;-><init>(Landroid/content/res/Resources;Lp0/a;)V

    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/d;->x:Lp0/a;

    .line 4
    iput-object p6, p0, Lcom/facebook/drawee/backends/pipeline/d;->y:Lcom/facebook/common/internal/ImmutableList;

    .line 5
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/d;->z:Lcom/facebook/imagepipeline/cache/p;

    return-void
.end method

.method private c0(Lcom/facebook/common/internal/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->B:Lcom/facebook/common/internal/k;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->g0(Lcom/facebook/imagepipeline/image/c;)V

    return-void
.end method

.method private f0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lp0/a;",
            ">;",
            "Lcom/facebook/imagepipeline/image/c;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp0/a;

    .line 2
    invoke-interface {v1, p2}, Lp0/a;->a(Lcom/facebook/imagepipeline/image/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1, p2}, Lp0/a;->b(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private g0(Lcom/facebook/imagepipeline/image/c;)V
    .locals 3
    .param p1    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->C:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/facebook/drawee/debug/a;

    invoke-direct {v0}, Lcom/facebook/drawee/debug/a;-><init>()V

    .line 4
    new-instance v1, Lj0/a;

    invoke-direct {v1, v0}, Lj0/a;-><init>(Lj0/b;)V

    .line 5
    new-instance v2, Lg0/a;

    invoke-direct {v2}, Lg0/a;-><init>()V

    iput-object v2, p0, Lcom/facebook/drawee/backends/pipeline/d;->H:Lg0/a;

    .line 6
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->l(Lcom/facebook/drawee/controller/c;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/a;->L(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->H:Lg0/a;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/d;->S(Lh0/b;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/drawee/debug/a;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/debug/a;

    .line 12
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/debug/a;->g(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->e()Lk0/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v1}, Lk0/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/drawee/drawable/r;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/q;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Lcom/facebook/drawee/drawable/q;->B()Lcom/facebook/drawee/drawable/r$c;

    move-result-object v1

    move-object v2, v1

    .line 16
    :cond_3
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/debug/a;->n(Lcom/facebook/drawee/drawable/r$c;)V

    .line 17
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->H:Lg0/a;

    invoke-virtual {v1}, Lg0/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/debug/a;->m(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 18
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/f;->a()I

    move-result v1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/f;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/debug/a;->h(II)V

    .line 19
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/c;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/debug/a;->l(I)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/drawee/debug/a;->e()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic E(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/d;->h0(Ljava/lang/String;Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected H(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Le0/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le0/a;

    invoke-interface {p1}, Le0/a;->e()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic J(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->i0(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method public declared-synchronized S(Lh0/b;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    instance-of v1, v0, Lh0/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lh0/a;

    .line 3
    invoke-virtual {v0, p1}, Lh0/a;->b(Lh0/b;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lh0/a;

    const/4 v2, 0x2

    new-array v2, v2, [Lh0/b;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Lh0/a;-><init>([Lh0/b;)V

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized T(Lr0/c;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Ljava/util/Set;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected U()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected V(Lcom/facebook/common/references/a;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#createDrawable"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->o(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/c;

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->g0(Lcom/facebook/imagepipeline/image/c;)V

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->D:Lcom/facebook/common/internal/ImmutableList;

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->f0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object v0

    .line 10
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->y:Lcom/facebook/common/internal/ImmutableList;

    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->f0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-object v0

    .line 13
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->x:Lp0/a;

    invoke-interface {v0, p1}, Lp0/a;->b(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_5
    return-object v0

    .line 16
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized image class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 19
    :cond_7
    throw p1
.end method

.method protected W()Lcom/facebook/cache/common/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->A:Lcom/facebook/cache/common/c;

    return-object v0
.end method

.method protected X()Lcom/facebook/common/references/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#getCachedImage"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->z:Lcom/facebook/imagepipeline/cache/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/d;->A:Lcom/facebook/cache/common/c;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/cache/p;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/image/c;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/c;->b()Lcom/facebook/imagepipeline/image/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/image/h;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object v1

    .line 9
    :cond_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-object v0

    .line 11
    :cond_5
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 15
    :cond_7
    throw v0
.end method

.method protected Y()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->B:Lcom/facebook/common/internal/k;

    return-object v0
.end method

.method protected Z(Lcom/facebook/common/references/a;)I
    .locals 0
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->m()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lk0/b;)V
    .locals 0
    .param p1    # Lk0/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/a;->a(Lk0/b;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->g0(Lcom/facebook/imagepipeline/image/c;)V

    return-void
.end method

.method protected a0(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/image/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/image/f;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->o(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/f;

    return-object p1
.end method

.method public declared-synchronized b0()Lr0/c;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/a;

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/a;-><init>(Ljava/lang/String;Lh0/b;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 4
    new-instance v2, Lr0/b;

    invoke-direct {v2, v1}, Lr0/b;-><init>(Ljava/util/Set;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v2, v0}, Lr0/b;->l(Lr0/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-object v2

    .line 7
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d0(Lcom/facebook/common/internal/k;Ljava/lang/String;Lcom/facebook/cache/common/c;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lh0/b;)V
    .locals 1
    .param p5    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lh0/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/c;",
            "Ljava/lang/Object;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lp0/a;",
            ">;",
            "Lh0/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#initialize"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p2, p4}, Lcom/facebook/drawee/controller/a;->z(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->c0(Lcom/facebook/common/internal/k;)V

    .line 5
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/d;->A:Lcom/facebook/cache/common/c;

    .line 6
    invoke-virtual {p0, p5}, Lcom/facebook/drawee/backends/pipeline/d;->l0(Lcom/facebook/common/internal/ImmutableList;)V

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/d;->U()V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->g0(Lcom/facebook/imagepipeline/image/c;)V

    .line 9
    invoke-virtual {p0, p6}, Lcom/facebook/drawee/backends/pipeline/d;->S(Lh0/b;)V

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized e0(Lh0/d;)V
    .locals 2
    .param p1    # Lh0/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/drawee/backends/pipeline/info/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/info/c;->g()V

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/drawee/backends/pipeline/info/c;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/c;

    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/facebook/drawee/backends/pipeline/info/c;-><init>(Lcom/facebook/common/time/c;Lcom/facebook/drawee/backends/pipeline/d;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/drawee/backends/pipeline/info/c;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/drawee/backends/pipeline/info/c;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/c;->a(Lh0/d;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/drawee/backends/pipeline/info/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/info/c;->h(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->w:Landroid/content/res/Resources;

    return-object v0
.end method

.method public h(Lk0/a;)Z
    .locals 2
    .param p1    # Lk0/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->A:Lcom/facebook/cache/common/c;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/facebook/drawee/backends/pipeline/d;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/d;->W()Lcom/facebook/cache/common/c;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected h0(Ljava/lang/String;Lcom/facebook/common/references/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->E(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 4
    invoke-interface {p2, p1, v0, v1}, Lh0/b;->a(Ljava/lang/String;IZ)V

    .line 5
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

.method protected i0(Lcom/facebook/common/references/a;)V
    .locals 0
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method public declared-synchronized j0(Lh0/b;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    instance-of v1, v0, Lh0/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lh0/a;

    .line 3
    invoke-virtual {v0, p1}, Lh0/a;->c(Lh0/b;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lh0/a;

    const/4 v2, 0x2

    new-array v2, v2, [Lh0/b;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Lh0/a;-><init>([Lh0/b;)V

    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Lh0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k0(Lr0/c;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public l0(Lcom/facebook/common/internal/ImmutableList;)V
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
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->D:Lcom/facebook/common/internal/ImmutableList;

    return-void
.end method

.method protected bridge synthetic m(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->V(Lcom/facebook/common/references/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public m0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->C:Z

    return-void
.end method

.method protected bridge synthetic n()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/d;->X()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected r()Lcom/facebook/datasource/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#getDataSource"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/facebook/common/logging/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/d;->I:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "controller %x: getDataSource"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->B:Lcom/facebook/common/internal/k;

    invoke-interface {v0}, Lcom/facebook/common/internal/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/c;

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->f(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    .line 2
    invoke-super {p0}, Lcom/facebook/drawee/controller/a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->B:Lcom/facebook/common/internal/k;

    const-string v2, "dataSourceSupplier"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic v(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->Z(Lcom/facebook/common/references/a;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->a0(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/image/f;

    move-result-object p1

    return-object p1
.end method
