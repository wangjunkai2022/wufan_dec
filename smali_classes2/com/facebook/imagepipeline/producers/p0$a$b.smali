.class Lcom/facebook/imagepipeline/producers/p0$a$b;
.super Lcom/facebook/imagepipeline/producers/e;
.source "ResizeAndRotateProducer.java"


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

.field final synthetic b:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/p0$a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/p0$a;Lcom/facebook/imagepipeline/producers/p0;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/p0$a$b;->c:Lcom/facebook/imagepipeline/producers/p0$a;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/p0$a$b;->a:Lcom/facebook/imagepipeline/producers/p0;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/p0$a$b;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$a$b;->c:Lcom/facebook/imagepipeline/producers/p0$a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/p0$a;->t(Lcom/facebook/imagepipeline/producers/p0$a;)Lcom/facebook/imagepipeline/producers/k0;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/k0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$a$b;->c:Lcom/facebook/imagepipeline/producers/p0$a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/p0$a;->u(Lcom/facebook/imagepipeline/producers/p0$a;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->h()Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$a$b;->c:Lcom/facebook/imagepipeline/producers/p0$a;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/p0$a;->u(Lcom/facebook/imagepipeline/producers/p0$a;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->c()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$a$b;->c:Lcom/facebook/imagepipeline/producers/p0$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/p0$a;->v(Lcom/facebook/imagepipeline/producers/p0$a;Z)Z

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/p0$a$b;->b:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    return-void
.end method
