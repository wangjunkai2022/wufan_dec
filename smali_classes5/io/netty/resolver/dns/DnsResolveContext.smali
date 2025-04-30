.class abstract Lio/netty/resolver/dns/DnsResolveContext;
.super Ljava/lang/Object;
.source "DnsResolveContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;,
        Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;,
        Lio/netty/resolver/dns/DnsResolveContext$CombinedDnsServerAddressStream;,
        Lio/netty/resolver/dns/DnsResolveContext$DnsAddressStreamList;,
        Lio/netty/resolver/dns/DnsResolveContext$SearchDomainUnknownHostException;,
        Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CNAME_NOT_FOUND_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

.field private static final NAME_SERVERS_EXHAUSTED_EXCEPTION:Ljava/lang/RuntimeException;

.field private static final NO_MATCHING_RECORD_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

.field private static final NXDOMAIN_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

.field private static final UNRECOGNIZED_TYPE_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;


# instance fields
.field final additionals:[Lio/netty/handler/codec/dns/DnsRecord;

.field private allowedQueries:I

.field private completeEarly:Z

.field private final dnsClass:I

.field private final expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

.field private finalResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final hostname:Ljava/lang/String;

.field private final maxAllowedQueries:I

.field private final nameServerAddrs:Lio/netty/resolver/dns/DnsServerAddressStream;

.field final parent:Lio/netty/resolver/dns/DnsNameResolver;

.field private final queriesInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private triedCNAME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lio/netty/resolver/dns/DnsResolveContext;

    const-string v1, "No answer found and NXDOMAIN response code returned"

    .line 2
    invoke-static {v1}, Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;->newStatic(Ljava/lang/String;)Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;

    move-result-object v1

    const-string v2, "onResponse(..)"

    .line 3
    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    sput-object v1, Lio/netty/resolver/dns/DnsResolveContext;->NXDOMAIN_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    const-string v1, "No matching CNAME record found"

    .line 4
    invoke-static {v1}, Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;->newStatic(Ljava/lang/String;)Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;

    move-result-object v1

    const-string v3, "onResponseCNAME(..)"

    .line 5
    invoke-static {v1, v0, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    sput-object v1, Lio/netty/resolver/dns/DnsResolveContext;->CNAME_NOT_FOUND_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    const-string v1, "No matching record type found"

    .line 6
    invoke-static {v1}, Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;->newStatic(Ljava/lang/String;)Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;

    move-result-object v1

    const-string v3, "onResponseAorAAAA(..)"

    .line 7
    invoke-static {v1, v0, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    sput-object v1, Lio/netty/resolver/dns/DnsResolveContext;->NO_MATCHING_RECORD_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Response type was unrecognized"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    sput-object v1, Lio/netty/resolver/dns/DnsResolveContext;->UNRECOGNIZED_TYPE_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    const-string v1, "No name servers returned an answer"

    .line 9
    invoke-static {v1}, Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;->newStatic(Ljava/lang/String;)Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;

    move-result-object v1

    const-string v2, "tryToFinishResolve(..)"

    .line 10
    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    sput-object v0, Lio/netty/resolver/dns/DnsResolveContext;->NAME_SERVERS_EXHAUSTED_EXCEPTION:Ljava/lang/RuntimeException;

    return-void
.end method

.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;I[Lio/netty/handler/codec/dns/DnsRecordType;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 5
    iput-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 6
    iput p3, p0, Lio/netty/resolver/dns/DnsResolveContext;->dnsClass:I

    .line 7
    iput-object p4, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 8
    iput-object p5, p0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    const-string p2, "nameServerAddrs"

    .line 9
    invoke-static {p6, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/resolver/dns/DnsServerAddressStream;

    iput-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->nameServerAddrs:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 10
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->maxQueriesPerResolve()I

    move-result p1

    iput p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->maxAllowedQueries:I

    .line 11
    iput p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    return-void
.end method

.method static synthetic access$000(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/netty/resolver/dns/DnsResolveContext;Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/resolver/dns/DnsResolveContext;->internalResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lio/netty/resolver/dns/DnsResolveContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    return p0
.end method

.method static synthetic access$400(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/netty/resolver/dns/DnsResolveContext;->onResponse(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$700(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/netty/resolver/dns/DnsResolveContext;->tryToFinishResolve(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static buildAliasMap(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/channel/EventLoop;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Lio/netty/resolver/dns/DnsCnameCache;",
            "Lio/netty/channel/EventLoop;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {p0, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    sget-object v3, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {p0, v3, v2}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v4

    .line 4
    sget-object v5, Lio/netty/handler/codec/dns/DnsRecordType;->CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    instance-of v4, v3, Lio/netty/handler/codec/dns/DnsRawRecord;

    if-nez v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    move-object v4, v3

    check-cast v4, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {v4}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 7
    invoke-static {v4}, Lio/netty/resolver/dns/DnsResolveContext;->decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 8
    new-instance v1, Ljava/util/HashMap;

    const/16 v5, 0x8

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    :cond_3
    invoke-interface {v3}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v5}, Lio/netty/resolver/dns/DnsResolveContext;->hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v4}, Lio/netty/resolver/dns/DnsResolveContext;->hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 14
    invoke-interface {v3}, Lio/netty/handler/codec/dns/DnsRecord;->timeToLive()J

    move-result-wide v9

    move-object v6, p1

    move-object v11, p2

    invoke-interface/range {v6 .. v11}, Lio/netty/resolver/dns/DnsCnameCache;->cache(Ljava/lang/String;Ljava/lang/String;JLio/netty/channel/EventLoop;)V

    .line 15
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method static decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 2
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lio/netty/handler/codec/CorruptedFrameException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 4
    throw v0

    :catch_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method private static extractAuthoritativeNameServers(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsResponse;)Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;
    .locals 4

    .line 1
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->AUTHORITY:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v2, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;

    invoke-direct {v2, p0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    .line 3
    sget-object v3, Lio/netty/handler/codec/dns/DnsSection;->AUTHORITY:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {p1, v3, p0}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->add(Lio/netty/handler/codec/dns/DnsRecord;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v2}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method private finishResolve(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/Future;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    invoke-virtual {p0, p2}, Lio/netty/resolver/dns/DnsResolveContext;->filterResults(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lio/netty/resolver/dns/DnsNameResolver;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 10
    :cond_2
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->maxAllowedQueries:I

    iget v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    sub-int/2addr v0, v1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "failed to resolve \'"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 13
    iget v2, p0, Lio/netty/resolver/dns/DnsResolveContext;->maxAllowedQueries:I

    if-ge v0, v2, :cond_3

    const-string v2, " after "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " queries "

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, ". Exceeded max queries per resolve "

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->maxAllowedQueries:I

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    :cond_4
    :goto_1
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_5

    .line 21
    iget-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    invoke-virtual {p0, p2, v1, v0}, Lio/netty/resolver/dns/DnsResolveContext;->cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/UnknownHostException;)V

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v0, p2}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 23
    :goto_2
    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private followCname(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/String;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    move-result-object v1

    invoke-static {p2}, Lio/netty/resolver/dns/DnsResolveContext;->hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/resolver/dns/DnsCnameCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    :goto_1
    invoke-direct {p0, p2}, Lio/netty/resolver/dns/DnsResolveContext;->getNameServers(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v4

    .line 5
    :try_start_0
    new-instance v6, Lio/netty/handler/codec/dns/DefaultDnsQuestion;

    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object p1

    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->dnsClass:I

    invoke-direct {v6, p2, p1, v0}, Lio/netty/handler/codec/dns/DefaultDnsQuestion;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .line 6
    invoke-interface {p3, v6}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCNAMEd(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move-object v9, p4

    invoke-direct/range {v3 .. v10}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    invoke-interface {p3, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    move-object p2, v1

    goto :goto_0
.end method

.method private getNameServers(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsResolveContext;->getNameServersFromCache(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->nameServerAddrs:Lio/netty/resolver/dns/DnsServerAddressStream;

    invoke-interface {p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->duplicate()Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getNameServersFromCache(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    move-result-object v3

    invoke-interface {v3, p1}, Lio/netty/resolver/dns/AuthoritativeDnsServerCache;->get(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method private handleRedirect(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/handler/codec/dns/DnsResponse;

    .line 2
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {p2, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 3
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lio/netty/resolver/dns/DnsResolveContext;->extractAuthoritativeNameServers(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsResponse;)Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    sget-object v2, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {p2, v2}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 6
    sget-object v5, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {p2, v5, v4}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v5

    .line 7
    invoke-interface {v5}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/dns/DnsRecordType;->A:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v6}, Lio/netty/resolver/dns/DnsNameResolver;->supportsARecords()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    :cond_0
    invoke-interface {v5}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/dns/DnsRecordType;->AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v6}, Lio/netty/resolver/dns/DnsNameResolver;->supportsAAAARecords()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0, v6, v5, v3}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->handleWithAdditional(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->resolveCache()Lio/netty/resolver/dns/DnsCache;

    move-result-object v2

    invoke-virtual {v0, p2, v2, v3}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->handleWithoutAdditionals(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V

    .line 11
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->addressList()Ljava/util/List;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 13
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2, p2}, Lio/netty/resolver/dns/DnsNameResolver;->newRedirectDnsServerStream(Ljava/lang/String;Ljava/util/List;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    .line 15
    new-instance p2, Lio/netty/resolver/dns/DnsResolveContext$DnsAddressStreamList;

    invoke-direct {p2, v4}, Lio/netty/resolver/dns/DnsResolveContext$DnsAddressStreamList;-><init>(Lio/netty/resolver/dns/DnsServerAddressStream;)V

    .line 16
    invoke-interface {p3, p2}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryRedirected(Ljava/util/List;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move-object v6, p1

    move-object v9, p4

    .line 17
    invoke-direct/range {v3 .. v10}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private hasNDots()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v4}, Lio/netty/resolver/dns/DnsNameResolver;->ndots()I

    move-result v4

    if-lt v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 1
    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->endsWith(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private internalResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    move-result-object v0

    invoke-static {p1}, Lio/netty/resolver/dns/DnsResolveContext;->hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/resolver/dns/DnsCnameCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsResolveContext;->getNameServers(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v6

    .line 3
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    .line 4
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    aget-object v2, v0, v8

    invoke-interface {v6}, Lio/netty/resolver/dns/DnsServerAddressStream;->duplicate()Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsResolveContext;->query(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;Lio/netty/resolver/dns/DnsServerAddressStream;ZLio/netty/util/concurrent/Promise;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->flushQueries()V

    return-void

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    aget-object v2, v0, v7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsResolveContext;->query(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;Lio/netty/resolver/dns/DnsServerAddressStream;ZLio/netty/util/concurrent/Promise;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->flushQueries()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {p2}, Lio/netty/resolver/dns/DnsNameResolver;->flushQueries()V

    .line 8
    throw p1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method private newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->dnsQueryLifecycleObserverFactory()Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object p1

    return-object p1
.end method

.method private onExpectedResponse(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-interface/range {p2 .. p2}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/dns/DnsResponse;

    .line 2
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    move-result-object v2

    iget-object v3, v0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v3}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/netty/resolver/dns/DnsResolveContext;->buildAliasMap(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/channel/EventLoop;)Ljava/util/Map;

    move-result-object v2

    .line 3
    sget-object v3, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {v1, v3}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    move-result v3

    .line 4
    iget-boolean v4, v0, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v3, :cond_c

    .line 5
    sget-object v9, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    invoke-interface {v1, v9, v6}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    move-result-object v9

    .line 6
    invoke-interface {v9}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v10

    .line 7
    iget-object v11, v0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    if-ne v10, v14, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_2

    goto/16 :goto_7

    .line 8
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-interface {v9}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 11
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 12
    :cond_3
    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 13
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    if-nez v10, :cond_3

    :goto_3
    if-nez v10, :cond_5

    goto :goto_7

    .line 14
    :cond_5
    iget-object v10, v0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    iget-object v11, v0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    iget-object v12, v0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v12}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v12

    invoke-virtual {p0, v9, v10, v11, v12}, Lio/netty/resolver/dns/DnsResolveContext;->convertRecord(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/channel/EventLoop;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_7

    :cond_6
    if-nez v4, :cond_7

    .line 15
    invoke-virtual {p0, v10}, Lio/netty/resolver/dns/DnsResolveContext;->isCompleteEarly(Ljava/lang/Object;)Z

    move-result v4

    .line 16
    :cond_7
    iget-object v7, v0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    if-nez v7, :cond_8

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    const/16 v11, 0x8

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    .line 18
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 19
    :cond_8
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->isDuplicateAllowed()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    const/4 v7, 0x1

    goto :goto_6

    .line 20
    :cond_a
    :goto_4
    iget-object v7, v0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    const/4 v7, 0x0

    .line 21
    :goto_6
    iget-object v11, v0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    iget-object v12, v0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    invoke-virtual {p0, v11, v12, v9, v10}, Lio/netty/resolver/dns/DnsResolveContext;->cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/Object;)V

    if-eqz v7, :cond_b

    .line 22
    invoke-static {v10}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    :cond_b
    const/4 v7, 0x1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 23
    :cond_c
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v7, :cond_e

    if-eqz v4, :cond_d

    .line 24
    iput-boolean v8, v0, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    .line 25
    :cond_d
    invoke-interface/range {p3 .. p3}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->querySucceed()V

    return-void

    .line 26
    :cond_e
    sget-object v1, Lio/netty/resolver/dns/DnsResolveContext;->NO_MATCHING_RECORD_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    move-object/from16 v3, p3

    invoke-interface {v3, v1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_f
    move-object/from16 v3, p3

    .line 27
    invoke-interface/range {p3 .. p3}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->querySucceed()V

    .line 28
    invoke-direct/range {p0 .. p1}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object v1

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    invoke-direct {p0, v3, v2, v1, v4}, Lio/netty/resolver/dns/DnsResolveContext;->onResponseCNAME(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/util/Map;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V

    :goto_8
    return-void
.end method

.method private onResponse(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "I",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p3

    move-object v10, p4

    move-object/from16 v1, p5

    move-object/from16 v7, p6

    .line 1
    :try_start_0
    invoke-interface {p4}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/dns/DnsResponse;

    .line 2
    invoke-interface {v2}, Lio/netty/handler/codec/dns/DnsResponse;->code()Lio/netty/handler/codec/dns/DnsResponseCode;

    move-result-object v3

    .line 3
    sget-object v4, Lio/netty/handler/codec/dns/DnsResponseCode;->NOERROR:Lio/netty/handler/codec/dns/DnsResponseCode;

    if-ne v3, v4, :cond_4

    .line 4
    invoke-direct {p0, p3, p4, v1, v7}, Lio/netty/resolver/dns/DnsResolveContext;->handleRedirect(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {p3}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    move-result-object v2

    .line 7
    sget-object v3, Lio/netty/handler/codec/dns/DnsRecordType;->CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    if-ne v2, v3, :cond_1

    .line 8
    invoke-interface {p4}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/dns/DnsResponse;

    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    move-result-object v3

    iget-object v4, v9, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v4}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/netty/resolver/dns/DnsResolveContext;->buildAliasMap(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/channel/EventLoop;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p3, v2, v1, v7}, Lio/netty/resolver/dns/DnsResolveContext;->onResponseCNAME(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/util/Map;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_1
    :try_start_2
    iget-object v3, v9, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-ne v2, v6, :cond_2

    .line 11
    invoke-direct {p0, p3, p4, v1, v7}, Lio/netty/resolver/dns/DnsResolveContext;->onExpectedResponse(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_3
    :try_start_3
    sget-object v0, Lio/netty/resolver/dns/DnsResolveContext;->UNRECOGNIZED_TYPE_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    invoke-interface {v1, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_4
    :try_start_4
    sget-object v4, Lio/netty/handler/codec/dns/DnsResponseCode;->NXDOMAIN:Lio/netty/handler/codec/dns/DnsResponseCode;

    if-eq v3, v4, :cond_5

    add-int/lit8 v4, p2, 0x1

    .line 16
    invoke-interface {v1, v3}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryNoAnswer(Lio/netty/handler/codec/dns/DnsResponseCode;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v4

    move-object v4, p3

    move-object/from16 v7, p6

    .line 17
    invoke-direct/range {v1 .. v8}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 18
    :cond_5
    sget-object v3, Lio/netty/resolver/dns/DnsResolveContext;->NXDOMAIN_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    invoke-interface {v1, v3}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 19
    invoke-interface {v2}, Lio/netty/handler/codec/dns/DnsResponse;->isAuthoritativeAnswer()Z

    move-result v1

    if-nez v1, :cond_6

    add-int/lit8 v3, p2, 0x1

    .line 20
    invoke-direct {p0, p3}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v7, p6

    .line 21
    invoke-direct/range {v1 .. v8}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :cond_6
    :goto_1
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 23
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private onResponseCNAME(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/util/Map;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1, v0, p3, p4}, Lio/netty/resolver/dns/DnsResolveContext;->followCname(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/String;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, Lio/netty/resolver/dns/DnsResolveContext;->CNAME_NOT_FOUND_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    invoke-interface {p3, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "I",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Z",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    iget-boolean v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    if-nez v0, :cond_2

    invoke-interface/range {p1 .. p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->size()I

    move-result v0

    move/from16 v5, p2

    if-ge v5, v0, :cond_3

    iget v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    if-eqz v0, :cond_3

    .line 2
    invoke-interface/range {p6 .. p6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    .line 4
    invoke-interface/range {p1 .. p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->next()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 6
    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->queryUnresolvedNameserver(Ljava/net/InetSocketAddress;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v0, v0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 8
    iget-object v2, v8, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v2, v2, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    .line 9
    invoke-interface {v2}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v15

    .line 10
    iget-object v9, v8, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v12, v8, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    move-object v10, v1

    move-object/from16 v11, p3

    move/from16 v13, p5

    move-object v14, v0

    .line 11
    invoke-virtual/range {v9 .. v15}, Lio/netty/resolver/dns/DnsNameResolver;->query0(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;ZLio/netty/channel/ChannelPromise;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v7

    .line 12
    iget-object v2, v8, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p4

    .line 13
    invoke-interface {v4, v1, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryWritten(Ljava/net/InetSocketAddress;Lio/netty/channel/ChannelFuture;)V

    .line 14
    new-instance v9, Lio/netty/resolver/dns/DnsResolveContext$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/resolver/dns/DnsResolveContext$2;-><init>(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;)V

    invoke-interface {v7, v9}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-void

    :cond_2
    move/from16 v5, p2

    :cond_3
    :goto_0
    move-object/from16 v4, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 15
    invoke-direct/range {v0 .. v6}, Lio/netty/resolver/dns/DnsResolveContext;->tryToFinishResolve(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void
.end method

.method private query(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;Lio/netty/resolver/dns/DnsServerAddressStream;ZLio/netty/util/concurrent/Promise;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/handler/codec/dns/DnsRecordType;",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "Z",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 16
    :try_start_0
    new-instance v3, Lio/netty/handler/codec/dns/DefaultDnsQuestion;

    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->dnsClass:I

    invoke-direct {v3, p1, p2, v0}, Lio/netty/handler/codec/dns/DefaultDnsQuestion;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0, v3}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p3

    .line 18
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create DNS Question for: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p5, p4}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method private queryUnresolvedNameserver(Ljava/net/InetSocketAddress;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "I",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    .line 3
    iget-object v0, v10, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v2

    .line 5
    iget-object v0, v10, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, v10, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v12

    .line 7
    new-instance v13, Lio/netty/resolver/dns/DnsResolveContext$3;

    move-object v0, v13

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/netty/resolver/dns/DnsResolveContext$3;-><init>(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/util/concurrent/Future;Ljava/net/InetSocketAddress;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    invoke-interface {v12, v13}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 8
    iget-object v0, v10, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->resolveCache()Lio/netty/resolver/dns/DnsCache;

    move-result-object v1

    iget-object v2, v10, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 9
    invoke-virtual {v2}, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamiliesUnsafe()[Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v2

    .line 10
    invoke-static {v11, v0, v12, v1, v2}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAllCached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;[Lio/netty/channel/socket/InternetProtocolFamily;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    move-result-object v0

    .line 12
    new-instance v9, Lio/netty/resolver/dns/DnsAddressResolveContext;

    iget-object v2, v10, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v4, v10, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 13
    invoke-virtual {v2, v11}, Lio/netty/resolver/dns/DnsNameResolver;->newNameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v5

    .line 14
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->resolveCache()Lio/netty/resolver/dns/DnsCache;

    move-result-object v6

    new-instance v7, Lio/netty/resolver/dns/DnsResolveContext$4;

    invoke-direct {v7, p0, v0}, Lio/netty/resolver/dns/DnsResolveContext$4;-><init>(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v8}, Lio/netty/resolver/dns/DnsAddressResolveContext;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Z)V

    .line 15
    invoke-virtual {v9, v12}, Lio/netty/resolver/dns/DnsResolveContext;->resolve(Lio/netty/util/concurrent/Promise;)V

    :cond_1
    return-void
.end method

.method private tryToFinishResolve(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "I",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    invoke-interface {p4, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCancelled(I)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    if-nez v1, :cond_3

    .line 4
    invoke-interface {p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p2, v1, :cond_2

    .line 5
    sget-object v1, Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserver;->INSTANCE:Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserver;

    if-ne p4, v1, :cond_1

    add-int/2addr v2, p2

    .line 6
    invoke-direct {p0, p3}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    .line 7
    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    add-int/2addr v2, p2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 8
    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 9
    :cond_2
    sget-object v0, Lio/netty/resolver/dns/DnsResolveContext;->NAME_SERVERS_EXHAUSTED_EXCEPTION:Ljava/lang/RuntimeException;

    invoke-interface {p4, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    if-nez p6, :cond_4

    .line 10
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->triedCNAME:Z

    if-nez v0, :cond_4

    .line 11
    iput-boolean v2, p0, Lio/netty/resolver/dns/DnsResolveContext;->triedCNAME:Z

    .line 12
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    sget-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    invoke-direct {p0, v1}, Lio/netty/resolver/dns/DnsResolveContext;->getNameServers(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsResolveContext;->query(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;Lio/netty/resolver/dns/DnsServerAddressStream;ZLio/netty/util/concurrent/Promise;)Z

    return-void

    .line 13
    :cond_3
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    invoke-interface {p4, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCancelled(I)V

    .line 14
    :cond_4
    invoke-direct {p0, p5, p6}, Lio/netty/resolver/dns/DnsResolveContext;->finishResolve(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    move-result-object v0

    return-object v0
.end method

.method abstract cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/UnknownHostException;)V
.end method

.method cnameCache()Lio/netty/resolver/dns/DnsCnameCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    move-result-object v0

    return-object v0
.end method

.method abstract convertRecord(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/channel/EventLoop;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/channel/EventLoop;",
            ")TT;"
        }
    .end annotation
.end method

.method doSearchDomainQuery(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget v3, p0, Lio/netty/resolver/dns/DnsResolveContext;->dnsClass:I

    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    iget-object v5, p0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext;->nameServerAddrs:Lio/netty/resolver/dns/DnsServerAddressStream;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lio/netty/resolver/dns/DnsResolveContext;->newResolverContext(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;I[Lio/netty/handler/codec/dns/DnsRecordType;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)Lio/netty/resolver/dns/DnsResolveContext;

    move-result-object v0

    .line 2
    invoke-direct {v0, p1, p2}, Lio/netty/resolver/dns/DnsResolveContext;->internalResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method abstract filterResults(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract isCompleteEarly(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract isDuplicateAllowed()Z
.end method

.method abstract newResolverContext(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;I[Lio/netty/handler/codec/dns/DnsRecordType;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)Lio/netty/resolver/dns/DnsResolveContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsNameResolver;",
            "Ljava/lang/String;",
            "I[",
            "Lio/netty/handler/codec/dns/DnsRecordType;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            ")",
            "Lio/netty/resolver/dns/DnsResolveContext<",
            "TT;>;"
        }
    .end annotation
.end method

.method resolve(Lio/netty/util/concurrent/Promise;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->searchDomains()[Ljava/lang/String;

    move-result-object v5

    .line 2
    array-length v0, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->ndots()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lio/netty/util/internal/StringUtil;->endsWith(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsResolveContext;->hasNDots()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    xor-int/lit8 v3, v6, 0x1

    .line 5
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v1}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v7

    .line 6
    new-instance v8, Lio/netty/resolver/dns/DnsResolveContext$1;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/resolver/dns/DnsResolveContext$1;-><init>(Lio/netty/resolver/dns/DnsResolveContext;ILio/netty/util/concurrent/Promise;[Ljava/lang/String;Z)V

    invoke-interface {v7, v8}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 7
    invoke-virtual {p0, v0, v7}, Lio/netty/resolver/dns/DnsResolveContext;->doSearchDomainQuery(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lio/netty/resolver/dns/DnsResolveContext;->internalResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    :goto_2
    return-void
.end method

.method resolveCache()Lio/netty/resolver/dns/DnsCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->resolveCache()Lio/netty/resolver/dns/DnsCache;

    move-result-object v0

    return-object v0
.end method
