.class final Lio/netty/handler/codec/http2/HpackDynamicTable;
.super Ljava/lang/Object;
.source "HpackDynamicTable.java"


# instance fields
.field private capacity:J

.field head:I

.field hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

.field private size:J

.field tail:I


# direct methods
.method constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->setCapacity(J)V

    return-void
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http2/HpackHeaderField;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/HpackHeaderField;->size()I

    move-result v0

    int-to-long v0, v0

    .line 2
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->clear()V

    return-void

    .line 4
    :cond_0
    :goto_0
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    iget-wide v4, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    sub-long/2addr v2, v4

    cmp-long v6, v2, v0

    if-gez v6, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->remove()Lio/netty/handler/codec/http2/HpackHeaderField;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    aput-object p1, v0, v1

    .line 7
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/HpackHeaderField;->size()I

    move-result p1

    int-to-long v0, p1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    .line 8
    iget p1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v0, v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    :cond_2
    return-void
.end method

.method public capacity()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    return-wide v0
.end method

.method public clear()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    const/4 v4, 0x0

    aput-object v4, v1, v0

    .line 3
    array-length v0, v1

    if-ne v3, v0, :cond_0

    .line 4
    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    goto :goto_0

    .line 5
    :cond_1
    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    .line 6
    iput v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    return-void
.end method

.method public getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 2

    if-lez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 2
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v1, p1

    add-int/2addr v0, v1

    aget-object p1, p1, v0

    return-object p1

    .line 4
    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    aget-object p1, p1, v0

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public length()I
    .locals 3

    .line 1
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    array-length v2, v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    sub-int v2, v0, v1

    :goto_0
    return v2
.end method

.method public remove()Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    iget v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackHeaderField;->size()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    .line 3
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    iget v3, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    aput-object v1, v2, v3

    .line 4
    array-length v1, v2

    if-ne v4, v1, :cond_1

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    :cond_1
    return-object v0
.end method

.method public setCapacity(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    const-wide v2, 0xffffffffL

    cmp-long v4, p1, v2

    if-gtz v4, :cond_7

    .line 1
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->clear()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    cmp-long v4, v2, p1

    if-lez v4, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->remove()Lio/netty/handler/codec/http2/HpackHeaderField;

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v2, 0x20

    .line 6
    div-long v4, p1, v2

    long-to-int v5, v4

    .line 7
    rem-long/2addr p1, v2

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 8
    :cond_3
    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    if-eqz p1, :cond_4

    array-length p1, p1

    if-ne p1, v5, :cond_4

    return-void

    .line 9
    :cond_4
    new-array p1, v5, [Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 10
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result p2

    .line 11
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 12
    iget-object v3, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    add-int/lit8 v4, v0, 0x1

    aget-object v0, v3, v0

    .line 13
    aput-object v0, p1, v2

    .line 14
    array-length v0, v3

    if-ne v4, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 15
    :cond_6
    iput v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->tail:I

    add-int/2addr v1, p2

    .line 16
    iput v1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->head:I

    .line 17
    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->hpackHeaderFields:[Lio/netty/handler/codec/http2/HpackHeaderField;

    return-void

    .line 18
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDynamicTable;->size:J

    return-wide v0
.end method
