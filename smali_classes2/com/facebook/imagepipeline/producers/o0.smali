.class public Lcom/facebook/imagepipeline/producers/o0;
.super Ljava/lang/Object;
.source "RemoveImageTransformMetaDataProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/o0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/o0;->a:Lcom/facebook/imagepipeline/producers/i0;

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/o0;->a:Lcom/facebook/imagepipeline/producers/i0;

    new-instance v1, Lcom/facebook/imagepipeline/producers/o0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/imagepipeline/producers/o0$b;-><init>(Lcom/facebook/imagepipeline/producers/o0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/o0$a;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method
