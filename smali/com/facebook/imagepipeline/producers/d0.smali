.class public interface abstract Lcom/facebook/imagepipeline/producers/d0;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FETCH_STATE:",
        "Lcom/facebook/imagepipeline/producers/r;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/facebook/imagepipeline/producers/r;Lcom/facebook/imagepipeline/producers/d0$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;",
            "Lcom/facebook/imagepipeline/producers/d0$a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/facebook/imagepipeline/producers/r;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;I)V"
        }
    .end annotation
.end method

.method public abstract c(Lcom/facebook/imagepipeline/producers/r;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;)Z"
        }
    .end annotation
.end method

.method public abstract d(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract e(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)Lcom/facebook/imagepipeline/producers/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")TFETCH_STATE;"
        }
    .end annotation
.end method
