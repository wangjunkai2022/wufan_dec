.class public abstract Lcom/facebook/imagepipeline/datasource/a;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "AbstractProducerToDataSourceAdapter.java"

# interfaces
.implements Lcom/facebook/imagepipeline/request/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;",
        "Lcom/facebook/imagepipeline/request/c;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final g:Lcom/facebook/imagepipeline/producers/q0;

.field private final h:Lr0/c;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/q0;",
            "Lr0/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractProducerToDataSourceAdapter()"

    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/datasource/a;->h:Lr0/c;

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AbstractProducerToDataSourceAdapter()->onRequestStart"

    .line 7
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/d;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/d;->c()Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/d;->getId()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/d;->f()Z

    move-result v3

    .line 12
    invoke-interface {p3, v0, v1, v2, v3}, Lr0/c;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 15
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "AbstractProducerToDataSourceAdapter()->produceResult"

    .line 16
    invoke-static {p3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/a;->v()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 20
    :cond_4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_5
    return-void
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/datasource/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/a;->x(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/datasource/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/a;->w()V

    return-void
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/datasource/a;F)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->o(F)Z

    move-result p0

    return p0
.end method

.method private v()Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/datasource/a$a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/a$a;-><init>(Lcom/facebook/imagepipeline/datasource/a;)V

    return-object v0
.end method

.method private declared-synchronized w()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isClosed()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->o(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private x(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->m(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->h:Lr0/c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/d;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    .line 4
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/d;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    .line 5
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/d;->f()Z

    move-result v3

    .line 6
    invoke-interface {v0, v1, v2, p1, v3}, Lr0/c;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    return-object v0
.end method

.method public close()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->h:Lr0/c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lr0/c;->k(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->l()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected y(Ljava/lang/Object;I)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result p2

    .line 2
    invoke-super {p0, p1, p2}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/a;->h:Lr0/c;

    iget-object p2, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    .line 4
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/d;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/d;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/a;->g:Lcom/facebook/imagepipeline/producers/q0;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/d;->f()Z

    move-result v1

    .line 7
    invoke-interface {p1, p2, v0, v1}, Lr0/c;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
