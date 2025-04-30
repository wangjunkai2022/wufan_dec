.class Lorg/jboss/netty/channel/socket/nio/x$c;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/x$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:[Ljava/nio/ByteBuffer;

.field private final b:I

.field private c:J

.field private final d:I


# direct methods
.method constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->b:I

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput v2, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->d:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public c(Ljava/nio/channels/WritableByteChannel;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/nio/channels/GatheringByteChannel;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {p1, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    :goto_1
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    int-to-long v2, v3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    return-wide v2
.end method

.method public d(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->a:[Ljava/nio/ByteBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {p1, v4, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    iget-wide p1, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/x$c;->c:J

    return-wide v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
