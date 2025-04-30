.class public final Lio/netty/handler/codec/haproxy/HAProxyMessage;
.super Lio/netty/util/AbstractReferenceCounted;
.source "HAProxyMessage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/codec/haproxy/HAProxyMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final command:Lio/netty/handler/codec/haproxy/HAProxyCommand;

.field private final destinationAddress:Ljava/lang/String;

.field private final destinationPort:I

.field private final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/codec/haproxy/HAProxyMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final protocolVersion:Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

.field private final proxiedProtocol:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

.field private final sourceAddress:Ljava/lang/String;

.field private final sourcePort:I

.field private final tlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v0

    const-class v1, Lio/netty/handler/codec/haproxy/HAProxyMessage;

    invoke-virtual {v0, v1}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 4
    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/haproxy/HAProxyMessage;-><init>(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;",
            "Lio/netty/handler/codec/haproxy/HAProxyCommand;",
            "Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    const-string v0, "proxiedProtocol"

    .line 6
    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p3}, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->addressFamily()Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    move-result-object v0

    .line 8
    invoke-static {p4, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->checkAddress(Ljava/lang/String;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;)V

    .line 9
    invoke-static {p5, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->checkAddress(Ljava/lang/String;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;)V

    .line 10
    invoke-static {p6}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->checkPort(I)V

    .line 11
    invoke-static {p7}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->checkPort(I)V

    .line 12
    iput-object p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->protocolVersion:Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

    .line 13
    iput-object p2, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->command:Lio/netty/handler/codec/haproxy/HAProxyCommand;

    .line 14
    iput-object p3, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->proxiedProtocol:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    .line 15
    iput-object p4, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->sourceAddress:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->destinationAddress:Ljava/lang/String;

    .line 17
    iput p6, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->sourcePort:I

    .line 18
    iput p7, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->destinationPort:I

    .line 19
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->tlvs:Ljava/util/List;

    .line 20
    sget-object p1, Lio/netty/handler/codec/haproxy/HAProxyMessage;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->leak:Lio/netty/util/ResourceLeakTracker;

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p6}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->portStringToInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p7}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->portStringToInt(Ljava/lang/String;)I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/haproxy/HAProxyMessage;-><init>(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private static checkAddress(Ljava/lang/String;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;)V
    .locals 3

    const-string v0, "addrFamily"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyMessage$1;->$SwitchMap$io$netty$handler$codec$haproxy$HAProxyProxiedProtocol$AddressFamily:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const-string v1, "address"

    .line 3
    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 5
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid IPv6 address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    .line 8
    :cond_2
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 9
    :cond_3
    new-instance p1, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid IPv4 address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void

    :cond_5
    if-nez p0, :cond_6

    return-void

    .line 10
    :cond_6
    new-instance p1, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to validate an AF_UNSPEC address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkPort(I)V
    .locals 3

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " (expected: 1 ~ 65535)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static decodeHeader(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/haproxy/HAProxyMessage;
    .locals 12

    const-string v0, "header"

    .line 1
    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v2

    .line 5
    :try_start_0
    invoke-static {v2}, Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;->valueOf(B)Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    sget-object v3, Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;->V2:Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

    if-ne v4, v3, :cond_a

    .line 7
    :try_start_1
    invoke-static {v2}, Lio/netty/handler/codec/haproxy/HAProxyCommand;->valueOf(B)Lio/netty/handler/codec/haproxy/HAProxyCommand;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    sget-object v2, Lio/netty/handler/codec/haproxy/HAProxyCommand;->LOCAL:Lio/netty/handler/codec/haproxy/HAProxyCommand;

    if-ne v5, v2, :cond_0

    .line 9
    invoke-static {v3, v2}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->unknownMsg(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;)Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v2

    invoke-static {v2}, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->valueOf(B)Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 11
    sget-object v2, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->UNKNOWN:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    if-ne v6, v2, :cond_1

    .line 12
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyCommand;->PROXY:Lio/netty/handler/codec/haproxy/HAProxyCommand;

    invoke-static {v3, p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->unknownMsg(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;)Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v2

    .line 14
    invoke-virtual {v6}, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->addressFamily()Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    move-result-object v3

    .line 15
    sget-object v7, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_UNIX:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    const/4 v8, 0x0

    if-ne v3, v7, :cond_5

    const/16 v0, 0xd8

    if-lt v2, v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-lt v1, v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 18
    sget-object v1, Lio/netty/util/ByteProcessor;->FIND_NUL:Lio/netty/util/ByteProcessor;

    const/16 v2, 0x6c

    invoke-virtual {p0, v0, v2, v1}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    const/16 v3, 0x6c

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v0

    .line 19
    :goto_0
    sget-object v9, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v3, v9}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v2

    .line 20
    invoke-virtual {p0, v0, v2, v1}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v1

    if-ne v1, v7, :cond_3

    const/16 v1, 0x6c

    goto :goto_1

    :cond_3
    sub-int/2addr v1, v0

    .line 21
    :goto_1
    invoke-virtual {p0, v0, v1, v9}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v2

    .line 22
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    move-object v8, v1

    move-object v7, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 23
    :cond_4
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomplete UNIX socket address information: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes (expected: 216+ bytes)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_5
    sget-object v7, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_IPv4:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    if-ne v3, v7, :cond_7

    if-lt v2, v0, :cond_6

    .line 26
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-lt v1, v0, :cond_6

    const/4 v1, 0x4

    goto :goto_2

    .line 27
    :cond_6
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomplete IPv4 address information: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes (expected: 12+ bytes)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_7
    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;->AF_IPv6:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol$AddressFamily;

    if-ne v3, v0, :cond_9

    const/16 v0, 0x24

    if-lt v2, v0, :cond_8

    .line 30
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    if-lt v3, v0, :cond_8

    .line 31
    :goto_2
    invoke-static {p0, v1}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->ipBytesToString(Lio/netty/buffer/ByteBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p0, v1}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->ipBytesToString(Lio/netty/buffer/ByteBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v2

    .line 34
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v3

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    .line 35
    :goto_3
    invoke-static {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->readTlvs(Lio/netty/buffer/ByteBuf;)Ljava/util/List;

    move-result-object v11

    .line 36
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lio/netty/handler/codec/haproxy/HAProxyMessage;-><init>(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    return-object p0

    .line 37
    :cond_8
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomplete IPv6 address information: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes (expected: 36+ bytes)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_9
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to parse address information (unknown address family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 41
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 42
    :cond_a
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version 1 unsupported: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    .line 43
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 44
    :cond_b
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomplete header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes (expected: 16+ bytes)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static decodeHeader(Ljava/lang/String;)Lio/netty/handler/codec/haproxy/HAProxyMessage;
    .locals 13

    if-eqz p0, :cond_6

    const-string v0, " "

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    const/4 v3, 0x0

    .line 48
    aget-object v4, v0, v3

    const-string v5, "PROXY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    .line 49
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    sget-object v4, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->TCP4:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    if-eq v8, v4, :cond_1

    sget-object v4, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->TCP6:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    if-eq v8, v4, :cond_1

    sget-object v4, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->UNKNOWN:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    if-ne v8, v4, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported v1 proxied protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_1
    :goto_0
    sget-object v3, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->UNKNOWN:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    if-ne v8, v3, :cond_2

    .line 53
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;->V1:Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyCommand;->PROXY:Lio/netty/handler/codec/haproxy/HAProxyCommand;

    invoke-static {p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->unknownMsg(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;)Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    .line 54
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;

    sget-object v6, Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;->V1:Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

    sget-object v7, Lio/netty/handler/codec/haproxy/HAProxyCommand;->PROXY:Lio/netty/handler/codec/haproxy/HAProxyCommand;

    aget-object v9, v0, v2

    const/4 v1, 0x3

    aget-object v10, v0, v1

    const/4 v1, 0x4

    aget-object v11, v0, v1

    const/4 v1, 0x5

    aget-object v12, v0, v1

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lio/netty/handler/codec/haproxy/HAProxyMessage;-><init>(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 55
    :cond_3
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid TCP4/6 header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (expected: 6 parts)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    .line 56
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 57
    :cond_4
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_5
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (expected: \'PROXY\' and proxied protocol values)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_6
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    const-string v0, "header"

    invoke-direct {p0, v0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ipBytesToString(Lio/netty/buffer/ByteBuf;I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p1, 0x8

    if-ge v1, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static portStringToInt(Ljava/lang/String;)I
    .locals 4

    const-string v0, "invalid port: "

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v1, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (expected: 1 ~ 65535)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 3
    new-instance v2, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lio/netty/handler/codec/haproxy/HAProxyProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static readNextTLV(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/haproxy/HAProxyTLV;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 3
    invoke-static {v0}, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->typeForByteValue(B)Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v4

    .line 5
    sget-object v5, Lio/netty/handler/codec/haproxy/HAProxyMessage$1;->$SwitchMap$io$netty$handler$codec$haproxy$HAProxyTLV$Type:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    return-object v1

    .line 6
    :pswitch_0
    new-instance v1, Lio/netty/handler/codec/haproxy/HAProxyTLV;

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-direct {v1, v3, v0, p0}, Lio/netty/handler/codec/haproxy/HAProxyTLV;-><init>(Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;BLio/netty/buffer/ByteBuf;)V

    return-object v1

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v1

    .line 10
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v3

    .line 11
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-lt v4, v2, :cond_3

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    :cond_1
    invoke-static {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->readNextTLV(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/haproxy/HAProxyTLV;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-ge v5, v2, :cond_1

    .line 16
    :goto_0
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;

    invoke-direct {p0, v3, v1, v4, v0}, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;-><init>(IBLjava/util/List;Lio/netty/buffer/ByteBuf;)V

    return-object p0

    .line 17
    :cond_3
    new-instance p0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2, v0}, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;-><init>(IBLjava/util/List;Lio/netty/buffer/ByteBuf;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static readTlvs(Lio/netty/buffer/ByteBuf;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->readNextTLV(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/haproxy/HAProxyTLV;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    instance-of v2, v0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;

    invoke-virtual {v0}, Lio/netty/handler/codec/haproxy/HAProxySSLTLV;->encapsulatedTLVs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_2
    invoke-static {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->readNextTLV(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/haproxy/HAProxyTLV;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1
.end method

.method private tryRecord()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    :cond_0
    return-void
.end method

.method private static unknownMsg(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;)Lio/netty/handler/codec/haproxy/HAProxyMessage;
    .locals 9

    .line 1
    new-instance v8, Lio/netty/handler/codec/haproxy/HAProxyMessage;

    sget-object v3, Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;->UNKNOWN:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/haproxy/HAProxyMessage;-><init>(Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;Lio/netty/handler/codec/haproxy/HAProxyCommand;Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v8
.end method


# virtual methods
.method public command()Lio/netty/handler/codec/haproxy/HAProxyCommand;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->command:Lio/netty/handler/codec/haproxy/HAProxyCommand;

    return-object v0
.end method

.method protected deallocate()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->tlvs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/haproxy/HAProxyTLV;

    .line 2
    invoke-virtual {v1}, Lio/netty/buffer/DefaultByteBufHolder;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Lio/netty/util/ResourceLeakTracker;->close(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1, p0}, Lio/netty/util/ResourceLeakTracker;->close(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public destinationAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->destinationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public destinationPort()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->destinationPort:I

    return v0
.end method

.method public protocolVersion()Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->protocolVersion:Lio/netty/handler/codec/haproxy/HAProxyProtocolVersion;

    return-object v0
.end method

.method public proxiedProtocol()Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->proxiedProtocol:Lio/netty/handler/codec/haproxy/HAProxyProxiedProtocol;

    return-object v0
.end method

.method public release()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->tryRecord()V

    .line 2
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->tryRecord()V

    .line 4
    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    move-result p1

    return p1
.end method

.method public retain()Lio/netty/handler/codec/haproxy/HAProxyMessage;
    .locals 1

    .line 3
    invoke-direct {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->tryRecord()V

    .line 4
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/haproxy/HAProxyMessage;

    return-object v0
.end method

.method public retain(I)Lio/netty/handler/codec/haproxy/HAProxyMessage;
    .locals 0

    .line 5
    invoke-direct {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->tryRecord()V

    .line 6
    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/haproxy/HAProxyMessage;

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->retain()Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->retain(I)Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object p1

    return-object p1
.end method

.method public sourceAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->sourceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public sourcePort()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->sourcePort:I

    return v0
.end method

.method public tlvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/haproxy/HAProxyTLV;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->tlvs:Ljava/util/List;

    return-object v0
.end method

.method public touch()Lio/netty/handler/codec/haproxy/HAProxyMessage;
    .locals 1

    .line 3
    invoke-direct {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->tryRecord()V

    .line 4
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/haproxy/HAProxyMessage;

    return-object v0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/haproxy/HAProxyMessage;
    .locals 1

    .line 5
    iget-object v0, p0, Lio/netty/handler/codec/haproxy/HAProxyMessage;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lio/netty/util/ResourceLeakTracker;->record(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->touch()Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/haproxy/HAProxyMessage;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/haproxy/HAProxyMessage;

    move-result-object p1

    return-object p1
.end method
