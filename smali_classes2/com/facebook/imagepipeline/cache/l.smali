.class public Lcom/facebook/imagepipeline/cache/l;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/common/internal/k;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/cache/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            ")",
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/cache/l$a;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/l$a;-><init>()V

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/cache/s;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/s;-><init>()V

    .line 3
    new-instance v2, Lcom/facebook/imagepipeline/cache/h;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/imagepipeline/cache/h;-><init>(Lcom/facebook/imagepipeline/cache/v;Lcom/facebook/imagepipeline/cache/h$c;Lcom/facebook/common/internal/k;)V

    .line 4
    invoke-interface {p1, v2}, Lcom/facebook/common/memory/c;->a(Lcom/facebook/common/memory/b;)V

    return-object v2
.end method
