.class final Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
.super Ljava/lang/Object;
.source "NativeDatagramPacketArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/NativeDatagramPacketArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativeDatagramPacket"
.end annotation


# instance fields
.field private final addr:[B

.field private addrLen:I

.field private count:I

.field private memoryAddress:J

.field private port:I

.field private scopeId:I

.field final synthetic this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;


# direct methods
.method constructor <init>(Lio/netty/channel/epoll/NativeDatagramPacketArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    iput-object p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addr:[B

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;JILjava/net/InetSocketAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->init(JILjava/net/InetSocketAddress;)V

    return-void
.end method

.method private init(JILjava/net/InetSocketAddress;)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->memoryAddress:J

    .line 2
    iput p3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->count:I

    const/4 p1, 0x0

    if-nez p4, :cond_0

    .line 3
    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->scopeId:I

    .line 4
    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->port:I

    .line 5
    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addrLen:I

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 7
    instance-of p3, p2, Ljava/net/Inet6Address;

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p3

    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addr:[B

    array-length v1, v0

    invoke-static {p3, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    check-cast p2, Ljava/net/Inet6Address;

    invoke-virtual {p2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p1

    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->scopeId:I

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    iget-object p3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addr:[B

    invoke-static {p2, p3}, Lio/netty/channel/unix/NativeInetAddress;->copyIpv4MappedIpv6Address([B[B)V

    .line 11
    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->scopeId:I

    .line 12
    :goto_0
    iget-object p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addr:[B

    array-length p1, p1

    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addrLen:I

    .line 13
    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->port:I

    :goto_1
    return-void
.end method


# virtual methods
.method newDatagramPacket(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)Lio/netty/channel/socket/DatagramPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addrLen:I

    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-static {v1}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$400(Lio/netty/channel/epoll/NativeDatagramPacketArray;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addr:[B

    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-static {v1}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$400(Lio/netty/channel/epoll/NativeDatagramPacketArray;)[B

    move-result-object v1

    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addrLen:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-static {v0}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$400(Lio/netty/channel/epoll/NativeDatagramPacketArray;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->addr:[B

    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->scopeId:I

    invoke-static {v0, v1, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    .line 5
    :goto_0
    new-instance v1, Lio/netty/channel/socket/DatagramPacket;

    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->count:I

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    new-instance v2, Ljava/net/InetSocketAddress;

    iget v3, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->port:I

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v1, p1, p2, v2}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v1
.end method
