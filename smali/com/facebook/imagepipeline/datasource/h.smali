.class public final Lcom/facebook/imagepipeline/datasource/h;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "SettableDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "Lcom/facebook/common/references/a<",
        "TT;>;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    return-void
.end method

.method public static t()Lcom/facebook/imagepipeline/datasource/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/imagepipeline/datasource/h<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/datasource/h;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/datasource/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic g()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/h;->u()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/datasource/h;->s(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method public o(F)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->o(F)Z

    move-result p1

    return p1
.end method

.method protected s(Lcom/facebook/common/references/a;)V
    .locals 0
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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

.method public u()Lcom/facebook/common/references/a;
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

.method public v(Lcom/facebook/common/references/a;)Z
    .locals 1
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1, v0}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->m(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
