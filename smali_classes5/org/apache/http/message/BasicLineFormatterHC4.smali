.class public Lorg/apache/http/message/BasicLineFormatterHC4;
.super Ljava/lang/Object;
.source "BasicLineFormatterHC4.java"

# interfaces
.implements Lorg/apache/http/message/LineFormatter;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicLineFormatterHC4;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/message/BasicLineFormatterHC4;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineFormatterHC4;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineFormatterHC4;->DEFAULT:Lorg/apache/http/message/BasicLineFormatterHC4;

    .line 2
    new-instance v0, Lorg/apache/http/message/BasicLineFormatterHC4;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineFormatterHC4;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHeader(Lorg/apache/http/Header;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatProtocolVersion(Lorg/apache/http/ProtocolVersion;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatRequestLine(Lorg/apache/http/RequestLine;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStatusLine(Lorg/apache/http/StatusLine;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicLineFormatterHC4;

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Protocol version"

    .line 1
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicLineFormatterHC4;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2f

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 7
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 9
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-object p1
.end method

.method protected doFormatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 5
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, ": "

    .line 7
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected doFormatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/message/BasicLineFormatterHC4;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 5
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 7
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 9
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineFormatterHC4;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    return-void
.end method

.method protected doFormatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicLineFormatterHC4;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 5
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/message/BasicLineFormatterHC4;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x20

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 7
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Header"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    instance-of v0, p2, Lorg/apache/http/FormattedHeader;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Lorg/apache/http/FormattedHeader;

    invoke-interface {p2}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatterHC4;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineFormatterHC4;->doFormatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)V

    :goto_0
    return-object p1
.end method

.method public formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Request line"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatterHC4;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineFormatterHC4;->doFormatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)V

    return-object p1
.end method

.method public formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Status line"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatterHC4;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineFormatterHC4;->doFormatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)V

    return-object p1
.end method

.method protected initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    :goto_0
    return-object p1
.end method
