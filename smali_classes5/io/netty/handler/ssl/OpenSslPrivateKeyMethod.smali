.class public interface abstract Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;
.super Ljava/lang/Object;
.source "OpenSslPrivateKeyMethod.java"


# static fields
.field public static final SSL_SIGN_ECDSA_SECP256R1_SHA256:I

.field public static final SSL_SIGN_ECDSA_SECP384R1_SHA384:I

.field public static final SSL_SIGN_ECDSA_SECP521R1_SHA512:I

.field public static final SSL_SIGN_ECDSA_SHA1:I

.field public static final SSL_SIGN_ED25519:I

.field public static final SSL_SIGN_RSA_PKCS1_MD5_SHA1:I

.field public static final SSL_SIGN_RSA_PKCS1_SHA1:I

.field public static final SSL_SIGN_RSA_PKCS1_SHA256:I

.field public static final SSL_SIGN_RSA_PKCS1_SHA384:I

.field public static final SSL_SIGN_RSA_PKCS1_SHA512:I

.field public static final SSL_SIGN_RSA_PSS_RSAE_SHA256:I

.field public static final SSL_SIGN_RSA_PSS_RSAE_SHA384:I

.field public static final SSL_SIGN_RSA_PSS_RSAE_SHA512:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA1:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA1:I

    .line 2
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA256:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA256:I

    .line 3
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA384:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA384:I

    .line 4
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA512:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_SHA512:I

    .line 5
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ECDSA_SHA1:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ECDSA_SHA1:I

    .line 6
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP256R1_SHA256:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP256R1_SHA256:I

    .line 7
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP384R1_SHA384:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP384R1_SHA384:I

    .line 8
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP521R1_SHA512:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ECDSA_SECP521R1_SHA512:I

    .line 9
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA256:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA256:I

    .line 10
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA384:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA384:I

    .line 11
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA512:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PSS_RSAE_SHA512:I

    .line 12
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_ED25519:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_ED25519:I

    .line 13
    sget v0, Lio/netty/internal/tcnative/SSLPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_MD5_SHA1:I

    sput v0, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->SSL_SIGN_RSA_PKCS1_MD5_SHA1:I

    return-void
.end method


# virtual methods
.method public abstract decrypt(Ljavax/net/ssl/SSLEngine;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sign(Ljavax/net/ssl/SSLEngine;I[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
