.class Lcom/facebook/imagepipeline/producers/z0$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field private j:Lcom/facebook/common/util/TriState;

.field final synthetic k:Lcom/facebook/imagepipeline/producers/z0;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z0$b;->k:Lcom/facebook/imagepipeline/producers/z0;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/z0$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    .line 4
    sget-object p1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z0$b;->j:Lcom/facebook/common/util/TriState;

    return-void
.end method


# virtual methods
.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/z0$b;->q(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method protected q(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->j:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/z0;->c(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->j:Lcom/facebook/common/util/TriState;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->j:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    return-void

    .line 5
    :cond_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z0$b;->j:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 7
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/z0$b;->k:Lcom/facebook/imagepipeline/producers/z0;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/z0$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    invoke-static {p2, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/z0;->d(Lcom/facebook/imagepipeline/producers/z0;Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    :cond_3
    :goto_0
    return-void
.end method
