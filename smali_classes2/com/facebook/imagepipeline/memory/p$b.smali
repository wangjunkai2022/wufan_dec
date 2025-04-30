.class Lcom/facebook/imagepipeline/memory/p$b;
.super Lcom/facebook/imagepipeline/memory/q;
.source "FlexByteArrayPool.java"


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/e0;Lcom/facebook/imagepipeline/memory/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/q;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/e0;Lcom/facebook/imagepipeline/memory/f0;)V

    return-void
.end method


# virtual methods
.method t(I)Lcom/facebook/imagepipeline/memory/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/f<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/a0;

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/q;->k(I)I

    move-result p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Lcom/facebook/imagepipeline/memory/e0;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/e0;->h:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/a0;-><init>(III)V

    return-object v0
.end method
