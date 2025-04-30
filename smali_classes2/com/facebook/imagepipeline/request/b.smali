.class public abstract Lcom/facebook/imagepipeline/request/b;
.super Lcom/facebook/imagepipeline/request/a;
.source "BaseRepeatedPostProcessor.java"

# interfaces
.implements Lcom/facebook/imagepipeline/request/e;


# instance fields
.field private b:Lcom/facebook/imagepipeline/request/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/a;-><init>()V

    return-void
.end method

.method private declared-synchronized g()Lcom/facebook/imagepipeline/request/f;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/b;->b:Lcom/facebook/imagepipeline/request/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized b(Lcom/facebook/imagepipeline/request/f;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/b;->b:Lcom/facebook/imagepipeline/request/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public update()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/b;->g()Lcom/facebook/imagepipeline/request/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/f;->update()V

    :cond_0
    return-void
.end method
