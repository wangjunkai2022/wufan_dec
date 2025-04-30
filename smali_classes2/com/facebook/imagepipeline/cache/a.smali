.class public Lcom/facebook/imagepipeline/cache/a;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/common/internal/k;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/cache/h;
    .locals 1
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
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/cache/d;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/d;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/facebook/imagepipeline/cache/a;->b(Lcom/facebook/common/internal/k;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/h$c;)Lcom/facebook/imagepipeline/cache/h;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/facebook/common/internal/k;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/h$c;)Lcom/facebook/imagepipeline/cache/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            "Lcom/facebook/imagepipeline/cache/h$c;",
            ")",
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/cache/a$a;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/a$a;-><init>()V

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/cache/h;

    invoke-direct {v1, v0, p2, p0}, Lcom/facebook/imagepipeline/cache/h;-><init>(Lcom/facebook/imagepipeline/cache/v;Lcom/facebook/imagepipeline/cache/h$c;Lcom/facebook/common/internal/k;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/facebook/common/memory/c;->a(Lcom/facebook/common/memory/b;)V

    return-object v1
.end method
