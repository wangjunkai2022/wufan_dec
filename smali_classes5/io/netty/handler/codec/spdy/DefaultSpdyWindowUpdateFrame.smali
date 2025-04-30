.class public Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyWindowUpdateFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;


# instance fields
.field private deltaWindowSize:I

.field private streamId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    .line 3
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->setDeltaWindowSize(I)Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    return-void
.end method


# virtual methods
.method public deltaWindowSize()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->deltaWindowSize:I

    return v0
.end method

.method public setDeltaWindowSize(I)Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    .locals 1

    const-string v0, "deltaWindowSize"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 2
    iput p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->deltaWindowSize:I

    return-object p0
.end method

.method public setStreamId(I)Lio/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    .locals 1

    const-string v0, "streamId"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 2
    iput p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->streamId:I

    return-object p0
.end method

.method public streamId()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->streamId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--> Stream-ID = "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->streamId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Delta-Window-Size = "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;->deltaWindowSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
