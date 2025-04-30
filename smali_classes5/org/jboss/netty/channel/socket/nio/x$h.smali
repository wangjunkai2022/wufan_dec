.class Lorg/jboss/netty/channel/socket/nio/x$h;
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
    name = "h"
.end annotation


# instance fields
.field final a:Ljava/nio/ByteBuffer;

.field final b:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->a:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c(Ljava/nio/channels/WritableByteChannel;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->a:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final d(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/x$h;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
