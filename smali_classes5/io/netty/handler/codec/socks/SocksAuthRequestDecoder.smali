.class public Lio/netty/handler/codec/socks/SocksAuthRequestDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "SocksAuthRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;",
        ">;"
    }
.end annotation


# instance fields
.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->CHECK_PROTOCOL_VERSION:Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$1;->$SwitchMap$io$netty$handler$codec$socks$SocksAuthRequestDecoder$State:[I

    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->state()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    sget-object v1, Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;->AUTH_PASSWORD:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;

    invoke-virtual {v1}, Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;->byteValue()B

    move-result v1

    if-eq v0, v1, :cond_2

    .line 4
    sget-object p2, Lio/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_REQUEST:Lio/netty/handler/codec/socks/SocksRequest;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_2
    sget-object v0, Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->READ_USERNAME:Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 6
    :cond_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 7
    invoke-static {p2, v0}, Lio/netty/handler/codec/socks/SocksCommonUtils;->readUsAscii(Lio/netty/buffer/ByteBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/socks/SocksAuthRequestDecoder;->username:Ljava/lang/String;

    .line 8
    sget-object v0, Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->READ_PASSWORD:Lio/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 9
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 10
    invoke-static {p2, v0}, Lio/netty/handler/codec/socks/SocksCommonUtils;->readUsAscii(Lio/netty/buffer/ByteBuf;I)Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance v0, Lio/netty/handler/codec/socks/SocksAuthRequest;

    iget-object v1, p0, Lio/netty/handler/codec/socks/SocksAuthRequestDecoder;->username:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lio/netty/handler/codec/socks/SocksAuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
