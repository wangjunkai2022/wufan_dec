.class public Lio/netty/handler/codec/stomp/StompSubframeEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "StompSubframeEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/handler/codec/stomp/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    return-void
.end method

.method private static encodeContent(Lio/netty/handler/codec/stomp/StompContentSubframe;Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    instance-of v0, p0, Lio/netty/handler/codec/stomp/LastStompContentSubframe;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-interface {p0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 3
    invoke-interface {p0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-object p1

    .line 5
    :cond_0
    invoke-interface {p0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method private static encodeFrame(Lio/netty/handler/codec/stomp/StompHeadersSubframe;Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 2
    invoke-interface {p0}, Lio/netty/handler/codec/stomp/StompHeadersSubframe;->command()Lio/netty/handler/codec/stomp/StompCommand;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    const/16 v0, 0xa

    .line 3
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 4
    invoke-interface {p0}, Lio/netty/handler/codec/stomp/StompHeadersSubframe;->headers()Lio/netty/handler/codec/stomp/StompHeaders;

    move-result-object p0

    invoke-interface {p0}, Lio/netty/handler/codec/Headers;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    const/16 v2, 0x3a

    .line 6
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 8
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-object p1
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/stomp/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/stomp/a;",
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

    .line 2
    instance-of v0, p2, Lio/netty/handler/codec/stomp/StompFrame;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lio/netty/handler/codec/stomp/StompFrame;

    .line 4
    invoke-static {p2, p1}, Lio/netty/handler/codec/stomp/StompSubframeEncoder;->encodeFrame(Lio/netty/handler/codec/stomp/StompHeadersSubframe;Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 5
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p2, p1}, Lio/netty/handler/codec/stomp/StompSubframeEncoder;->encodeContent(Lio/netty/handler/codec/stomp/StompContentSubframe;Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 7
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/stomp/StompHeadersSubframe;

    if-eqz v0, :cond_1

    .line 9
    check-cast p2, Lio/netty/handler/codec/stomp/StompHeadersSubframe;

    .line 10
    invoke-static {p2, p1}, Lio/netty/handler/codec/stomp/StompSubframeEncoder;->encodeFrame(Lio/netty/handler/codec/stomp/StompHeadersSubframe;Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 11
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    instance-of v0, p2, Lio/netty/handler/codec/stomp/StompContentSubframe;

    if-eqz v0, :cond_2

    .line 13
    check-cast p2, Lio/netty/handler/codec/stomp/StompContentSubframe;

    .line 14
    invoke-static {p2, p1}, Lio/netty/handler/codec/stomp/StompSubframeEncoder;->encodeContent(Lio/netty/handler/codec/stomp/StompContentSubframe;Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 15
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lio/netty/handler/codec/stomp/a;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/stomp/StompSubframeEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/stomp/a;Ljava/util/List;)V

    return-void
.end method
