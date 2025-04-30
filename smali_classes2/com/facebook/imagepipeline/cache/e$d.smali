.class Lcom/facebook/imagepipeline/cache/e$d;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/e;->t(Lcom/facebook/cache/common/c;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/common/c;

.field final synthetic b:Lcom/facebook/imagepipeline/cache/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/cache/common/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/e$d;->b:Lcom/facebook/imagepipeline/cache/e;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/e$d;->a:Lcom/facebook/cache/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/e$d;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#remove"

    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$d;->b:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/e;->b(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e$d;->a:Lcom/facebook/cache/common/c;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/u;->g(Lcom/facebook/cache/common/c;)Z

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$d;->b:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/e;->g(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e$d;->a:Lcom/facebook/cache/common/c;

    invoke-interface {v0, v1}, Lcom/facebook/cache/disk/h;->h(Lcom/facebook/cache/common/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 10
    :cond_2
    throw v0
.end method
