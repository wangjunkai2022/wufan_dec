.class public Lnet/lingala/zip4j/io/d;
.super Lnet/lingala/zip4j/io/c;
.source "DeflaterOutputStream.java"


# instance fields
.field private n:[B

.field protected o:Ljava/util/zip/Deflater;

.field private p:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Le3/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/io/c;-><init>(Ljava/io/OutputStream;Le3/o;)V

    .line 2
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/io/d;->n:[B

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/d;->p:Z

    return-void
.end method

.method private t()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lnet/lingala/zip4j/io/d;->n:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ge v0, v1, :cond_1

    sub-int/2addr v1, v0

    .line 3
    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/io/c;->e(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x4

    .line 4
    :cond_2
    iget-boolean v1, p0, Lnet/lingala/zip4j/io/d;->p:Z

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/io/d;->n:[B

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-super {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/c;->write([BII)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/d;->p:Z

    goto :goto_0

    .line 7
    :cond_3
    iget-object v1, p0, Lnet/lingala/zip4j/io/d;->n:[B

    invoke-super {p0, v1, v3, v0}, Lnet/lingala/zip4j/io/c;->write([BII)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 4
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lnet/lingala/zip4j/io/d;->t()V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/d;->p:Z

    .line 7
    :cond_2
    invoke-super {p0}, Lnet/lingala/zip4j/io/c;->a()V

    return-void
.end method

.method public h()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/lingala/zip4j/io/c;->h()V

    return-void
.end method

.method public q(Ljava/io/File;Le3/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lingala/zip4j/io/c;->q(Ljava/io/File;Le3/p;)V

    .line 2
    invoke-virtual {p2}, Le3/p;->c()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->reset()V

    .line 4
    invoke-virtual {p2}, Le3/p;->b()I

    move-result p1

    if-ltz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Le3/p;->b()I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Le3/p;->b()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 7
    :cond_1
    iget-object p1, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Le3/p;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setLevel(I)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid compression level for deflater. compression level should be in the range of 0-9"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/d;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/d;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->c()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/c;->write([BII)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 6
    :goto_0
    iget-object p1, p0, Lnet/lingala/zip4j/io/d;->o:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/d;->t()V

    goto :goto_0
.end method
