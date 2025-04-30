.class public final Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;
.super Ljava/lang/Object;
.source "UnixResolverDnsServerAddressStreamProvider.java"

# interfaces
.implements Lio/netty/resolver/dns/DnsServerAddressStreamProvider;


# static fields
.field static final DEFAULT_NDOTS:I = 0x1

.field private static final DOMAIN_ROW_LABEL:Ljava/lang/String; = "domain"

.field private static final ETC_RESOLVER_DIR:Ljava/lang/String; = "/etc/resolver"

.field private static final ETC_RESOLV_CONF_FILE:Ljava/lang/String; = "/etc/resolv.conf"

.field private static final NAMESERVER_ROW_LABEL:Ljava/lang/String; = "nameserver"

.field private static final NDOTS_LABEL:Ljava/lang/String; = "ndots:"

.field private static final OPTIONS_ROW_LABEL:Ljava/lang/String; = "options"

.field private static final PORT_ROW_LABEL:Ljava/lang/String; = "port"

.field private static final SEARCH_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEARCH_ROW_LABEL:Ljava/lang/String; = "search"

.field private static final SORTLIST_ROW_LABEL:Ljava/lang/String; = "sortlist"

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

.field private final domainToNameServerStreamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;

    .line 2
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "\\s+"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->SEARCH_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/File;[Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/io/File;

    const-string v2, "etcResolvConf"

    .line 2
    invoke-static {p1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parse([Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 3
    array-length v2, p2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {p2}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parse([Ljava/io/File;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    iput-object p2, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->domainToNameServerStreamMap:Ljava/util/Map;

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/resolver/dns/DnsServerAddresses;

    if-nez v2, :cond_3

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/resolver/dns/DnsServerAddresses;

    iput-object p1, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

    goto :goto_2

    .line 9
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " didn\'t provide any name servers"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_3
    iput-object v2, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

    :goto_2
    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 14
    :goto_1
    invoke-direct {p0, v1, v0}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;-><init>(Ljava/io/File;[Ljava/io/File;)V

    return-void
.end method

.method private mayOverrideNameServers()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->domainToNameServerStreamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/resolver/dns/DnsServerAddressStream;->next()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static varargs parse([Ljava/io/File;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "sortlist"

    .line 1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_12

    aget-object v7, v1, v6

    .line 3
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v16, v4

    const/4 v4, 0x0

    goto/16 :goto_c

    .line 4
    :cond_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    .line 5
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x35

    move-object v12, v11

    const/16 v13, 0x35

    move-object v11, v0

    .line 8
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v15, 0x23

    if-eq v0, v15, :cond_d

    const/16 v9, 0x3b

    if-ne v0, v9, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v0, "nameserver"

    .line 11
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    .line 12
    invoke-static {v14, v0}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, ". value: "

    const-string v5, "error parsing label nameserver in file "

    if-ltz v0, :cond_6

    .line 13
    :try_start_3
    invoke-static {v14, v0}, Lio/netty/util/internal/StringUtil;->indexOfWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v15

    const/4 v1, -0x1

    if-ne v15, v1, :cond_2

    .line 14
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v16, v4

    goto :goto_2

    :cond_2
    move/from16 v16, v4

    .line 15
    :try_start_4
    invoke-static {v14, v15}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 16
    invoke-virtual {v14, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x23

    if-ne v1, v4, :cond_5

    .line 17
    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_2
    invoke-static {v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x2e

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x0

    .line 22
    :try_start_5
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". invalid IP value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v4, 0x0

    .line 24
    :goto_3
    invoke-static {v0, v13}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_5
    const/4 v4, 0x0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_6
    move/from16 v16, v4

    const/4 v4, 0x0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move/from16 v16, v4

    const/4 v4, 0x0

    const-string v0, "domain"

    .line 27
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v1, " value: "

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    .line 28
    :try_start_6
    invoke-static {v14, v0}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 29
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 30
    :try_start_7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_8

    .line 31
    :try_start_8
    invoke-static {v3, v1, v11}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v12, v1

    goto/16 :goto_a

    .line 32
    :cond_8
    :goto_4
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v5, 0x2

    :try_start_a
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v11, v0

    move-object v12, v1

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v5, 0x2

    :goto_5
    move-object v12, v1

    goto/16 :goto_b

    :cond_9
    const/4 v5, 0x2

    .line 33
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error parsing label domain in file "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v5, 0x2

    const-string v0, "port"

    .line 34
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    .line 35
    invoke-static {v14, v0}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 36
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    goto :goto_8

    .line 37
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error parsing label port in file "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_c
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    sget-object v0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "row type {} not supported. Ignoring line: {}"

    invoke-interface {v0, v1, v2, v14}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_a

    :cond_d
    :goto_6
    move/from16 v16, v4

    const/4 v4, 0x0

    :goto_7
    const/4 v5, 0x2

    :cond_e
    :goto_8
    move-object/from16 v1, p0

    move/from16 v4, v16

    const/4 v5, 0x0

    const/4 v9, 0x2

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move/from16 v16, v4

    :goto_9
    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x2

    .line 40
    :goto_b
    :try_start_c
    sget-object v1, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v9, "Could not parse entry. Ignoring line: {}"

    invoke-interface {v1, v9, v14, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    move/from16 v16, v4

    const/4 v4, 0x0

    .line 41
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 42
    invoke-static {v3, v12, v11}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 43
    :cond_10
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move/from16 v4, v16

    const/4 v5, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v9, v10

    goto :goto_d

    :catchall_1
    move-exception v0

    :goto_d
    if-nez v9, :cond_11

    .line 44
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_e

    .line 45
    :cond_11
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 46
    :goto_e
    throw v0

    :cond_12
    return-object v3
.end method

.method static parseEtcResolverFirstNdots()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/resolv.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parseEtcResolverFirstNdots(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static parseEtcResolverFirstNdots(Ljava/io/File;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v2, "options"

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ndots:"

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    add-int/lit8 v2, v2, 0x6

    const/16 v3, 0x20

    .line 7
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return p0

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_0
    if-nez v1, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 12
    :goto_1
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static parseEtcResolverSearchDomains()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/resolv.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parseEtcResolverSearchDomains(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static parseEtcResolverSearchDomains(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x6

    if-nez p0, :cond_1

    const-string v5, "domain"

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-static {v3, v4}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v5, "search"

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-static {v3, v4}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 11
    sget-object v5, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->SEARCH_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz p0, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    :goto_1
    if-nez v2, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 18
    :goto_2
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static parseSilently()Lio/netty/resolver/dns/DnsServerAddressStreamProvider;
    .locals 6

    const-string v0, "/etc/resolver"

    const-string v1, "/etc/resolv.conf"

    .line 1
    :try_start_0
    new-instance v2, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;

    invoke-direct {v2, v1, v0}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {v2}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->mayOverrideNameServers()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    .line 3
    sget-object v3, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const-string v0, "failed to parse {} and/or {}"

    invoke-interface {v3, v0, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    return-object v0
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/String;Lio/netty/resolver/dns/DnsServerAddresses;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/resolver/dns/DnsServerAddresses;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "Domain name {} already maps to addresses {} so new addresses {} will be discarded"

    invoke-interface {p0, p1, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/netty/resolver/dns/DnsServerAddresses;->sequential(Ljava/lang/Iterable;)Lio/netty/resolver/dns/DnsServerAddresses;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Lio/netty/resolver/dns/DnsServerAddresses;)V

    return-void
.end method


# virtual methods
.method public nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 3

    :goto_0
    const/16 v0, 0x2e

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->domainToNameServerStreamMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/resolver/dns/DnsServerAddresses;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    move-result-object p1

    return-object p1
.end method
