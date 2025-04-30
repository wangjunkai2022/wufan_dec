.class Lcom/facebook/imagepipeline/producers/s0$a;
.super Lcom/facebook/imagepipeline/producers/m;
.source "SwallowResultProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/s0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/facebook/imagepipeline/producers/s0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/s0$a;->i:Lcom/facebook/imagepipeline/producers/s0;

    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method


# virtual methods
.method protected h(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
