.class public Lcom/facebook/imagepipeline/producers/f;
.super Lcom/facebook/imagepipeline/producers/h;
.source "BitmapMemoryCacheGetProducer.java"


# static fields
.field public static final f:Ljava/lang/String; = "BitmapMemoryCacheGetProducer"


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/p<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/h;-><init>(Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/i0;)V

    return-void
.end method


# virtual methods
.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapMemoryCacheGetProducer"

    return-object v0
.end method

.method protected e(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/c;Z)Lcom/facebook/imagepipeline/producers/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/cache/common/c;",
            "Z)",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    return-object p1
.end method
