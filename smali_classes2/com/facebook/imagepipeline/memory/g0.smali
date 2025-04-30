.class public Lcom/facebook/imagepipeline/memory/g0;
.super Ljava/lang/Object;
.source "SharedByteArray.java"

# interfaces
.implements Lcom/facebook/common/memory/b;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field final a:I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final b:I
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final c:Lcom/facebook/common/references/b;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/b<",
            "[B>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Semaphore;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private final e:Lcom/facebook/common/references/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/c<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/e0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p2, Lcom/facebook/imagepipeline/memory/e0;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 4
    iget v0, p2, Lcom/facebook/imagepipeline/memory/e0;->e:I

    iget v3, p2, Lcom/facebook/imagepipeline/memory/e0;->d:I

    if-lt v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 5
    iget v0, p2, Lcom/facebook/imagepipeline/memory/e0;->e:I

    iput v0, p0, Lcom/facebook/imagepipeline/memory/g0;->b:I

    .line 6
    iget p2, p2, Lcom/facebook/imagepipeline/memory/e0;->d:I

    iput p2, p0, Lcom/facebook/imagepipeline/memory/g0;->a:I

    .line 7
    new-instance p2, Lcom/facebook/common/references/b;

    invoke-direct {p2}, Lcom/facebook/common/references/b;-><init>()V

    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/g0;->c:Lcom/facebook/common/references/b;

    .line 8
    new-instance p2, Ljava/util/concurrent/Semaphore;

    invoke-direct {p2, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/g0;->d:Ljava/util/concurrent/Semaphore;

    .line 9
    new-instance p2, Lcom/facebook/imagepipeline/memory/g0$a;

    invoke-direct {p2, p0}, Lcom/facebook/imagepipeline/memory/g0$a;-><init>(Lcom/facebook/imagepipeline/memory/g0;)V

    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/g0;->e:Lcom/facebook/common/references/c;

    .line 10
    invoke-interface {p1, p0}, Lcom/facebook/common/memory/c;->a(Lcom/facebook/common/memory/b;)V

    return-void
.end method

.method private declared-synchronized a(I)[B
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/g0;->c:Lcom/facebook/common/references/b;

    invoke-virtual {v0}, Lcom/facebook/common/references/b;->a()V

    .line 2
    new-array p1, p1, [B

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/g0;->c:Lcom/facebook/common/references/b;

    invoke-virtual {v0, p1}, Lcom/facebook/common/references/b;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e(I)[B
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/g0;->c(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/g0;->c:Lcom/facebook/common/references/b;

    invoke-virtual {v0}, Lcom/facebook/common/references/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/g0;->a(I)[B

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public b(I)Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Size must be greater than zero"

    .line 1
    invoke-static {v2, v3}, Lcom/facebook/common/internal/h;->e(ZLjava/lang/Object;)V

    .line 2
    iget v2, p0, Lcom/facebook/imagepipeline/memory/g0;->b:I

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Requested size is too big"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/h;->e(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/g0;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/g0;->e(I)[B

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/g0;->e:Lcom/facebook/common/references/c;

    invoke-static {p1, v0}, Lcom/facebook/common/references/a;->q(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/g0;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 7
    invoke-static {p1}, Lcom/facebook/common/internal/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method c(I)I
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/g0;->a:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public d(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/g0;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/g0;->c:Lcom/facebook/common/references/b;

    invoke-virtual {p1}, Lcom/facebook/common/references/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/g0;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/g0;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 4
    throw p1
.end method
