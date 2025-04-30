.class public final Lio/netty/handler/codec/smtp/SmtpRequestEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "SmtpRequestEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CRLF_SHORT:I = 0xd0a

.field private static final DOT_CRLF_BUFFER:Lio/netty/buffer/ByteBuf;

.field private static final SP:B = 0x20t


# instance fields
.field private contentExpected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/smtp/SmtpRequestEncoder;->DOT_CRLF_BUFFER:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    return-void
.end method

.method private static writeParameters(Ljava/util/List;Lio/netty/buffer/ByteBuf;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lio/netty/buffer/ByteBuf;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x20

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 3
    :cond_1
    instance-of p2, p0, Ljava/util/RandomAccess;

    if-eqz p2, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 6
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    goto :goto_2

    .line 8
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 9
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/netty/handler/codec/smtp/SmtpRequest;

    if-nez v0, :cond_1

    instance-of p1, p1, Lio/netty/handler/codec/smtp/SmtpContent;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
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
    instance-of v0, p2, Lio/netty/handler/codec/smtp/SmtpRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/smtp/SmtpRequest;

    .line 3
    iget-boolean v2, p0, Lio/netty/handler/codec/smtp/SmtpRequestEncoder;->contentExpected:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Lio/netty/handler/codec/smtp/SmtpRequest;->command()Lio/netty/handler/codec/smtp/SmtpCommand;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/smtp/SmtpCommand;->RSET:Lio/netty/handler/codec/smtp/SmtpCommand;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/smtp/SmtpCommand;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iput-boolean v1, p0, Lio/netty/handler/codec/smtp/SmtpRequestEncoder;->contentExpected:Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SmtpContent expected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    const/4 v2, 0x1

    .line 8
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/codec/smtp/SmtpRequest;->command()Lio/netty/handler/codec/smtp/SmtpCommand;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/netty/handler/codec/smtp/SmtpCommand;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 9
    invoke-interface {v0}, Lio/netty/handler/codec/smtp/SmtpRequest;->command()Lio/netty/handler/codec/smtp/SmtpCommand;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/smtp/SmtpCommand;->EMPTY:Lio/netty/handler/codec/smtp/SmtpCommand;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 10
    :goto_1
    invoke-interface {v0}, Lio/netty/handler/codec/smtp/SmtpRequest;->parameters()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p1, v3}, Lio/netty/handler/codec/smtp/SmtpRequestEncoder;->writeParameters(Ljava/util/List;Lio/netty/buffer/ByteBuf;Z)V

    const/16 v3, 0xd0a

    .line 11
    invoke-static {p1, v3}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 12
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-interface {v0}, Lio/netty/handler/codec/smtp/SmtpRequest;->command()Lio/netty/handler/codec/smtp/SmtpCommand;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/smtp/SmtpCommand;->isContentExpected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iput-boolean v2, p0, Lio/netty/handler/codec/smtp/SmtpRequestEncoder;->contentExpected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    .line 15
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 16
    :cond_3
    throw p2

    .line 17
    :cond_4
    :goto_3
    instance-of p1, p2, Lio/netty/handler/codec/smtp/SmtpContent;

    if-eqz p1, :cond_6

    .line 18
    iget-boolean p1, p0, Lio/netty/handler/codec/smtp/SmtpRequestEncoder;->contentExpected:Z

    if-eqz p1, :cond_5

    .line 19
    move-object p1, p2

    check-cast p1, Lio/netty/handler/codec/smtp/SmtpContent;

    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    instance-of p1, p2, Lio/netty/handler/codec/smtp/LastSmtpContent;

    if-eqz p1, :cond_6

    .line 22
    sget-object p1, Lio/netty/handler/codec/smtp/SmtpRequestEncoder;->DOT_CRLF_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iput-boolean v1, p0, Lio/netty/handler/codec/smtp/SmtpRequestEncoder;->contentExpected:Z

    goto :goto_4

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No SmtpContent expected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    return-void
.end method
