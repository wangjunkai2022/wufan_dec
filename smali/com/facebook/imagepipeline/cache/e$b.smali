.class Lcom/facebook/imagepipeline/cache/e$b;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/e;->q(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/cache/common/c;

.field final synthetic c:Lcom/facebook/imagepipeline/cache/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/e;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/e$b;->c:Lcom/facebook/imagepipeline/cache/e;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/e$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/e$b;->b:Lcom/facebook/cache/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/imagepipeline/image/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BufferedDiskCache#getAsync"

    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$b;->c:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/e;->b(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e$b;->b:Lcom/facebook/cache/common/c;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/u;->c(Lcom/facebook/cache/common/c;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/cache/e;->c()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/e$b;->b:Lcom/facebook/cache/common/c;

    invoke-interface {v3}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e$b;->c:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/e;->d(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/n;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$b;->b:Lcom/facebook/cache/common/c;

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/cache/n;->f(Lcom/facebook/cache/common/c;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/facebook/imagepipeline/cache/e;->c()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$b;->b:Lcom/facebook/cache/common/c;

    invoke-interface {v2}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$b;->c:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/e;->d(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/n;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$b;->c:Lcom/facebook/imagepipeline/cache/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e$b;->b:Lcom/facebook/cache/common/c;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/e;->e(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/facebook/common/references/a;->p(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    new-instance v1, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 14
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_3

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object v0

    .line 17
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/facebook/imagepipeline/cache/e;->c()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v2}, Lcom/facebook/common/logging/a;->U(Ljava/lang/Class;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->close()V

    .line 19
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_0
    move-exception v1

    .line 20
    :try_start_6
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 21
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    nop

    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-object v0

    .line 24
    :cond_5
    :try_start_7
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    .line 25
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 27
    :cond_6
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/e$b;->call()Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    return-object v0
.end method
