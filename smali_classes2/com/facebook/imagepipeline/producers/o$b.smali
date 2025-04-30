.class Lcom/facebook/imagepipeline/producers/o$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "DiskCacheWriteProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lcom/facebook/imagepipeline/producers/k0;

.field private final j:Lcom/facebook/imagepipeline/cache/e;

.field private final k:Lcom/facebook/imagepipeline/cache/e;

.field private final l:Lcom/facebook/imagepipeline/cache/f;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/e;",
            "Lcom/facebook/imagepipeline/cache/f;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/o$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/o$b;->j:Lcom/facebook/imagepipeline/cache/e;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/o$b;->k:Lcom/facebook/imagepipeline/cache/e;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/o$b;->l:Lcom/facebook/imagepipeline/cache/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/o$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/facebook/imagepipeline/producers/o$b;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o$b;->q(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method public q(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    .line 2
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->l(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/o$b;->l:Lcom/facebook/imagepipeline/cache/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/o$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    .line 6
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/k0;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/f;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v2, :cond_1

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o$b;->k:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/e;->r(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o$b;->j:Lcom/facebook/imagepipeline/cache/e;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/e;->r(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    return-void

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    return-void
.end method
