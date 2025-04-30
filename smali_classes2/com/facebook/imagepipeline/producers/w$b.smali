.class Lcom/facebook/imagepipeline/producers/w$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "LocalExifThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/w;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/r0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/w;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w$b;->b:Lcom/facebook/imagepipeline/producers/w;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/w$b;->a:Lcom/facebook/imagepipeline/producers/r0;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w$b;->a:Lcom/facebook/imagepipeline/producers/r0;

    invoke-virtual {v0}, Lcom/facebook/common/executors/h;->a()V

    return-void
.end method
