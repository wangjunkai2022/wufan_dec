.class final Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;
.super Ljava/lang/Object;
.source "DnsServerAddressStreamProviders.java"

# interfaces
.implements Lio/netty/resolver/dns/DnsServerAddressStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/resolver/dns/DnsServerAddressStreamProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private volatile currentProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

.field private final lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;->provider()Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;->currentProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private provider()Lio/netty/resolver/dns/DnsServerAddressStreamProvider;
    .locals 1

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parseSilently()Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;->currentProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {}, Lio/netty/resolver/dns/DnsServerAddressStreamProviders;->access$000()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 4
    iget-object v3, p0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;->provider()Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    move-result-object v2

    iput-object v2, p0, Lio/netty/resolver/dns/DnsServerAddressStreamProviders$1;->currentProvider:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    .line 6
    :cond_0
    invoke-interface {v2, p1}, Lio/netty/resolver/dns/DnsServerAddressStreamProvider;->nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    return-object p1
.end method
