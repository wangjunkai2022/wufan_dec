.class public Lcom/facebook/imagepipeline/producers/g;
.super Lcom/facebook/imagepipeline/producers/b0;
.source "BitmapMemoryCacheKeyMultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/b0<",
        "Landroid/util/Pair<",
        "Lcom/facebook/cache/common/c;",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        ">;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
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
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/g;->c:Lcom/facebook/imagepipeline/cache/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/g;->k(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic i(Lcom/facebook/imagepipeline/producers/k0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/g;->l(Lcom/facebook/imagepipeline/producers/k0;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

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
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/g;->c:Lcom/facebook/imagepipeline/cache/f;

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->c()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/k0;->g()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
