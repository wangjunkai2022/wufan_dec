.class public Lcom/join/android/app/common/http/d$l;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/http/d$l$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/d;


# direct methods
.method public constructor <init>(Lcom/join/android/app/common/http/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$l;->a:Lcom/join/android/app/common/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/http/d$l;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/d$l;->b([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0
.end method

.method private b([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 3
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public c(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "BKS"

    .line 1
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 3
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 5
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public varargs d([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 2
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 5
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, p1, v4

    add-int/lit8 v7, v5, 0x1

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 9
    :cond_2
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 11
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public varargs e([Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/join/android/app/common/http/d$l;->f([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public f([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/http/d$l;->d([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/join/android/app/common/http/d$l;->c(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object p2

    const-string p3, "TLS"

    .line 3
    invoke-static {p3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 4
    new-instance v2, Lcom/join/android/app/common/http/d$l$a;

    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/d$l;->b([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/join/android/app/common/http/d$l$a;-><init>(Lcom/join/android/app/common/http/d$l;Ljavax/net/ssl/X509TrustManager;)V

    aput-object v2, v0, v1

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p3, p2, v0, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/common/http/d$l;->a:Lcom/join/android/app/common/http/d;

    invoke-static {p1}, Lcom/join/android/app/common/http/d;->n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-void
.end method
