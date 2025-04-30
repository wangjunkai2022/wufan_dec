.class Lcom/facebook/imagepipeline/producers/a0$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/a0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/r0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/a0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/a0;Lcom/facebook/imagepipeline/producers/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/a0$b;->b:Lcom/facebook/imagepipeline/producers/a0;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/a0$b;->a:Lcom/facebook/imagepipeline/producers/r0;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/a0$b;->a:Lcom/facebook/imagepipeline/producers/r0;

    invoke-virtual {v0}, Lcom/facebook/common/executors/h;->a()V

    return-void
.end method
