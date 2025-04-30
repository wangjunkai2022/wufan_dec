.class public Lcom/facebook/imagepipeline/memory/x;
.super Ljava/lang/Object;
.source "MemoryPooledByteBufferFactory.java"

# interfaces
.implements Lcom/facebook/common/memory/g;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/memory/j;

.field private final b:Lcom/facebook/imagepipeline/memory/u;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/u;Lcom/facebook/common/memory/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/common/memory/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->i(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/memory/x;->j(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Lcom/facebook/common/memory/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/x;->l()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d([B)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->k([B)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(I)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->h(I)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(I)Lcom/facebook/common/memory/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->m(I)Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    move-result-object p1

    return-object p1
.end method

.method g(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/w;
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/x;->a:Lcom/facebook/common/memory/j;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/common/memory/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->e()Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Lcom/facebook/imagepipeline/memory/w;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-static {v0, v1}, Lcom/facebook/common/references/a;->q(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/memory/w;

    invoke-direct {v1, v0, p1}, Lcom/facebook/imagepipeline/memory/w;-><init>(Lcom/facebook/common/references/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 5
    throw p1
.end method

.method public i(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/w;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/u;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/x;->g(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 4
    throw p1
.end method

.method public j(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/w;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/u;I)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/x;->g(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 4
    throw p1
.end method

.method public k([B)Lcom/facebook/imagepipeline/memory/w;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/u;I)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->write([BII)V

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->e()Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->close()V

    .line 7
    throw p1
.end method

.method public l()Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/u;)V

    return-object v0
.end method

.method public m(I)Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/u;I)V

    return-object v0
.end method
