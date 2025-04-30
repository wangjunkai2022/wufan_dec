.class public final Lio/netty/handler/ssl/OpenSsl;
.super Ljava/lang/Object;
.source "OpenSsl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final AVAILABLE_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----"

.field static final DEFAULT_CIPHERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_BORINGSSL:Z

.field private static final KEY:Ljava/lang/String; = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----"

.field static final SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTS_KEYMANAGER_FACTORY:Z

.field private static final SUPPORTS_OCSP:Z

.field private static final TLSV13_SUPPORTED:Z

.field private static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final USE_KEYMANAGER_FACTORY:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    const-string v1, "io.netty.handler.ssl.openssl.useKeyManagerFactory"

    .line 1
    const-class v0, Lio/netty/handler/ssl/OpenSsl;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "io.netty.handler.ssl.noOpenSsl"

    const/4 v4, 0x0

    .line 2
    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, " will be unavailable."

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "OpenSSL was explicit disabled with -Dio.netty.handler.ssl.noOpenSsl=true"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netty-tcnative explicit disabled; "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lio/netty/handler/ssl/OpenSslEngine;

    .line 5
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string v2, "io.netty.internal.tcnative.SSL"

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netty-tcnative not in the classpath; "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lio/netty/handler/ssl/OpenSslEngine;

    .line 9
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_3

    .line 11
    :try_start_1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->loadTcNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 12
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load netty-tcnative; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lio/netty/handler/ssl/OpenSslEngine;

    .line 13
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " will be unavailable, unless the application has already loaded the symbols by some other means. See https://netty.io/wiki/forked-tomcat-native.html for more information."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {v0, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    const-string v0, "io.netty.handler.ssl.openssl.engine"

    .line 15
    invoke-static {v0, v6}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 16
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Initialize netty-tcnative using engine: \'default\'"

    invoke-interface {v3, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_1
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Initialize netty-tcnative using engine: \'{}\'"

    invoke-interface {v3, v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :goto_2
    invoke-static {v0}, Lio/netty/handler/ssl/OpenSsl;->initializeTcNative(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    if-nez v2, :cond_2

    move-object v2, v0

    .line 19
    :cond_2
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to initialize netty-tcnative; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lio/netty/handler/ssl/OpenSslEngine;

    .line 20
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " will be unavailable. See https://netty.io/wiki/forked-tomcat-native.html for more information."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-interface {v3, v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 22
    :cond_3
    :goto_3
    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_1e

    .line 23
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->versionString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "netty-tcnative using native library: {}"

    invoke-interface {v0, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v3, Ljava/util/LinkedHashSet;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 26
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->versionString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BoringSSL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    const/16 v0, 0x3f

    const/4 v5, 0x1

    .line 27
    :try_start_3
    invoke-static {v0, v5}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 28
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    sget-object v9, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHERS:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 30
    sget-boolean v11, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    invoke-static {v10, v11}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSsl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 31
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 32
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    .line 33
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0, v5}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x1

    :goto_5
    move v9, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_15

    :catch_1
    const/4 v9, 0x0

    :goto_6
    :try_start_5
    const-string v0, "ALL"

    .line 35
    invoke-static {v7, v8, v0, v4}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    .line 36
    invoke-static {v7, v8, v5}, Lio/netty/internal/tcnative/SSL;->newSSL(JZ)J

    move-result-wide v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_11

    const-wide/16 v18, 0x0

    .line 37
    :try_start_6
    invoke-static/range {v16 .. v17}, Lio/netty/internal/tcnative/SSL;->getCiphers(J)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_9

    aget-object v12, v0, v11

    if-eqz v12, :cond_8

    .line 38
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    if-nez v9, :cond_7

    .line 39
    invoke-static {v12}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_8

    .line 40
    :cond_7
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 41
    :cond_9
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    if-eqz v0, :cond_a

    const-string v10, "TLS_AES_128_GCM_SHA256"

    const-string v11, "TLS_AES_256_GCM_SHA384"

    const-string v12, "TLS_CHACHA20_POLY1305_SHA256"

    const-string v13, "AEAD-AES128-GCM-SHA256"

    const-string v14, "AEAD-AES256-GCM-SHA384"

    const-string v15, "AEAD-CHACHA20-POLY1305-SHA256"

    .line 42
    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_a
    const-string v10, "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----"

    .line 43
    sget-object v11, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-static {v10}, Lio/netty/handler/ssl/PemPrivateKey;->valueOf([B)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_f

    .line 44
    :try_start_7
    invoke-static {v7, v8, v6}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V

    .line 45
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->selfSignedCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    .line 46
    sget-object v11, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    new-array v12, v5, [Ljava/security/cert/X509Certificate;

    aput-object v10, v12, v4

    invoke-static {v11, v12}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J

    move-result-wide v21
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 47
    :try_start_8
    invoke-static/range {v21 .. v22}, Lio/netty/internal/tcnative/SSL;->parseX509Chain(J)J

    move-result-wide v23
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 48
    :try_start_9
    sget-object v10, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 49
    invoke-interface/range {v20 .. v20}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v11

    .line 50
    invoke-static {v10, v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v14
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 51
    :try_start_a
    invoke-static {v14, v15, v6}, Lio/netty/internal/tcnative/SSL;->parsePrivateKey(JLjava/lang/String;)J

    move-result-wide v25
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-wide/from16 v10, v16

    move-wide/from16 v12, v23

    move-wide/from16 v27, v14

    move-wide/from16 v14, v25

    .line 52
    :try_start_b
    invoke-static/range {v10 .. v15}, Lio/netty/internal/tcnative/SSL;->setKeyMaterial(JJJ)V
    :try_end_b
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 53
    :try_start_c
    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v0, :cond_b

    .line 54
    invoke-static {v1, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v6, :cond_d

    .line 55
    :try_start_d
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "System property \'io.netty.handler.ssl.openssl.useKeyManagerFactory\' is deprecated and so will be ignored in the future"

    invoke-interface {v1, v6}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_a

    :catchall_3
    move v1, v0

    goto :goto_b

    :cond_b
    if-eqz v6, :cond_c

    .line 56
    :try_start_e
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "System property \'io.netty.handler.ssl.openssl.useKeyManagerFactory\' is deprecated and will be ignored when using BoringSSL"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_9

    :catchall_4
    const/4 v1, 0x1

    goto :goto_b

    :cond_c
    :goto_9
    const/4 v0, 0x1

    :cond_d
    :goto_a
    move v1, v0

    goto :goto_c

    :catchall_5
    const/4 v1, 0x0

    .line 57
    :goto_b
    :try_start_f
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Failed to get useKeyManagerFactory system property."

    invoke-interface {v0, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 58
    :goto_c
    :try_start_10
    invoke-interface/range {v20 .. v20}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-wide/from16 v14, v27

    const/4 v6, 0x1

    goto/16 :goto_12

    :catchall_6
    move-exception v0

    move-wide/from16 v14, v27

    const/4 v6, 0x1

    goto/16 :goto_14

    :catchall_7
    move-exception v0

    move-wide/from16 v14, v27

    const/4 v6, 0x1

    goto/16 :goto_13

    :catch_2
    move-wide/from16 v14, v27

    const/4 v6, 0x1

    goto :goto_11

    :catchall_8
    move-exception v0

    move-wide/from16 v14, v27

    goto :goto_e

    :catch_3
    move-wide/from16 v14, v27

    goto :goto_10

    :catchall_9
    move-exception v0

    move-wide/from16 v27, v14

    move-wide/from16 v25, v18

    goto :goto_e

    :catch_4
    move-wide/from16 v27, v14

    move-wide/from16 v25, v18

    goto :goto_10

    :catchall_a
    move-exception v0

    move-wide/from16 v14, v18

    move-wide/from16 v25, v14

    goto :goto_e

    :catch_5
    move-wide/from16 v14, v18

    move-wide/from16 v25, v14

    goto :goto_10

    :catchall_b
    move-exception v0

    move-wide/from16 v14, v18

    move-wide/from16 v23, v14

    goto :goto_d

    :catch_6
    move-wide/from16 v14, v18

    move-wide/from16 v23, v14

    goto :goto_f

    :catchall_c
    move-exception v0

    move-wide/from16 v14, v18

    move-wide/from16 v21, v14

    move-wide/from16 v23, v21

    :goto_d
    move-wide/from16 v25, v23

    :goto_e
    const/4 v1, 0x0

    const/4 v6, 0x0

    goto :goto_13

    :catch_7
    move-wide/from16 v14, v18

    move-wide/from16 v21, v14

    move-wide/from16 v23, v21

    :goto_f
    move-wide/from16 v25, v23

    :goto_10
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 59
    :goto_11
    :try_start_11
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v10, "KeyManagerFactory not supported."

    invoke-interface {v0, v10}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 60
    :try_start_12
    invoke-interface/range {v20 .. v20}, Lio/netty/util/ReferenceCounted;->release()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 61
    :goto_12
    :try_start_13
    invoke-static/range {v16 .. v17}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V

    cmp-long v0, v21, v18

    if-eqz v0, :cond_e

    .line 62
    invoke-static/range {v21 .. v22}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_e
    cmp-long v0, v14, v18

    if-eqz v0, :cond_f

    .line 63
    invoke-static {v14, v15}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_f
    cmp-long v0, v23, v18

    if-eqz v0, :cond_10

    .line 64
    invoke-static/range {v23 .. v24}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    :cond_10
    cmp-long v0, v25, v18

    if-eqz v0, :cond_11

    .line 65
    invoke-static/range {v25 .. v26}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    .line 66
    :cond_11
    :try_start_14
    invoke-static {v7, v8}, Lio/netty/internal/tcnative/SSLContext;->free(J)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_17

    :catchall_d
    move-exception v0

    .line 67
    :goto_13
    :try_start_15
    invoke-interface/range {v20 .. v20}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 68
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    :catchall_e
    move-exception v0

    goto :goto_14

    :catchall_f
    move-exception v0

    move-wide/from16 v14, v18

    move-wide/from16 v21, v14

    move-wide/from16 v23, v21

    move-wide/from16 v25, v23

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 69
    :goto_14
    :try_start_16
    invoke-static/range {v16 .. v17}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V

    cmp-long v10, v21, v18

    if-eqz v10, :cond_12

    .line 70
    invoke-static/range {v21 .. v22}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_12
    cmp-long v10, v14, v18

    if-eqz v10, :cond_13

    .line 71
    invoke-static {v14, v15}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_13
    cmp-long v10, v23, v18

    if-eqz v10, :cond_14

    .line 72
    invoke-static/range {v23 .. v24}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    :cond_14
    cmp-long v10, v25, v18

    if-eqz v10, :cond_15

    .line 73
    invoke-static/range {v25 .. v26}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 74
    :cond_15
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    :catchall_10
    move-exception v0

    goto :goto_15

    :catchall_11
    move-exception v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 75
    :goto_15
    :try_start_17
    invoke-static {v7, v8}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 76
    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    :catch_8
    move-exception v0

    goto :goto_16

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 77
    :goto_16
    sget-object v7, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "Failed to get the list of available OpenSSL cipher suites."

    invoke-interface {v7, v8, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_17
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 79
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 80
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v3, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 81
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 82
    invoke-static {v7}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16

    const-string v10, "TLS"

    .line 83
    invoke-static {v7, v10}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v10, "SSL"

    .line 84
    invoke-static {v7, v10}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 85
    :cond_16
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 86
    :cond_17
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 87
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 88
    invoke-static {v2, v3}, Lio/netty/handler/ssl/SslUtils;->useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;Ljava/lang/Iterable;)V

    .line 89
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 90
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    .line 91
    new-instance v3, Ljava/util/LinkedHashSet;

    sget-object v7, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 92
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v3, v10}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 93
    invoke-interface {v3, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 95
    sput-object v3, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    .line 96
    sput-boolean v6, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    .line 97
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    .line 98
    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    const-string v2, "SSLv2Hello"

    .line 99
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    invoke-static {v5, v2}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "SSLv2"

    .line 101
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_18
    sget v2, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    invoke-static {v8, v2}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "SSLv3"

    .line 103
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_19
    const/4 v2, 0x4

    .line 104
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    invoke-static {v2, v3}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "TLSv1"

    .line 105
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/16 v2, 0x8

    .line 106
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    invoke-static {v2, v3}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "TLSv1.1"

    .line 107
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/16 v2, 0x10

    .line 108
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    invoke-static {v2, v3}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "TLSv1.2"

    .line 109
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-eqz v9, :cond_1d

    const/16 v2, 0x20

    .line 110
    sget v3, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    invoke-static {v2, v3}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "TLSv1.3"

    .line 111
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sput-boolean v5, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    goto :goto_19

    .line 113
    :cond_1d
    sput-boolean v4, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    .line 114
    :goto_19
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    .line 115
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->doesSupportOcsp()Z

    move-result v2

    sput-boolean v2, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    .line 116
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "Supported protocols (OpenSSL): {} "

    .line 117
    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Default cipher suites (OpenSSL): {}"

    .line 118
    invoke-interface {v2, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    .line 119
    :cond_1e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    .line 123
    sput-boolean v4, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    .line 124
    sput-boolean v4, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    .line 126
    sput-boolean v4, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    .line 127
    sput-boolean v4, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    .line 128
    sput-boolean v4, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    :cond_1f
    :goto_1a
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->availableOpenSslCipherSuites()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static availableJavaCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    return-object v0
.end method

.method public static availableOpenSslCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    return-object v0
.end method

.method private static doesSupportOcsp()Z
    .locals 7

    .line 1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->version()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/32 v4, 0x10002000

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    const/16 v0, 0x10

    const-wide/16 v4, -0x1

    .line 2
    :try_start_0
    invoke-static {v0, v2}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {v0, v1, v3}, Lio/netty/internal/tcnative/SSLContext;->enableOcsp(JZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_2

    .line 4
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception v2

    move-wide v0, v4

    :goto_0
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 5
    :cond_0
    throw v2

    :catch_1
    move-wide v0, v4

    :goto_1
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_2
    return v2
.end method

.method private static doesSupportProtocol(II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 3
    throw p0

    :catch_0
    return v0
.end method

.method public static ensureAvailability()V
    .locals 3

    .line 1
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

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

.method private static initializeTcNative(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "provided"

    .line 1
    invoke-static {v0, p0}, Lio/netty/internal/tcnative/Library;->initialize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAlpnSupported()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->version()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x10002000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isBoringSSL()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    return v0
.end method

.method public static isCipherSuiteAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    invoke-static {p0, v0}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSsl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    .line 2
    :cond_0
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isOcspSupported()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    return v0
.end method

.method static isTlsv13Supported()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    return v0
.end method

.method private static loadTcNative()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedOs()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    const-string v3, "linux"

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x5f

    const-string v5, "_"

    const-string v6, "netty_tcnative"

    if-eqz v3, :cond_1

    .line 5
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedLinuxClassifiers()Ljava/util/Set;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_fedora"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-class v0, Lio/netty/internal/tcnative/SSL;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 15
    invoke-static {v0, v1}, Lio/netty/util/internal/NativeLibraryLoader;->loadFirstAvailable(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    return-void
.end method

.method static memoryAddress(Lio/netty/buffer/ByteBuf;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lio/netty/internal/tcnative/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method static releaseIfNeeded(Lio/netty/util/ReferenceCounted;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static selfSignedCertificate()Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/ssl/SslContext;->X509_CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----"

    .line 2
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public static supportsHostnameValidation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static supportsKeyManagerFactory()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    return v0
.end method

.method public static unavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method

.method static useKeyManagerFactory()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    return v0
.end method

.method public static version()I
    .locals 1

    .line 1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->version()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static versionString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->versionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
