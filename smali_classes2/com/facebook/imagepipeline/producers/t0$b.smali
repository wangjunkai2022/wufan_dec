.class Lcom/facebook/imagepipeline/producers/t0$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/t0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/r0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/t0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/t0;Lcom/facebook/imagepipeline/producers/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/t0$b;->b:Lcom/facebook/imagepipeline/producers/t0;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/t0$b;->a:Lcom/facebook/imagepipeline/producers/r0;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t0$b;->a:Lcom/facebook/imagepipeline/producers/r0;

    invoke-virtual {v0}, Lcom/facebook/common/executors/h;->a()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/t0$b;->b:Lcom/facebook/imagepipeline/producers/t0;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/t0;->d(Lcom/facebook/imagepipeline/producers/t0;)Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/t0$b;->a:Lcom/facebook/imagepipeline/producers/r0;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/u0;->d(Ljava/lang/Runnable;)V

    return-void
.end method
