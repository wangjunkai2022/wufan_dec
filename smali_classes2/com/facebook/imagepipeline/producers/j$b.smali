.class Lcom/facebook/imagepipeline/producers/j$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "BranchOnSeparateImagesProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/j;
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
.field private i:Lcom/facebook/imagepipeline/producers/k0;

.field final synthetic j:Lcom/facebook/imagepipeline/producers/j;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
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

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/j$b;->j:Lcom/facebook/imagepipeline/producers/j;

    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/j$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/j$b;-><init>(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method


# virtual methods
.method protected g(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/j$b;->j:Lcom/facebook/imagepipeline/producers/j;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/j;->c(Lcom/facebook/imagepipeline/producers/j;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/j$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method

.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/j$b;->q(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method

.method protected q(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/d;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/facebook/imagepipeline/producers/y0;->c(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/d;)Z

    move-result v2

    if-eqz p1, :cond_2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/b;->n(II)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 8
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 9
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/j$b;->j:Lcom/facebook/imagepipeline/producers/j;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/j;->c(Lcom/facebook/imagepipeline/producers/j;)Lcom/facebook/imagepipeline/producers/i0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/j$b;->i:Lcom/facebook/imagepipeline/producers/k0;

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/i0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V

    :cond_3
    return-void
.end method
