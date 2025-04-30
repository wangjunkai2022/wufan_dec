.class public Lcom/facebook/imagepipeline/image/a;
.super Lcom/facebook/imagepipeline/image/c;
.source "CloseableAnimatedImage.java"


# instance fields
.field private b:Lcom/facebook/imagepipeline/animated/base/f;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->e()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->e()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized g()Lcom/facebook/imagepipeline/animated/base/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->e()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->e()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Lcom/facebook/imagepipeline/animated/base/f;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->b:Lcom/facebook/imagepipeline/animated/base/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
