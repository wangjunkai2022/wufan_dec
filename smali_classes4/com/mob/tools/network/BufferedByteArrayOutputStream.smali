.class public Lcom/mob/tools/network/BufferedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    return v0
.end method

.method public switchBuffer([B)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v1, v0

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    sub-int/2addr v1, v2

    if-lt v1, p2, :cond_0

    .line 3
    invoke-virtual {p1, v0, v2, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr p1, p2

    iput p1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    goto :goto_0

    .line 5
    :cond_0
    new-array p2, p2, [B

    .line 6
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_0
    return-void
.end method
