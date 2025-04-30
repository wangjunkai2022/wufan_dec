.class public Lcom/mob/tools/network/ByteArrayPart;
.super Lcom/mob/tools/network/HTTPPart;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/network/HTTPPart;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v2

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public append([B)Lcom/mob/tools/network/ByteArrayPart;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 4
    iget-object p1, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    return-object p0
.end method

.method protected b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->a:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
