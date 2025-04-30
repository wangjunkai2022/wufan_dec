.class final Lio/netty/resolver/dns/DatagramDnsQueryContext;
.super Lio/netty/resolver/dns/DnsQueryContext;
.source "DatagramDnsQueryContext.java"


# direct methods
.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsNameResolver;",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/netty/resolver/dns/DnsQueryContext;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method


# virtual methods
.method protected channel()Lio/netty/channel/Channel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->parent()Lio/netty/resolver/dns/DnsNameResolver;

    move-result-object v0

    iget-object v0, v0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    return-object v0
.end method

.method protected newQuery(I)Lio/netty/handler/codec/dns/DnsQuery;
    .locals 3

    .line 1
    new-instance v0, Lio/netty/handler/codec/dns/DatagramDnsQuery;

    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->nameServerAddr()Ljava/net/InetSocketAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lio/netty/handler/codec/dns/DatagramDnsQuery;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;I)V

    return-object v0
.end method

.method protected protocol()Ljava/lang/String;
    .locals 1

    const-string v0, "UDP"

    return-object v0
.end method
