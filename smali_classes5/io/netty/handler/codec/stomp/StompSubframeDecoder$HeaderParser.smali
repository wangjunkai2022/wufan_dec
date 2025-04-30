.class final Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;
.super Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;
.source "StompSubframeDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/stomp/StompSubframeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderParser"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private valid:Z

.field private final validateHeaders:Z


# direct methods
.method constructor <init>(Lio/netty/util/internal/AppendableCharSequence;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;-><init>(Lio/netty/util/internal/AppendableCharSequence;I)V

    .line 2
    iput-boolean p3, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->validateHeaders:Z

    return-void
.end method


# virtual methods
.method parseHeader(Lio/netty/handler/codec/stomp/StompHeaders;Lio/netty/buffer/ByteBuf;)Z
    .locals 2

    .line 1
    invoke-super {p0, p2}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->valid:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lio/netty/handler/codec/Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->validateHeaders:Z

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received an invalid header line \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a header value or name contains a prohibited character \':\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public process(B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSequence()Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->valid:Z

    return p1

    :cond_0
    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->valid:Z

    .line 9
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->process(B)Z

    move-result p1

    return p1
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$HeaderParser;->valid:Z

    .line 3
    invoke-super {p0}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->reset()V

    return-void
.end method
