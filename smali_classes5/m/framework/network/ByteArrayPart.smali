.class public Lm/framework/network/ByteArrayPart;
.super Lm/framework/network/HTTPPart;
.source "ByteArrayPart.java"


# instance fields
.field private buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/framework/network/HTTPPart;-><init>()V

    return-void
.end method


# virtual methods
.method public append([B)Lm/framework/network/ByteArrayPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    .line 7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method protected length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    invoke-static {v0}, Lm/framework/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
