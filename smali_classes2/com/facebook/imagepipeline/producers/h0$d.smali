.class Lcom/facebook/imagepipeline/producers/h0$d;
.super Lcom/facebook/imagepipeline/producers/m;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/facebook/imagepipeline/producers/h0;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/h0$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h0$d;->i:Lcom/facebook/imagepipeline/producers/h0;

    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/h0$b;Lcom/facebook/imagepipeline/producers/h0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h0$d;-><init>(Lcom/facebook/imagepipeline/producers/h0;Lcom/facebook/imagepipeline/producers/h0$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/h0$d;->q(Lcom/facebook/common/references/a;I)V

    return-void
.end method

.method protected q(Lcom/facebook/common/references/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    return-void
.end method
