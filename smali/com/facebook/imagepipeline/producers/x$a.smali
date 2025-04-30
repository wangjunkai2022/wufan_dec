.class Lcom/facebook/imagepipeline/producers/x$a;
.super Lcom/facebook/imagepipeline/producers/r0;
.source "LocalFetchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/x;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
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
.field final synthetic k:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic l:Lcom/facebook/imagepipeline/producers/m0;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Lcom/facebook/imagepipeline/producers/x;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/x;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/x$a;->n:Lcom/facebook/imagepipeline/producers/x;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/x$a;->k:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/x$a;->l:Lcom/facebook/imagepipeline/producers/m0;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/x$a;->m:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/r0;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/x$a;->j(Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/x$a;->k()Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    return-object v0
.end method

.method protected j(Lcom/facebook/imagepipeline/image/e;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method protected k()Lcom/facebook/imagepipeline/image/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x$a;->n:Lcom/facebook/imagepipeline/producers/x;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x$a;->k:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/x;->d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/x$a;->l:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x$a;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/x$a;->n:Lcom/facebook/imagepipeline/producers/x;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/x;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/m0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->z()V

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/x$a;->l:Lcom/facebook/imagepipeline/producers/m0;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/x$a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/x$a;->n:Lcom/facebook/imagepipeline/producers/x;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/x;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/m0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
