.class Lcom/facebook/imagepipeline/producers/l$c$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/l$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/l;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/imagepipeline/producers/l$c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/l$c;Lcom/facebook/imagepipeline/producers/l;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c$b;->c:Lcom/facebook/imagepipeline/producers/l$c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/l$c$b;->a:Lcom/facebook/imagepipeline/producers/l;

    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/l$c$b;->b:Z

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c$b;->c:Lcom/facebook/imagepipeline/producers/l$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/l$c;->r(Lcom/facebook/imagepipeline/producers/l$c;)Lcom/facebook/imagepipeline/producers/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/k0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c$b;->c:Lcom/facebook/imagepipeline/producers/l$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/l$c;->s(Lcom/facebook/imagepipeline/producers/l$c;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->h()Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/l$c$b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c$b;->c:Lcom/facebook/imagepipeline/producers/l$c;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/l$c;->t(Lcom/facebook/imagepipeline/producers/l$c;)V

    :cond_0
    return-void
.end method
