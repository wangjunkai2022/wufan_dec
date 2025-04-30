.class public abstract Lcom/facebook/imagepipeline/datasource/d;
.super Lcom/facebook/datasource/b;
.source "BaseListBitmapDataSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/b<",
        "Ljava/util/List<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/b;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/facebook/datasource/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/c;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/d;->g(Ljava/util/List;)V

    return-void

    .line 4
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/common/references/a;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/facebook/imagepipeline/image/b;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/image/b;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/image/b;->g()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/datasource/d;->g(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    .line 11
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/a;

    .line 13
    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    goto :goto_2

    .line 14
    :cond_5
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method protected abstract g(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method
