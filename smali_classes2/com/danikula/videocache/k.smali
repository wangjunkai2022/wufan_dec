.class public Lcom/danikula/videocache/k;
.super Ljava/lang/Object;
.source "HttpUrlSource.java"

# interfaces
.implements Lcom/danikula/videocache/q;


# static fields
.field private static final f:I = 0x5


# instance fields
.field private final a:Lcom/danikula/videocache/sourcestorage/c;

.field private final b:Lw/b;

.field private c:Lcom/danikula/videocache/r;

.field private d:Ljava/net/HttpURLConnection;

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/k;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iput-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 11
    iget-object v0, p1, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    iput-object v0, p0, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    .line 12
    iget-object p1, p1, Lcom/danikula/videocache/k;->b:Lw/b;

    iput-object p1, p0, Lcom/danikula/videocache/k;->b:Lw/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/danikula/videocache/sourcestorage/d;->a()Lcom/danikula/videocache/sourcestorage/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/danikula/videocache/k;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;)V
    .locals 1

    .line 2
    new-instance v0, Lw/a;

    invoke-direct {v0}, Lw/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/danikula/videocache/k;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;Lw/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;Lw/b;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p2}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danikula/videocache/sourcestorage/c;

    iput-object v0, p0, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    .line 5
    invoke-static {p3}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lw/b;

    iput-object p3, p0, Lcom/danikula/videocache/k;->b:Lw/b;

    .line 6
    invoke-interface {p2, p1}, Lcom/danikula/videocache/sourcestorage/c;->get(Ljava/lang/String;)Lcom/danikula/videocache/r;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Lcom/danikula/videocache/r;

    const-wide/32 v0, -0x80000000

    .line 8
    invoke-static {p1}, Lcom/danikula/videocache/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/danikula/videocache/r;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    return-void
.end method

.method private b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/16 v2, 0x2710

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/k;->g(JI)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/danikula/videocache/k;->c(Ljava/net/HttpURLConnection;)J

    move-result-wide v1

    .line 3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 5
    new-instance v5, Lcom/danikula/videocache/r;

    iget-object v6, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v6, v6, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v1, v2, v4}, Lcom/danikula/videocache/r;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v5, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 6
    iget-object v1, p0, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    iget-object v2, v5, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Lcom/danikula/videocache/sourcestorage/c;->a(Ljava/lang/String;Lcom/danikula/videocache/r;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {v3}, Lcom/danikula/videocache/p;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v0, v3

    .line 8
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error fetching info from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v4, v4, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/danikula/videocache/h;->f(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-static {v3}, Lcom/danikula/videocache/p;->c(Ljava/io/Closeable;)V

    if-eqz v0, :cond_0

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void

    .line 11
    :goto_2
    invoke-static {v3}, Lcom/danikula/videocache/p;->c(Ljava/io/Closeable;)V

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    :cond_1
    throw v1
.end method

.method private c(Ljava/net/HttpURLConnection;)J
    .locals 2

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private f(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->b:Lw/b;

    invoke-interface {v0, p2}, Lw/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "****** injectCustomHeaders ****** :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/h;->e(Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(JI)Ljava/net/HttpURLConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v0, v0, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    const-string v3, "https"

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 4
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v6, Lcom/danikula/videocache/k$a;

    invoke-direct {v6, p0}, Lcom/danikula/videocache/k$a;-><init>(Lcom/danikula/videocache/k;)V

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    new-array v5, v4, [Ljavax/net/ssl/TrustManager;

    .line 5
    new-instance v6, Lcom/danikula/videocache/k$b;

    invoke-direct {v6, p0}, Lcom/danikula/videocache/k$b;-><init>(Lcom/danikula/videocache/k;)V

    aput-object v6, v5, v1

    :try_start_0
    const-string v6, "SSL"

    .line 6
    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    const/4 v7, 0x0

    .line 7
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v7, v5, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 8
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 9
    move-object v6, v3

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 10
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v6, Lcom/danikula/videocache/k$c;

    invoke-direct {v6, p0}, Lcom/danikula/videocache/k$c;-><init>(Lcom/danikula/videocache/k;)V

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 11
    invoke-virtual {v5}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    .line 12
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 13
    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 14
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/danikula/videocache/k;->f(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-lez v7, :cond_2

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Range"

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-lez p3, :cond_3

    .line 16
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 17
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 18
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_5

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_5

    const/16 v6, 0x12f

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    const-string v0, "Location"

    .line 19
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    .line 20
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    const/4 v5, 0x5

    if-gt v2, v5, :cond_7

    if-nez v4, :cond_0

    return-object v3

    .line 21
    :cond_7
    new-instance p1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirects: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private h(Ljava/net/HttpURLConnection;JI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/danikula/videocache/k;->c(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xce

    if-ne p4, p1, :cond_1

    add-long/2addr v0, p2

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-wide v0, p1, Lcom/danikula/videocache/r;->b:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/danikula/videocache/k;->g(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/k;->d:Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/danikula/videocache/k;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/danikula/videocache/k;->e:Ljava/io/InputStream;

    .line 4
    iget-object v1, p0, Lcom/danikula/videocache/k;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/danikula/videocache/k;->h(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v1

    .line 5
    new-instance v3, Lcom/danikula/videocache/r;

    iget-object v4, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v4, v4, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/danikula/videocache/r;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 6
    iget-object v0, p0, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    iget-object v1, v3, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/danikula/videocache/sourcestorage/c;->a(Ljava/lang/String;Lcom/danikula/videocache/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v3, v3, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :("

    .line 3
    invoke-static {v1, v0}, Lcom/danikula/videocache/h;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wait... but why? WTF!? Really shouldn\'t happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v0, v0, Lcom/danikula/videocache/r;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/danikula/videocache/k;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v0, v0, Lcom/danikula/videocache/r;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v0, v0, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-wide v0, v0, Lcom/danikula/videocache/r;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/danikula/videocache/k;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-wide v0, v0, Lcom/danikula/videocache/r;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->e:Ljava/io/InputStream;

    const-string v1, "Error reading data from "

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v1, v1, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 4
    new-instance v0, Lcom/danikula/videocache/InterruptedProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v2, v2, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    new-instance p1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iget-object v1, v1, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": connection is absent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
