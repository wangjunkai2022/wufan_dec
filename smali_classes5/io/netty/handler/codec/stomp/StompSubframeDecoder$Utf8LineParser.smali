.class Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;
.super Ljava/lang/Object;
.source "StompSubframeDecoder.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/stomp/StompSubframeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Utf8LineParser"
.end annotation


# instance fields
.field private final charSeq:Lio/netty/util/internal/AppendableCharSequence;

.field private interim:C

.field private lineLength:I

.field private final maxLineLength:I

.field private nextRead:Z


# direct methods
.method constructor <init>(Lio/netty/util/internal/AppendableCharSequence;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "charSeq"

    .line 2
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/internal/AppendableCharSequence;

    iput-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    .line 3
    iput p2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->maxLineLength:I

    return-void
.end method


# virtual methods
.method charSequence()Lio/netty/util/internal/AppendableCharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    return-object v0
.end method

.method parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->reset()V

    .line 2
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 4
    iget-object p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    return-object p1
.end method

.method public process(B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 1
    iget p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    return v0

    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    iget v3, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->maxLineLength:I

    if-gt v1, v3, :cond_6

    .line 3
    iget-boolean v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->nextRead:Z

    if-eqz v1, :cond_2

    .line 4
    iget-char v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p1, v1

    int-to-char p1, p1

    iput-char p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 5
    iput-boolean v2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->nextRead:Z

    goto :goto_0

    .line 6
    :cond_2
    iget-char v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    if-eqz v1, :cond_3

    .line 7
    iget-object v3, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v1

    int-to-char p1, p1

    invoke-virtual {v3, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    .line 8
    iput-char v2, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    goto :goto_0

    :cond_3
    if-ltz p1, :cond_4

    .line 9
    iget-object v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    goto :goto_0

    :cond_4
    and-int/lit16 v1, p1, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_5

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    int-to-char p1, p1

    .line 10
    iput-char p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    goto :goto_0

    :cond_5
    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    int-to-char p1, p1

    .line 11
    iput-char p1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 12
    iput-boolean v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->nextRead:Z

    :goto_0
    return v0

    .line 13
    :cond_6
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An STOMP line is larger than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->maxLineLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->charSeq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v0}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->lineLength:I

    .line 3
    iput-char v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->interim:C

    .line 4
    iput-boolean v0, p0, Lio/netty/handler/codec/stomp/StompSubframeDecoder$Utf8LineParser;->nextRead:Z

    return-void
.end method
