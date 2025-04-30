.class public Lcom/facebook/common/memory/j;
.super Ljava/lang/Object;
.source "PooledByteStreams.java"


# static fields
.field private static final c:I = 0x4000


# instance fields
.field private final a:I

.field private final b:Lcom/facebook/common/memory/a;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/a;)V
    .locals 1

    const/16 v0, 0x4000

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/facebook/common/memory/j;-><init>(Lcom/facebook/common/memory/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/memory/a;I)V
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 4
    iput p2, p0, Lcom/facebook/common/memory/j;->a:I

    .line 5
    iput-object p1, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    iget v1, p0, Lcom/facebook/common/memory/j;->a:I

    invoke-interface {v0, v1}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-wide/16 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/facebook/common/memory/j;->a:I

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 3
    iget-object p1, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    invoke-interface {p1, v0}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    return-wide v1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    invoke-interface {p2, v0}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 6
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public b(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-static {v3}, Lcom/facebook/common/internal/h;->o(Z)V

    .line 2
    iget-object v3, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    iget v4, p0, Lcom/facebook/common/memory/j;->a:I

    invoke-interface {v3, v4}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :goto_1
    cmp-long v4, v0, p3

    if-gez v4, :cond_1

    .line 3
    :try_start_0
    iget v4, p0, Lcom/facebook/common/memory/j;->a:I

    int-to-long v4, v4

    sub-long v6, p3, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {p1, v3, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    invoke-interface {p1, v3}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    return-wide v0

    .line 5
    :cond_2
    :try_start_1
    invoke-virtual {p2, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/facebook/common/memory/j;->b:Lcom/facebook/common/memory/a;

    invoke-interface {p2, v3}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 7
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
