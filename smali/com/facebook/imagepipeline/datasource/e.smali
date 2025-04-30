.class public Lcom/facebook/imagepipeline/datasource/e;
.super Lcom/facebook/imagepipeline/datasource/a;
.source "CloseableProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/datasource/a<",
        "Lcom/facebook/common/references/a<",
        "TT;>;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/q0;",
            "Lr0/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/datasource/a;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)V

    return-void
.end method

.method public static A(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)Lcom/facebook/datasource/c;
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

    const-string v0, "CloseableProducerToDataSourceAdapter#create"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/datasource/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/datasource/e;-><init>(Lcom/facebook/imagepipeline/producers/i0;Lcom/facebook/imagepipeline/producers/q0;Lr0/c;)V

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public B()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected C(Lcom/facebook/common/references/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/datasource/a;->y(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic g()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/e;->B()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/datasource/e;->z(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected bridge synthetic y(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/datasource/e;->C(Lcom/facebook/common/references/a;I)V

    return-void
.end method

.method protected z(Lcom/facebook/common/references/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void
.end method
