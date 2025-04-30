.class public Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyGoAwayFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;


# instance fields
.field private lastGoodStreamId:I

.field private status:Lio/netty/handler/codec/spdy/SpdySessionStatus;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-static {p2}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->valueOf(I)Lio/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(ILio/netty/handler/codec/spdy/SpdySessionStatus;)V

    return-void
.end method

.method public constructor <init>(ILio/netty/handler/codec/spdy/SpdySessionStatus;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setLastGoodStreamId(I)Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    .line 5
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setStatus(Lio/netty/handler/codec/spdy/SpdySessionStatus;)Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    return-void
.end method


# virtual methods
.method public lastGoodStreamId()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    return v0
.end method

.method public setLastGoodStreamId(I)Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    .locals 1

    const-string v0, "lastGoodStreamId"

    .line 1
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 2
    iput p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    return-object p0
.end method

.method public setStatus(Lio/netty/handler/codec/spdy/SpdySessionStatus;)Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    return-object p0
.end method

.method public status()Lio/netty/handler/codec/spdy/SpdySessionStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0
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

    const-string v2, "--> Last-good-stream-ID = "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Status: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status()Lio/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
