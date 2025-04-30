.class Lcom/facebook/imagepipeline/producers/a$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "AddImageTransformMetaDataProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/a;
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


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/a$b;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/a$b;->q(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method protected q(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->w(Lcom/facebook/imagepipeline/image/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->z()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    return-void
.end method
