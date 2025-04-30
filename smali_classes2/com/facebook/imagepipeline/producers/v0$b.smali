.class Lcom/facebook/imagepipeline/producers/v0$b;
.super Lcom/facebook/imagepipeline/producers/m;
.source "ThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/facebook/imagepipeline/producers/v0;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/v0;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/v0$b;->i:Lcom/facebook/imagepipeline/producers/v0;

    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/v0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/v0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/v0$b;-><init>(Lcom/facebook/imagepipeline/producers/v0;Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/v0$b;->i:Lcom/facebook/imagepipeline/producers/v0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/v0$b;->i:Lcom/facebook/imagepipeline/producers/v0;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/v0;->c(Lcom/facebook/imagepipeline/producers/v0;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/v0$b;->i:Lcom/facebook/imagepipeline/producers/v0;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/v0;->d(Lcom/facebook/imagepipeline/producers/v0;)I

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/v0$b;->i:Lcom/facebook/imagepipeline/producers/v0;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/v0;->e(Lcom/facebook/imagepipeline/producers/v0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/imagepipeline/producers/v0$b$a;

    invoke-direct {v2, p0, v1}, Lcom/facebook/imagepipeline/producers/v0$b$a;-><init>(Lcom/facebook/imagepipeline/producers/v0$b;Landroid/util/Pair;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/v0$b;->q()V

    return-void
.end method

.method protected g(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/v0$b;->q()V

    return-void
.end method

.method protected h(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->p()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V

    .line 2
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/v0$b;->q()V

    :cond_0
    return-void
.end method
