.class interface abstract Lorg/jboss/netty/channel/socket/nio/x$g;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "g"
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()J
.end method

.method public abstract c(Ljava/nio/channels/WritableByteChannel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()J
.end method

.method public abstract release()V
.end method
