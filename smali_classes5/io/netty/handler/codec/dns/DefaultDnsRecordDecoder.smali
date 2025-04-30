.class public Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;
.super Ljava/lang/Object;
.source "DefaultDnsRecordDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/dns/DnsRecordDecoder;


# static fields
.field static final ROOT:Ljava/lang/String; = "."


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/dns/DnsCodecUtil;->decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected decodeName0(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final decodeQuestion(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/dns/DnsQuestion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/dns/DnsRecordType;->valueOf(I)Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    .line 4
    new-instance v2, Lio/netty/handler/codec/dns/DefaultDnsQuestion;

    invoke-direct {v2, v0, v1, p1}, Lio/netty/handler/codec/dns/DefaultDnsQuestion;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;I)V

    return-object v2
.end method

.method public final decodeRecord(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/dns/DnsRecord;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            ">(",
            "Lio/netty/buffer/ByteBuf;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 2
    invoke-static {p1}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    sub-int v3, v1, v3

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v4

    .line 6
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v3

    invoke-static {v3}, Lio/netty/handler/codec/dns/DnsRecordType;->valueOf(I)Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v5

    .line 8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v6

    .line 9
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v10

    .line 10
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v11

    sub-int/2addr v1, v11

    if-ge v1, v10, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v4

    :cond_1
    move-object v1, p0

    move v4, v5

    move-wide v5, v6

    move-object v7, p1

    move v8, v11

    move v9, v10

    .line 12
    invoke-virtual/range {v1 .. v9}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeRecord(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJLio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v0

    add-int/2addr v11, v10

    .line 13
    invoke-virtual {p1, v11}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method protected decodeRecord(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJLio/netty/buffer/ByteBuf;II)Lio/netty/handler/codec/dns/DnsRecord;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v2, p2

    move/from16 v0, p7

    .line 14
    sget-object v1, Lio/netty/handler/codec/dns/DnsRecordType;->PTR:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v2, v1, :cond_0

    .line 15
    new-instance v1, Lio/netty/handler/codec/dns/DefaultDnsPtrRecord;

    .line 16
    invoke-virtual {p6}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    add-int v3, v0, p8

    invoke-virtual {v2, v0, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v8, p0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName0(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/codec/dns/DefaultDnsPtrRecord;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    return-object v1

    :cond_0
    move-object v8, p0

    .line 17
    sget-object v1, Lio/netty/handler/codec/dns/DnsRecordType;->CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    if-eq v2, v1, :cond_2

    sget-object v1, Lio/netty/handler/codec/dns/DnsRecordType;->NS:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v7, Lio/netty/handler/codec/dns/DefaultDnsRawRecord;

    .line 19
    invoke-virtual {p6}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    add-int v3, v0, p8

    invoke-virtual {v1, v0, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/dns/DefaultDnsRawRecord;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJLio/netty/buffer/ByteBuf;)V

    return-object v7

    .line 20
    :cond_2
    :goto_0
    new-instance v7, Lio/netty/handler/codec/dns/DefaultDnsRawRecord;

    .line 21
    invoke-virtual {p6}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    add-int v3, v0, p8

    invoke-virtual {v1, v0, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lio/netty/handler/codec/dns/DnsCodecUtil;->decompressDomainName(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/dns/DefaultDnsRawRecord;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;IJLio/netty/buffer/ByteBuf;)V

    return-object v7
.end method
