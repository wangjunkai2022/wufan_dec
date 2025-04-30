.class public final Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;
.super Ljava/lang/Object;
.source "MacOSDnsServerAddressStreamProvider.java"

# interfaces
.implements Lio/netty/resolver/dns/DnsServerAddressStreamProvider;


# static fields
.field private static final DEFAULT_PROVIDER:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

.field private static final REFRESH_INTERVAL:J

.field private static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile currentMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;"
        }
    .end annotation
.end field

.field private final lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lio/netty/resolver/dns/DnsServerAddressStreamProviders;->platformDefault()Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->DEFAULT_PROVIDER:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    .line 2
    const-class v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;

    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->REFRESH_INTERVAL:J

    .line 5
    :try_start_0
    invoke-static {}, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->loadNativeLibrary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    :goto_0
    sput-object v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->retrieveCurrentMappings()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->currentMappings:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    invoke-static {}, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->ensureAvailability()V

    return-void
.end method

.method public static ensureAvailability()V
    .locals 3

    .line 1
    sget-object v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    const-string v2, "failed to load the required native library"

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 1
    sget-object v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static loadNativeLibrary()V
    .locals 4

    const-string v0, "os.name"

    .line 1
    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mac"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "netty_resolver_dns_native_macos"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    const-class v2, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 5
    :try_start_0
    invoke-static {v1, v2}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 6
    :try_start_1
    invoke-static {v0, v2}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 7
    sget-object v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to load {}"

    invoke-interface {v0, v2, v1, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 8
    invoke-static {v3, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 9
    throw v3

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only supported on MacOS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native resolvers()[Lio/netty/resolver/dns/macos/DnsResolver;
.end method

.method private static retrieveCurrentMappings()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->resolvers()[Lio/netty/resolver/dns/macos/DnsResolver;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v0, v4

    .line 5
    invoke-virtual {v5}, Lio/netty/resolver/dns/macos/DnsResolver;->options()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mdns"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v5}, Lio/netty/resolver/dns/macos/DnsResolver;->nameservers()[Ljava/net/InetSocketAddress;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 7
    array-length v6, v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v5}, Lio/netty/resolver/dns/macos/DnsResolver;->domain()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v6, ""

    .line 9
    :cond_3
    invoke-virtual {v5}, Lio/netty/resolver/dns/macos/DnsResolver;->nameservers()[Ljava/net/InetSocketAddress;

    move-result-object v7

    const/4 v8, 0x0

    .line 10
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_6

    .line 11
    aget-object v9, v7, v8

    .line 12
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    if-nez v10, :cond_5

    .line 13
    invoke-virtual {v5}, Lio/netty/resolver/dns/macos/DnsResolver;->port()I

    move-result v10

    if-nez v10, :cond_4

    const/16 v10, 0x35

    .line 14
    :cond_4
    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-direct {v11, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    aput-object v11, v7, v8

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {v7}, Lio/netty/resolver/dns/DnsServerAddresses;->sequential([Ljava/net/InetSocketAddress;)Lio/netty/resolver/dns/DnsServerAddresses;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-object v1

    .line 16
    :cond_9
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static unavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->currentMappings:Ljava/util/Map;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    sget-wide v5, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->REFRESH_INTERVAL:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 4
    iget-object v3, p0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->retrieveCurrentMappings()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->currentMappings:Ljava/util/Map;

    :cond_0
    move-object v0, p1

    :goto_0
    const/16 v1, 0x2e

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/resolver/dns/DnsServerAddresses;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, ""

    .line 11
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/resolver/dns/DnsServerAddresses;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    sget-object v0, Lio/netty/resolver/dns/macos/MacOSDnsServerAddressStreamProvider;->DEFAULT_PROVIDER:Lio/netty/resolver/dns/DnsServerAddressStreamProvider;

    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsServerAddressStreamProvider;->nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    return-object p1
.end method
