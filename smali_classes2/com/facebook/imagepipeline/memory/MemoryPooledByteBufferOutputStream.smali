.class public Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
.super Lcom/facebook/common/memory/i;
.source "MemoryPooledByteBufferOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/u;

.field private b:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/memory/t;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/u;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/u;->C()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lcom/facebook/imagepipeline/memory/u;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/memory/u;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/facebook/common/memory/i;-><init>()V

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/u;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->a:Lcom/facebook/imagepipeline/memory/u;

    .line 5
    iput v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    .line 6
    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/memory/BasePool;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/facebook/common/references/a;->q(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->o(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->e()Lcom/facebook/imagepipeline/memory/w;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    .line 4
    invoke-super {p0}, Lcom/facebook/common/memory/i;->close()V

    return-void
.end method

.method d(I)V
    .locals 3
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/t;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/t;->getSize()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->a:Lcom/facebook/imagepipeline/memory/u;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/t;

    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/t;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v2, v1}, Lcom/facebook/imagepipeline/memory/t;->o(ILcom/facebook/imagepipeline/memory/t;II)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->a:Lcom/facebook/imagepipeline/memory/u;

    invoke-static {p1, v0}, Lcom/facebook/common/references/a;->q(Ljava/lang/Object;Lcom/facebook/common/references/c;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    return-void
.end method

.method public e()Lcom/facebook/imagepipeline/memory/w;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()V

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/memory/w;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/w;-><init>(Lcom/facebook/common/references/a;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    return v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b()V

    .line 4
    iget v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->d(I)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->b:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/t;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/t;->n(I[BII)I

    .line 6
    iget p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->c:I

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionStart="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionLength="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
