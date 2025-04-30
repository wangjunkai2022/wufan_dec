.class public Lcom/facebook/imagepipeline/producers/p;
.super Lcom/facebook/imagepipeline/producers/b0;
.source "EncodedCacheKeyMultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/b0<",
        "Landroid/util/Pair<",
        "Lcom/facebook/cache/common/c;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/facebook/imagepipeline/cache/f;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/b0;-><init>(Lcom/facebook/imagepipeline/producers/i0;)V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p;->c:Lcom/facebook/imagepipeline/cache/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/p;->k(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic i(Lcom/facebook/imagepipeline/producers/k0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/p;->l(Lcom/facebook/imagepipeline/producers/k0;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->b(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;

    move-result-object p1

    return-object p1
.end method

.method protected l(Lcom/facebook/imagepipeline/producers/k0;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p;->c:Lcom/facebook/imagepipeline/cache/f;

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->c()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/f;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->g()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
