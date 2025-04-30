.class public abstract Lcom/facebook/imagepipeline/producers/m;
.super Lcom/facebook/imagepipeline/producers/b;
.source "DelegatingConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/producers/b<",
        "TI;>;"
    }
.end annotation


# instance fields
.field private final h:Lcom/facebook/imagepipeline/producers/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m;->h:Lcom/facebook/imagepipeline/producers/Consumer;

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->h:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    return-void
.end method

.method protected g(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->h:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->h:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    return-void
.end method

.method public p()Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/m;->h:Lcom/facebook/imagepipeline/producers/Consumer;

    return-object v0
.end method
