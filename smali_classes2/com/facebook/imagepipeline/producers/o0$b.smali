.class Lcom/facebook/imagepipeline/producers/o0$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "RemoveImageTransformMetaDataProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/facebook/imagepipeline/producers/o0;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0$b;->i:Lcom/facebook/imagepipeline/producers/o0;

    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/o0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o0$b;-><init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/o0$b;->q(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method protected q(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->y(Lcom/facebook/imagepipeline/image/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->g()Lcom/facebook/common/references/a;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 5
    throw p1
.end method
