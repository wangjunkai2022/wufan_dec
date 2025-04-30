.class public abstract Lcom/facebook/imagepipeline/datasource/c;
.super Lcom/facebook/datasource/b;
.source "BaseBitmapReferenceDataSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/b<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)V"
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

    check-cast p1, Lcom/facebook/common/references/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/imagepipeline/image/d;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/d;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/d;->h()Lcom/facebook/common/references/a;

    move-result-object v0

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/c;->g(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 7
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 9
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 10
    throw v1
.end method

.method protected abstract g(Lcom/facebook/common/references/a;)V
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method
