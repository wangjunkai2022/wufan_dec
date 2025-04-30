.class Lcom/facebook/imagepipeline/producers/p0$a$a;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/p0$a;-><init>(Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;ZLcom/facebook/imagepipeline/transcoder/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/p0;

.field final synthetic b:Lcom/facebook/imagepipeline/producers/p0$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/p0$a;Lcom/facebook/imagepipeline/producers/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0$a$a;->b:Lcom/facebook/imagepipeline/producers/p0$a;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/p0$a$a;->a:Lcom/facebook/imagepipeline/producers/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$a$a;->b:Lcom/facebook/imagepipeline/producers/p0$a;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/p0$a;->r(Lcom/facebook/imagepipeline/producers/p0$a;)Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/p0$a$a;->b:Lcom/facebook/imagepipeline/producers/p0$a;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/p0$a;->q(Lcom/facebook/imagepipeline/producers/p0$a;)Z

    move-result v3

    .line 4
    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/transcoder/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Lcom/facebook/imagepipeline/transcoder/c;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/transcoder/c;

    .line 6
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/producers/p0$a;->s(Lcom/facebook/imagepipeline/producers/p0$a;Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imagepipeline/transcoder/c;)V

    return-void
.end method
