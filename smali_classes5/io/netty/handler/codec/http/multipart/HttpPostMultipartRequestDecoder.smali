.class public Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;
.super Ljava/lang/Object;
.source "HttpPostMultipartRequestDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;


# static fields
.field private static final FILENAME_ENCODED:Ljava/lang/String;


# instance fields
.field private final bodyListHttpData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private bodyListHttpDataRank:I

.field private final bodyMapHttpData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/nio/charset/Charset;

.field private currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

.field private currentFieldAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Lio/netty/handler/codec/http/multipart/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

.field private currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field private destroyed:Z

.field private discardThreshold:I

.field private final factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

.field private isLastChunk:Z

.field private multipartDataBoundary:Ljava/lang/String;

.field private multipartMixedBoundary:Ljava/lang/String;

.field private final request:Lio/netty/handler/codec/http/HttpRequest;

.field private undecodedChunk:Lio/netty/buffer/ByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->FILENAME:Lio/netty/util/AsciiString;

    invoke-virtual {v1}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->FILENAME_ENCODED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 3

    .line 1
    new-instance v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    const-wide/16 v1, 0x4000

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v1, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1, v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 1

    .line 2
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpData:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;->INSTANCE:Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    .line 6
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    const/high16 v0, 0xa00000

    .line 7
    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->discardThreshold:I

    const-string v0, "request"

    .line 8
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    const-string v1, "charset"

    .line 9
    invoke-static {p3, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/charset/Charset;

    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->charset:Ljava/nio/charset/Charset;

    const-string p3, "factory"

    .line 10
    invoke-static {p1, p3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    .line 11
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    sget-object p3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {p1, p3}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->setMultipart(Ljava/lang/String;)V

    .line 12
    instance-of p1, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz p1, :cond_0

    .line 13
    check-cast p2, Lio/netty/handler/codec/http/HttpContent;

    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lio/netty/buffer/Unpooled;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    .line 15
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->parseBody()V

    :goto_0
    return-void
.end method

.method private checkDestroyed()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->destroyed:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was destroyed already"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanMixedAttributes()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->FILENAME:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0x20

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 7

    .line 1
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder$1;->$SwitchMap$io$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "Should not be called with the current getStatus"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v0, "Shouldn\'t reach here."

    invoke-direct {p1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return-object v1

    .line 3
    :pswitch_1
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->getFileUpload(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->findMultipartDisposition()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->findMultipartDelimiter(Ljava/lang/String;Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->getFileUpload(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz p1, :cond_0

    .line 8
    :try_start_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 10
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    move-object p1, v1

    .line 11
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->NAME:Lio/netty/util/AsciiString;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 12
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    if-nez v2, :cond_3

    .line 13
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    .line 14
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/multipart/Attribute;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 15
    :try_start_1
    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    :cond_1
    move-wide v5, v3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 17
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    cmp-long v2, v5, v3

    if-lez v2, :cond_2

    .line 18
    :try_start_2
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    .line 19
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-interface {v2, v3, v0, v5, v6}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;J)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    goto :goto_2

    .line 21
    :cond_2
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    .line 22
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {v2, v3, v0}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    if-eqz p1, :cond_3

    .line 24
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setCharset(Ljava/nio/charset/Charset;)V

    goto :goto_3

    :catch_4
    move-exception p1

    .line 25
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception p1

    .line 26
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_6
    move-exception p1

    .line 27
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 28
    :cond_3
    :goto_3
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-static {p1, v0, v2}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->loadDataMultipart(Lio/netty/buffer/ByteBuf;Ljava/lang/String;Lio/netty/handler/codec/http/multipart/HttpData;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object v1

    .line 29
    :cond_4
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 30
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 31
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    .line 32
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    return-object p1

    .line 33
    :pswitch_6
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->findMultipartDisposition()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_7
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->findMultipartDelimiter(Ljava/lang/String;Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_8
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {p1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :pswitch_9
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {p1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private findMultipartDelimiter(Ljava/lang/String;Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-static {v2}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->skipControlCharacters(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->skipOneLine()Z

    .line 4
    :try_start_1
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-static {v2, p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->readDelimiter(Lio/netty/buffer/ByteBuf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iput-object p2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 7
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 10
    sget-object p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne p3, p1, :cond_1

    .line 11
    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    .line 12
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 13
    :cond_2
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 14
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string p2, "No Multipart delimiter found"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :catch_0
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 16
    :catch_1
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-object v1
.end method

.method private findMultipartDisposition()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 13

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;->INSTANCE:Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    .line 4
    :cond_0
    :goto_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->skipOneLine()Z

    move-result v1

    if-nez v1, :cond_a

    .line 5
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->skipControlCharacters(Lio/netty/buffer/ByteBuf;)V

    .line 6
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->readLine(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_0 .. :try_end_0} :catch_a

    .line 7
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->splitMultipartHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_DISPOSITION:Lio/netty/util/AsciiString;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 9
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v6, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v2, v6, :cond_1

    .line 10
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->FORM_DATA:Lio/netty/util/AsciiString;

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_1

    .line 11
    :cond_1
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->ATTACHMENT:Lio/netty/util/AsciiString;

    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->FILE:Lio/netty/util/AsciiString;

    aget-object v6, v1, v5

    .line 12
    invoke-virtual {v2, v6}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 13
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 14
    aget-object v3, v1, v2

    const-string v5, "="

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 15
    :try_start_1
    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->getContentDispositionAttribute([Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    iget-object v5, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v3}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 18
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 19
    :cond_4
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    aget-object v6, v1, v3

    invoke-virtual {v2, v6}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 20
    :try_start_2
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v1, v1, v5

    .line 21
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-interface {v3, v4, v6, v1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 24
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    .line 25
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :cond_5
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    aget-object v6, v1, v3

    invoke-virtual {v2, v6}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 27
    :try_start_3
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v1, v1, v5

    .line 28
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-interface {v3, v4, v6, v1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    .line 30
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .line 31
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    .line 32
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 33
    :cond_6
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    aget-object v6, v1, v3

    invoke-virtual {v2, v6}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->MULTIPART_MIXED:Lio/netty/util/AsciiString;

    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v6, 0x3d

    if-eqz v2, :cond_8

    .line 35
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v2, :cond_7

    .line 36
    aget-object v0, v1, v4

    invoke-static {v0, v6}, Lio/netty/util/internal/StringUtil;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    .line 38
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 39
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    .line 40
    :cond_7
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Mixed Multipart found in a previous Mixed Multipart"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_8
    :goto_3
    array-length v2, v1

    if-ge v5, v2, :cond_0

    .line 42
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    aget-object v7, v1, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    move-object v10, v4

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 44
    aget-object v7, v1, v5

    invoke-static {v7, v6}, Lio/netty/util/internal/StringUtil;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    .line 45
    :try_start_4
    iget-object v8, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v9, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-static {v7}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v9, v4, v7}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    .line 46
    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_6
    move-exception v0

    .line 47
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    .line 48
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    :cond_9
    :try_start_5
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    aget-object v7, v1, v3

    .line 50
    invoke-static {v7}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v1, v5

    .line 51
    invoke-interface {v2, v4, v7, v8}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_8

    .line 52
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_8
    move-exception v0

    .line 53
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    move-exception v0

    .line 54
    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :catch_a
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_a
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->FILENAME:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 57
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v1, v2, :cond_c

    if-eqz v0, :cond_b

    .line 58
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 59
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    .line 60
    :cond_b
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 61
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    :cond_c
    if-eqz v0, :cond_d

    .line 62
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDFILEUPLOAD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 63
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0

    .line 64
    :cond_d
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Filename not found"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private varargs getContentDispositionAttribute([Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 5

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    aget-object p1, p1, v2

    .line 3
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->FILENAME:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v1}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-lez v3, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x22

    if-ne v0, v4, :cond_2

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    .line 7
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->FILENAME_ENCODED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const/4 v3, 0x3

    .line 10
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    .line 11
    aget-object v2, p1, v2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {v2, p1}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 13
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 14
    :cond_1
    invoke-static {p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v2, v1, p1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method private static loadDataMultipart(Lio/netty/buffer/ByteBuf;Ljava/lang/String;Lio/netty/handler/codec/http/multipart/HttpData;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->loadDataMultipartStandard(Lio/netty/buffer/ByteBuf;Ljava/lang/String;Lio/netty/handler/codec/http/multipart/HttpData;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    iget v3, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 7
    :cond_1
    :goto_0
    iget v8, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v9, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    const/16 v10, 0xd

    const/4 v11, 0x1

    if-ge v8, v9, :cond_5

    .line 8
    iget-object v9, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v8, v9, v8

    if-ne v6, v4, :cond_2

    .line 9
    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    if-ne v8, v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    if-ne v2, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget v3, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    if-ne v8, v4, :cond_4

    if-ne v6, v10, :cond_3

    const/4 v11, 0x2

    :cond_3
    sub-int/2addr v3, v11

    const/4 v7, 0x0

    :cond_4
    move v6, v8

    goto :goto_0

    :cond_5
    :goto_1
    if-ne v6, v10, :cond_6

    add-int/lit8 v3, v3, -0x1

    .line 11
    :cond_6
    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->getReadPosition(I)I

    move-result p1

    sub-int v0, p1, v1

    .line 12
    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 13
    :try_start_0
    invoke-interface {p2, v0, v5}, Lio/netty/handler/codec/http/multipart/HttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return v5

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {p1, p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static loadDataMultipartStandard(Lio/netty/buffer/ByteBuf;Ljava/lang/String;Lio/netty/handler/codec/http/multipart/HttpData;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    move v6, v0

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v7

    const/16 v8, 0xd

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v7

    if-ne v4, v2, :cond_1

    .line 5
    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    if-ne v7, v10, :cond_1

    add-int/lit8 v5, v5, 0x1

    if-ne v1, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    if-ne v7, v2, :cond_3

    if-ne v4, v8, :cond_2

    const/4 v9, 0x2

    :cond_2
    sub-int/2addr v6, v9

    const/4 v5, 0x0

    :cond_3
    move v4, v7

    goto :goto_0

    :cond_4
    :goto_1
    if-ne v4, v8, :cond_5

    add-int/lit8 v6, v6, -0x1

    :cond_5
    sub-int p1, v6, v0

    .line 7
    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-interface {p2, p1, v3}, Lio/netty/handler/codec/http/multipart/HttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return v3

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {p1, p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private parseBody()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->parseBodyMultipart()V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    :cond_2
    return-void
.end method

.method private parseBodyMultipart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 4
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->decodeMultipart(Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static readDelimiter(Lio/netty/buffer/ByteBuf;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->readDelimiterStandard(Lio/netty/buffer/ByteBuf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    :goto_0
    iget v6, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v7, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v6, v7, :cond_2

    if-ge v5, v2, :cond_2

    .line 8
    iget-object v7, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v6, v7, v6

    .line 9
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    int-to-char v6, v6

    .line 10
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 12
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1

    :cond_2
    if-ge v6, v7, :cond_c

    .line 13
    iget-object p1, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v2, v6, 0x1

    iput v2, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v5, p1, v6

    const/16 v6, 0xd

    const/16 v8, 0xa

    if-ne v5, v6, :cond_5

    if-ge v2, v7, :cond_4

    add-int/lit8 v5, v2, 0x1

    .line 14
    iput v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte p1, p1, v2

    if-ne p1, v8, :cond_3

    .line 15
    invoke-virtual {v0, v4}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_3
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 18
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1

    .line 19
    :cond_4
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 20
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1

    :cond_5
    if-ne v5, v8, :cond_6

    .line 21
    invoke-virtual {v0, v4}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 p1, 0x2d

    if-ne v5, p1, :cond_c

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    iget v2, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v2, v5, :cond_c

    .line 25
    iget-object v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v7, v2, 0x1

    iput v7, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v2, v5, v2

    if-ne v2, p1, :cond_c

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    iget p1, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v2, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge p1, v2, :cond_b

    .line 28
    iget-object v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v7, p1, 0x1

    iput v7, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte p1, v5, p1

    if-ne p1, v6, :cond_9

    if-ge v7, v2, :cond_8

    add-int/lit8 p1, v7, 0x1

    .line 29
    iput p1, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte p1, v5, v7

    if-ne p1, v8, :cond_7

    .line 30
    invoke-virtual {v0, v4}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_7
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 33
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1

    .line 34
    :cond_8
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 35
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1

    :cond_9
    if-ne p1, v8, :cond_a

    .line 36
    invoke-virtual {v0, v4}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p1, 0x1

    .line 38
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :cond_b
    invoke-virtual {v0, v4}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 42
    :cond_c
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 43
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 45
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static readDelimiterStandard(Lio/netty/buffer/ByteBuf;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v4

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    int-to-char v4, v4

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 9
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 11
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-ne p1, v2, :cond_3

    .line 12
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    if-ne p1, v3, :cond_2

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 15
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1

    :cond_3
    if-ne p1, v3, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v4, 0x2d

    if-ne p1, v4, :cond_9

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    if-ne p1, v4, :cond_9

    .line 19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    if-ne p1, v2, :cond_6

    .line 22
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    if-ne p1, v3, :cond_5

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_5
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 25
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1

    :cond_6
    if-ne p1, v3, :cond_7

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_7
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 30
    :cond_9
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 31
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 33
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static readLine(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->readLineStandard(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    const/16 v2, 0x40

    .line 5
    :try_start_0
    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 6
    :goto_0
    iget v3, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v4, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v3, v4, :cond_5

    .line 7
    iget-object v5, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v3, v5, v3

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/16 v9, 0xd

    if-ne v3, v9, :cond_3

    if-ge v6, v4, :cond_2

    add-int/lit8 v3, v6, 0x1

    .line 8
    iput v3, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v4, v5, v6

    if-ne v4, v8, :cond_1

    .line 9
    invoke-virtual {v0, v7}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 10
    invoke-virtual {v2, p1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 11
    iput v3, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 12
    invoke-virtual {v2, v9}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_3
    if-ne v3, v8, :cond_4

    .line 14
    invoke-virtual {v0, v7}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    .line 15
    invoke-virtual {v2, p1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_4
    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 18
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 20
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static readLineStandard(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    const/16 v1, 0x40

    .line 2
    :try_start_0
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 7
    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    .line 9
    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 12
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 14
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private setMultipart(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->getMultipartDataBoundary(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    .line 4
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->charset:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    .line 6
    :cond_1
    :goto_0
    sget-object p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    return-void
.end method

.method private static skipControlCharacters(Lio/netty/buffer/ByteBuf;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->skipControlCharactersStandard(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 5
    :cond_1
    iget p0, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v1, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge p0, v1, :cond_2

    .line 6
    iget-object v1, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    add-int/lit8 v2, p0, 0x1

    iput v2, v0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    .line 7
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 8
    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    return-void

    .line 9
    :cond_2
    new-instance p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    const-string v0, "Access out of bounds"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method private static skipControlCharactersStandard(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    int-to-char v0, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private skipOneLine()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    if-ne v0, v3, :cond_2

    return v4

    .line 6
    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return v1

    :cond_3
    if-ne v0, v3, :cond_4

    return v4

    .line 7
    :cond_4
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return v1
.end method

.method private static splitMultipartHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3a

    if-ge v3, v4, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_1

    .line 5
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v4, v3

    .line 6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 7
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8
    :cond_3
    :goto_3
    invoke-static {p0, v4}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v4

    .line 9
    invoke-static {p0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findEndOfString(Ljava/lang/String;)I

    move-result v5

    .line 10
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt v4, v5, :cond_4

    const-string p0, ""

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_4
    const/16 v2, 0x3b

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 13
    invoke-static {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->splitMultipartHeaderValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_5
    const-string v2, ","

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 15
    :goto_5
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_6

    aget-object v4, p0, v3

    .line 16
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 17
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 18
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    return-object p0
.end method

.method private static splitMultipartHeaderValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    if-eqz v5, :cond_2

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/16 v9, 0x5c

    if-ne v7, v9, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    if-ne v7, v8, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/16 v8, 0x3b

    if-ne v7, v8, :cond_4

    .line 4
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v3, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/String;

    .line 6
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected addHttpData(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanFiles()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V

    return-void
.end method

.method public currentPartialHttpData()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentAttribute:Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanFiles()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->destroyed:Z

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method

.method public getBodyHttpData(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    .line 2
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1
.end method

.method public getBodyHttpDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    .line 2
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpData:Ljava/util/List;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method public getBodyHttpDatas(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    .line 6
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw p1
.end method

.method public getDiscardThreshold()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->discardThreshold:I

    return v0
.end method

.method protected getFileUpload(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 11

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 2
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->charset:Ljava/nio/charset/Charset;

    .line 3
    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT7:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    if-eqz v0, :cond_3

    .line 4
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v2}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT8:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    sget-object v1, Lio/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferEncoding Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_4

    .line 13
    :try_start_1
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 14
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 15
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_1
    move-object v7, v1

    .line 16
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->FILENAME:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 18
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->NAME:Lio/netty/util/AsciiString;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 19
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 20
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/codec/http/multipart/Attribute;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_5

    .line 21
    :try_start_2
    invoke-interface {v4}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_3
    move-exception p1

    .line 22
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    :cond_5
    :goto_2
    move-wide v8, v5

    if-eqz v3, :cond_6

    .line 23
    :try_start_3
    invoke-interface {v3}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    const-string v3, "application/octet-stream"

    :goto_3
    move-object v5, v3

    .line 24
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    .line 25
    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v2}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v10

    move-object v1, v3

    move-object v2, v4

    move-object v3, v6

    move-object v4, v0

    move-object v6, v10

    .line 27
    invoke-interface/range {v1 .. v9}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->createFileUpload(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 28
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_6
    move-exception p1

    .line 29
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_7
    move-exception p1

    .line 30
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 31
    :cond_7
    :goto_4
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-static {v0, p1, v1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->loadDataMultipart(Lio/netty/buffer/ByteBuf;Ljava/lang/String;Lio/netty/handler/codec/http/multipart/HttpData;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 32
    :cond_8
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/HttpData;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 33
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne p1, v1, :cond_9

    .line 34
    sget-object p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 35
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    goto :goto_5

    .line 36
    :cond_9
    sget-object p1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    .line 37
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->cleanMixedAttributes()V

    .line 38
    :goto_5
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 39
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentFileUpload:Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object p1

    :cond_a
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->currentStatus:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;-><init>()V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    const/4 v0, 0x1

    return v0
.end method

.method public next()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpData:Ljava/util/List;

    iget v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpDataRank:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->bodyListHttpDataRank:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    .line 3
    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 7
    :goto_0
    instance-of p1, p1, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->isLastChunk:Z

    .line 9
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->parseBody()V

    .line 10
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p1

    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->discardThreshold:I

    if-le p1, v0, :cond_2

    .line 11
    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->undecodedChunk:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->discardReadBytes()Lio/netty/buffer/ByteBuf;

    :cond_2
    return-object p0
.end method

.method public bridge synthetic offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;

    move-result-object p1

    return-object p1
.end method

.method public removeHttpDataFromClean(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->checkDestroyed()V

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->factory:Lio/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->request:Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1, p1}, Lio/netty/handler/codec/http/multipart/HttpDataFactory;->removeHttpDataFromClean(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    return-void
.end method

.method public setDiscardThreshold(I)V
    .locals 1

    const-string v0, "discardThreshold"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;->discardThreshold:I

    return-void
.end method
