.class Lcom/facebook/imagepipeline/producers/z0$a;
.super Lcom/facebook/imagepipeline/producers/r0;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/z0;->i(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/r0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic k:Lcom/facebook/imagepipeline/image/e;

.field final synthetic l:Lcom/facebook/imagepipeline/producers/z0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z0$a;->l:Lcom/facebook/imagepipeline/producers/z0;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/z0$a;->k:Lcom/facebook/imagepipeline/image/e;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/r0;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/z0$a;->j(Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/z0$a;->k()Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$a;->k:Lcom/facebook/imagepipeline/image/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 2
    invoke-super {p0}, Lcom/facebook/imagepipeline/producers/r0;->d()V

    return-void
.end method

.method protected e(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$a;->k:Lcom/facebook/imagepipeline/image/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 2
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/r0;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/z0$a;->l(Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method protected j(Lcom/facebook/imagepipeline/image/e;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method protected k()Lcom/facebook/imagepipeline/image/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$a;->l:Lcom/facebook/imagepipeline/producers/z0;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/z0;->e(Lcom/facebook/imagepipeline/producers/z0;)Lcom/facebook/common/memory/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/common/memory/g;->c()Lcom/facebook/common/memory/i;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/z0$a;->k:Lcom/facebook/imagepipeline/image/e;

    invoke-static {v1, v0}, Lcom/facebook/imagepipeline/producers/z0;->f(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/common/memory/i;)V

    .line 3
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->a()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/references/a;->p(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance v2, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V

    .line 5
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/z0$a;->k:Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/image/e;->e(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 8
    :try_start_3
    invoke-static {v1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 9
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 10
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->close()V

    .line 11
    throw v1
.end method

.method protected l(Lcom/facebook/imagepipeline/image/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$a;->k:Lcom/facebook/imagepipeline/image/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 2
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/r0;->f(Ljava/lang/Object;)V

    return-void
.end method
