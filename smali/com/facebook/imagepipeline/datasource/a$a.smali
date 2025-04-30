.class Lcom/facebook/imagepipeline/datasource/a$a;
.super Lcom/facebook/imagepipeline/producers/b;
.source "AbstractProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/datasource/a;->v()Lcom/facebook/imagepipeline/producers/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic h:Lcom/facebook/imagepipeline/datasource/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/datasource/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/a;->t(Lcom/facebook/imagepipeline/datasource/a;)V

    return-void
.end method

.method protected g(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/a;->s(Lcom/facebook/imagepipeline/datasource/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected h(Ljava/lang/Object;I)V
    .locals 1
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
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/datasource/a;->y(Ljava/lang/Object;I)V

    return-void
.end method

.method protected i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/a$a;->h:Lcom/facebook/imagepipeline/datasource/a;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/a;->u(Lcom/facebook/imagepipeline/datasource/a;F)Z

    return-void
.end method
