.class public Lcom/join/android/app/common/http/d$l$a;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/http/d$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Ljavax/net/ssl/X509TrustManager;

.field private b:Ljavax/net/ssl/X509TrustManager;

.field final synthetic c:Lcom/join/android/app/common/http/d$l;


# direct methods
.method public constructor <init>(Lcom/join/android/app/common/http/d$l;Ljavax/net/ssl/X509TrustManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$l$a;->c:Lcom/join/android/app/common/http/d$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/http/d$l;->a(Lcom/join/android/app/common/http/d$l;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/common/http/d$l$a;->a:Ljavax/net/ssl/X509TrustManager;

    .line 5
    iput-object p2, p0, Lcom/join/android/app/common/http/d$l$a;->b:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/common/http/d$l$a;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lcom/join/android/app/common/http/d$l$a;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
