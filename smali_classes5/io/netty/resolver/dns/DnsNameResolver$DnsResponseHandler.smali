.class final Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "DnsNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/resolver/dns/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DnsResponseHandler"
.end annotation


# instance fields
.field private final channelActivePromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/resolver/dns/DnsNameResolver;


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->channelActivePromise:Lio/netty/util/concurrent/Promise;

    return-void
.end method

.method static synthetic access$400(Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->channelActivePromise:Lio/netty/util/concurrent/Promise;

    return-object p0
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->channelActivePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lio/netty/handler/codec/dns/DatagramDnsResponse;

    .line 2
    invoke-virtual {p2}, Lio/netty/handler/codec/dns/AbstractDnsMessage;->id()I

    move-result p1

    .line 3
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v3, v3, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Lio/netty/handler/codec/dns/DatagramDnsResponse;->sender()Ljava/net/InetSocketAddress;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const-string v2, "{} RECEIVED: UDP [{}: {}], {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v0, v0, Lio/netty/resolver/dns/DnsNameResolver;->queryContextManager:Lio/netty/resolver/dns/DnsQueryContextManager;

    invoke-virtual {p2}, Lio/netty/handler/codec/dns/DatagramDnsResponse;->sender()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/netty/resolver/dns/DnsQueryContextManager;->get(Ljava/net/InetSocketAddress;I)Lio/netty/resolver/dns/DnsQueryContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iget-object v1, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v1, v1, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "{} Received a DNS response with an unknown ID: {}"

    invoke-interface {v0, v2, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p2}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    return-void

    .line 8
    :cond_1
    invoke-virtual {p2}, Lio/netty/handler/codec/dns/DefaultDnsResponse;->isTruncated()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-static {v1}, Lio/netty/resolver/dns/DnsNameResolver;->access$700(Lio/netty/resolver/dns/DnsNameResolver;)Lio/netty/channel/ChannelFactory;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance v1, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v1}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    .line 10
    sget-object v2, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v2

    check-cast v2, Lio/netty/bootstrap/Bootstrap;

    iget-object v3, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    .line 11
    invoke-virtual {v3}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v2

    check-cast v2, Lio/netty/bootstrap/Bootstrap;

    iget-object v3, p0, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;->this$0:Lio/netty/resolver/dns/DnsNameResolver;

    .line 12
    invoke-static {v3}, Lio/netty/resolver/dns/DnsNameResolver;->access$700(Lio/netty/resolver/dns/DnsNameResolver;)Lio/netty/channel/ChannelFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/bootstrap/AbstractBootstrap;->channelFactory(Lio/netty/channel/ChannelFactory;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v2

    check-cast v2, Lio/netty/bootstrap/Bootstrap;

    .line 13
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$800()Lio/netty/handler/codec/dns/TcpDnsQueryEncoder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/bootstrap/AbstractBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 14
    invoke-virtual {p2}, Lio/netty/handler/codec/dns/DatagramDnsResponse;->sender()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler$1;-><init>(Lio/netty/resolver/dns/DnsNameResolver$DnsResponseHandler;ILio/netty/resolver/dns/DnsQueryContext;Lio/netty/handler/codec/dns/DatagramDnsResponse;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {v0, p2}, Lio/netty/resolver/dns/DnsQueryContext;->finish(Lio/netty/channel/AddressedEnvelope;)V

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/netty/resolver/dns/DnsNameResolver;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    const-string v1, "{} Unexpected exception: "

    invoke-interface {v0, v1, p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
