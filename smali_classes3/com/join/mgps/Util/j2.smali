.class public Lcom/join/mgps/Util/j2;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "TrustAllSSLSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/j2$b;
    }
.end annotation


# static fields
.field private static b:Lcom/join/mgps/Util/j2;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    .line 2
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 3
    new-instance v3, Lcom/join/mgps/Util/j2$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/Util/j2$b;-><init>(Lcom/join/mgps/Util/j2;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/j2;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 5
    new-instance v0, Lcom/join/mgps/Util/j2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/j2$a;-><init>(Lcom/join/mgps/Util/j2;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public static a()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/j2;->b:Lcom/join/mgps/Util/j2;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/Util/j2;

    invoke-direct {v0}, Lcom/join/mgps/Util/j2;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/j2;->b:Lcom/join/mgps/Util/j2;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    sget-object v0, Lcom/join/mgps/Util/j2;->b:Lcom/join/mgps/Util/j2;

    return-object v0
.end method

.method private b(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "hostName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/j2;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/Util/j2;->b(Ljava/net/Socket;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/j2;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
