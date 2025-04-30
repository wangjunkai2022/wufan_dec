.class final Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;
.super Ljava/lang/Object;
.source "OpenSslX509TrustManagerWrapper.java"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeTrustManagerWrapper"
.end annotation


# instance fields
.field private final spiOffset:J

.field private final tmOffset:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;->spiOffset:J

    .line 3
    iput-wide p3, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;->tmOffset:J

    return-void
.end method


# virtual methods
.method public wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "Usage guarded by java version check"
    .end annotation

    .line 1
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->access$000()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    iget-wide v1, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;->spiOffset:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-wide v1, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;->tmOffset:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p1
.end method
