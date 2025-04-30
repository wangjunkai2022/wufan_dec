.class public Lm/framework/network/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field public static connectionTimeout:I

.field public static readTimout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Lm/framework/network/MultiPart;

    invoke-direct {v1}, Lm/framework/network/MultiPart;-><init>()V

    .line 4
    new-instance v2, Lm/framework/network/StringPart;

    invoke-direct {v2}, Lm/framework/network/StringPart;-><init>()V

    const-string v3, "--"

    const-string v4, "\r\n"

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm/framework/network/KVPair;

    .line 6
    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v6

    invoke-virtual {v6, p1}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v6

    invoke-virtual {v6, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    const-string v6, "content-disposition: form-data; name=\""

    .line 7
    invoke-virtual {v2, v6}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v6

    iget-object v7, v5, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v6

    const-string v7, "\"\r\n\r\n"

    invoke-virtual {v6, v7}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 8
    iget-object v5, v5, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v5

    invoke-virtual {v5, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "multipart/form-data; boundary="

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v5, "Content-Type"

    invoke-virtual {v0, v5, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object p2

    invoke-virtual {p2, p1}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object p2

    invoke-virtual {p2, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 11
    new-instance p2, Ljava/io/File;

    iget-object v3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "Content-Disposition: form-data; name=\""

    .line 12
    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v3

    iget-object v4, p3, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v3

    const-string v4, "\"; filename=\""

    .line 13
    invoke-virtual {v3, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object p2

    const-string v3, "\"\r\n"

    invoke-virtual {p2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 14
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object p2

    iget-object v3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_9

    .line 16
    :cond_2
    iget-object p2, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v3, "jpg"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 17
    iget-object p2, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v3, "jepg"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    .line 18
    :cond_3
    iget-object p2, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v3, "png"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "image/png"

    goto :goto_4

    .line 19
    :cond_4
    iget-object p2, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v3, "gif"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "image/gif"

    goto :goto_4

    .line 20
    :cond_5
    new-instance p2, Ljava/io/FileInputStream;

    iget-object v3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    if-eqz v3, :cond_7

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_6

    goto :goto_2

    :cond_6
    move-object p2, v3

    goto :goto_4

    :cond_7
    :goto_2
    const-string p2, "application/octet-stream"

    goto :goto_4

    :cond_8
    :goto_3
    const-string p2, "image/jpeg"

    :cond_9
    :goto_4
    const-string v3, "Content-Type: "

    .line 24
    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v3

    invoke-virtual {v3, p2}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object p2

    const-string v3, "\r\n\r\n"

    invoke-virtual {p2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 25
    invoke-virtual {v1, v2}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 26
    new-instance p2, Lm/framework/network/FilePart;

    invoke-direct {p2}, Lm/framework/network/FilePart;-><init>()V

    .line 27
    iget-object p3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lm/framework/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, p2}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 29
    new-instance p2, Lm/framework/network/StringPart;

    invoke-direct {p2}, Lm/framework/network/StringPart;-><init>()V

    const-string p3, "\r\n--"

    .line 30
    invoke-virtual {p2, p3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object p3

    invoke-virtual {p3, p1}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object p1

    const-string p3, "--\r\n"

    invoke-virtual {p1, p3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 31
    invoke-virtual {v1, p2}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 32
    invoke-virtual {v1}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method private getSSLHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 3
    new-instance v1, Lm/framework/network/SSLSocketFactoryEx;

    invoke-direct {v1, v0}, Lm/framework/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 4
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 5
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 6
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    .line 7
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 8
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 9
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const-string v5, "http"

    const/16 v6, 0x50

    invoke-direct {v3, v5, v4, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 10
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 11
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 12
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v2
.end method

.method private kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/framework/network/KVPair;

    .line 5
    iget-object v2, v1, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v1, v1, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 7
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/16 v3, 0x26

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lm/framework/network/StringPart;

    invoke-direct {p1}, Lm/framework/network/StringPart;-><init>()V

    .line 3
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 4
    invoke-virtual {p1}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object p1

    const-string p2, "application/x-www-form-urlencoded"

    .line 5
    invoke-virtual {p1, p2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "https://"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 5
    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 7
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 9
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    if-gtz v0, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 13
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, p2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 15
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 16
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string v0, "utf-8"

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 18
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public download(Ljava/lang/String;Lm/framework/network/ResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "https://"

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 23
    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 25
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p2, v0}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 28
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    .line 29
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string v0, "utf-8"

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 31
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    new-instance p2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/network/KVPair;

    .line 6
    iget-object v1, v0, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v0, v0, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 8
    sget v0, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 9
    sget v0, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 10
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 14
    :goto_2
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 15
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 v0, 0xc8

    const-string v1, "utf-8"

    if-ne p3, v0, :cond_4

    .line 16
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-object p2

    .line 18
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 20
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lm/framework/network/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 21
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    :cond_0
    new-instance p2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 25
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/network/KVPair;

    .line 26
    iget-object v1, v0, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v0, v0, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 28
    sget v0, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 29
    sget v0, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 30
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 32
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_2

    .line 33
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 34
    :goto_2
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 35
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_5

    .line 36
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p4, :cond_4

    .line 37
    invoke-interface {p4, p2}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 38
    :cond_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void

    .line 40
    :cond_5
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string p3, "utf-8"

    invoke-static {p2, p3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 42
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lm/framework/network/NetworkHelper;->filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lm/framework/network/NetworkHelper;->textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    :goto_0
    if-eqz p4, :cond_2

    .line 4
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lm/framework/network/KVPair;

    .line 5
    iget-object v0, p4, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object p4, p4, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, v0, p4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_2
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 7
    sget p4, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 8
    sget p4, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 9
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_3

    .line 12
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 13
    :goto_3
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 p4, 0xc8

    const-string v0, "utf-8"

    if-eq p3, p4, :cond_5

    const/16 p4, 0xc9

    if-ne p3, p4, :cond_4

    goto :goto_4

    .line 15
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 17
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    :goto_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-object p2
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;Lm/framework/network/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 20
    iget-object v0, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lm/framework/network/NetworkHelper;->filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lm/framework/network/NetworkHelper;->textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    :goto_0
    if-eqz p4, :cond_2

    .line 23
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lm/framework/network/KVPair;

    .line 24
    iget-object v0, p4, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object p4, p4, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, v0, p4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_2
    :goto_2
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 26
    sget p4, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 27
    sget p4, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 28
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_3

    .line 31
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 32
    :goto_3
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 33
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 p4, 0xc8

    if-eq p3, p4, :cond_5

    const/16 p4, 0xc9

    if-ne p3, p4, :cond_4

    goto :goto_4

    .line 34
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string p3, "utf-8"

    invoke-static {p2, p3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 36
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_5
    :goto_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p5, :cond_6

    .line 38
    invoke-interface {p5, p2}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 39
    :cond_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 40
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    new-instance p2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {p2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 5
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/network/KVPair;

    .line 6
    iget-object v1, v0, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v0, v0, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    new-instance p4, Lm/framework/network/FilePart;

    invoke-direct {p4}, Lm/framework/network/FilePart;-><init>()V

    .line 8
    iget-object p3, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p4, p3}, Lm/framework/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p4}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object p3

    const-string p4, "application/octet-stream"

    .line 10
    invoke-virtual {p3, p4}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 12
    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 13
    sget p4, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 14
    sget p4, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {p3, p4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 15
    invoke-virtual {p2, p3}, Lorg/apache/http/client/methods/HttpPut;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string p3, "https://"

    .line 16
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_2

    .line 18
    :cond_3
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 19
    :goto_2
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 20
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 p4, 0xc8

    const-string v0, "utf-8"

    if-eq p3, p4, :cond_5

    const/16 p4, 0xc9

    if-ne p3, p4, :cond_4

    goto :goto_3

    .line 21
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 23
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_5
    :goto_3
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-object p2
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/HTTPPart;Lm/framework/network/ResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lm/framework/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/HTTPPart;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/framework/network/KVPair;

    .line 3
    iget-object v2, v1, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v1, v1, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string p2, "https://"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    goto :goto_2

    .line 7
    :cond_2
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 8
    :goto_2
    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p3

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_4

    .line 10
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p3

    if-eqz p4, :cond_3

    .line 11
    invoke-interface {p4, p3}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 12
    :cond_3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 13
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 14
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    const-string p3, "utf-8"

    invoke-static {p2, p3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 16
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
