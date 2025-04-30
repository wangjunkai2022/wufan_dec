.class public Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;
.super Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;
.source "DefaultSpdySynReplyFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdySynReplyFrame;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    move-result-object v0

    return-object v0
.end method

.method public setInvalid()Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .locals 0

    .line 2
    invoke-super {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    return-object p0
.end method

.method public bridge synthetic setLast(Z)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    move-result-object p1

    return-object p1
.end method

.method public setLast(Z)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    return-object p0
.end method

.method public bridge synthetic setStreamId(I)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;

    move-result-object p1

    return-object p1
.end method

.method public setStreamId(I)Lio/netty/handler/codec/spdy/SpdySynReplyFrame;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    return-object p0
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

    const-string v1, "(last: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->isLast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--> Stream-ID = "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->streamId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--> Headers:"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->appendHeaders(Ljava/lang/StringBuilder;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
