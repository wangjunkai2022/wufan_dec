.class public Lcom/mob/tools/network/NetworkHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;,
        Lcom/mob/tools/network/NetworkHelper$a;
    }
.end annotation


# static fields
.field public static connectionTimeout:I = 0x0

.field private static followRedirects:Z = true

.field public static readTimout:I


# instance fields
.field protected instanceFollowRedirects:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/mob/tools/network/NetworkHelper;->followRedirects:Z

    iput-boolean v0, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    return-void
.end method

.method public static checkHttpRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/mob/tools/network/NetCommunicator;->checkHttpRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "012nkfe)ge[j7gkgefl$k=fmhi"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ReflectHelper;->getInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    :goto_0
    const-string v3, "HttpURLConnection"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    const-string v0, "PERMITTED_USER_METHODS"

    .line 5
    :try_start_1
    invoke-static {v3, v0}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 6
    check-cast v2, [Ljava/lang/String;

    .line 7
    array-length v7, v2

    add-int/2addr v7, v4

    new-array v7, v7, [Ljava/lang/String;

    .line 8
    array-length v8, v2

    invoke-static {v2, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length v2, v2

    const-string v8, "0050ijglgkiijf"

    invoke-static {v8}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    if-eqz v6, :cond_1

    .line 10
    invoke-static {v3, v0, v7}, Lcom/mob/tools/utils/ReflectHelper;->setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {p1, v0, v7}, Lcom/mob/tools/utils/ReflectHelper;->setInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    const-string v0, "http.keepAlive"

    const-string v2, "false"

    .line 12
    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_3

    .line 14
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 15
    move-object v2, p1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "003Agkgmgj"

    .line 16
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-array v6, v5, [Ljavax/net/ssl/TrustManager;

    :try_start_2
    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    .line 17
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/network/NetworkHelper;->getTrustManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/TrustManager;

    aput-object v7, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v6, v4

    goto :goto_3

    :catchall_2
    move-exception v4

    .line 18
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    .line 19
    :goto_3
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1, v6, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 20
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 21
    invoke-virtual {v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_3
    if-nez p2, :cond_4

    .line 22
    sget v0, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    goto :goto_4

    :cond_4
    iget v0, p2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    :goto_4
    if-lez v0, :cond_5

    .line 23
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_5
    if-nez p2, :cond_6

    .line 24
    sget p2, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    goto :goto_5

    :cond_6
    iget p2, p2, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    :goto_5
    if-lez p2, :cond_7

    .line 25
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_7
    return-object p1
.end method

.method private getDataPostHttpPart(Ljava/net/HttpURLConnection;Ljava/lang/String;[B)Lcom/mob/tools/network/HTTPPart;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Lcom/mob/tools/network/ByteArrayPart;

    invoke-direct {p1}, Lcom/mob/tools/network/ByteArrayPart;-><init>()V

    .line 2
    invoke-virtual {p1, p3}, Lcom/mob/tools/network/ByteArrayPart;->append([B)Lcom/mob/tools/network/ByteArrayPart;

    return-object p1
.end method

.method private getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/tools/network/HTTPPart;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/mob/tools/network/MultiPart;

    invoke-direct {p1}, Lcom/mob/tools/network/MultiPart;-><init>()V

    .line 4
    new-instance v0, Lcom/mob/tools/network/StringPart;

    invoke-direct {v0}, Lcom/mob/tools/network/StringPart;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    const-string v2, "--"

    const-string v3, "\r\n"

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mob/tools/network/KVPair;

    .line 6
    invoke-virtual {v0, v2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 7
    invoke-virtual {v0, v1}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    iget-object v6, v4, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    const-string v6, "\"\r\n\r\n"

    invoke-virtual {v5, v6}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 8
    iget-object v4, v4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 10
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mob/tools/network/KVPair;

    .line 11
    new-instance v0, Lcom/mob/tools/network/StringPart;

    invoke-direct {v0}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 12
    new-instance v4, Ljava/io/File;

    iget-object v5, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 14
    invoke-virtual {v0, v1}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    iget-object v6, p4, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    const-string v6, "\"; filename=\""

    invoke-virtual {v5, v6}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v4

    const-string v5, "\"\r\n"

    invoke-virtual {v4, v5}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 16
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v4

    iget-object v5, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_7

    .line 18
    :cond_1
    iget-object v4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 20
    :cond_2
    iget-object v4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "image/png"

    goto :goto_4

    .line 21
    :cond_3
    iget-object v4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "image/gif"

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 22
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    invoke-static {v7}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v6, v6, [Ljava/io/Closeable;

    aput-object v7, v6, v5

    .line 24
    invoke-static {v6}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz v4, :cond_5

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_7

    :cond_5
    const-string v4, "application/octet-stream"

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v4, v7

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    new-array p2, v6, [Ljava/io/Closeable;

    aput-object v4, p2, v5

    .line 26
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 27
    throw p1

    :cond_6
    :goto_3
    const-string v4, "image/jpeg"

    :cond_7
    :goto_4
    const-string v5, "Content-Type: "

    .line 28
    invoke-virtual {v0, v5}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v4

    const-string v5, "\r\n\r\n"

    invoke-virtual {v4, v5}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 29
    invoke-virtual {p1, v0}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 30
    new-instance v0, Lcom/mob/tools/network/FilePart;

    invoke-direct {v0}, Lcom/mob/tools/network/FilePart;-><init>()V

    .line 31
    iget-object p4, p4, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v0, p4}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    .line 33
    new-instance p4, Lcom/mob/tools/network/StringPart;

    invoke-direct {p4}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 34
    invoke-virtual {p4, v3}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 35
    invoke-virtual {p1, p4}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    goto/16 :goto_1

    .line 36
    :cond_8
    new-instance p3, Lcom/mob/tools/network/StringPart;

    invoke-direct {p3}, Lcom/mob/tools/network/StringPart;-><init>()V

    .line 37
    invoke-virtual {p3, v2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object p2

    const-string p4, "--\r\n"

    invoke-virtual {p2, p4}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 38
    invoke-virtual {p1, p3}, Lcom/mob/tools/network/MultiPart;->append(Lcom/mob/tools/network/HTTPPart;)Lcom/mob/tools/network/MultiPart;

    return-object p1
.end method

.method private getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mob/tools/network/HTTPPart;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p2, "033>fhRggBgffgfifhPf.fggefm5iZfnjkhfhfhfjkhjgefjCnYjkfefjgfDkUfmfigeEjkj"

    .line 1
    invoke-static {p2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/mob/tools/network/StringPart;

    invoke-direct {p1}, Lcom/mob/tools/network/StringPart;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0, p3}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToObjHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->requestParamsToUrl(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    :cond_0
    return-object p1
.end method

.method public static getTrustManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "030,jhfh[lCfhfngnfmHkfYgnhihigfgnjijghgjjgkfjfehi[fAikfhfmfhhh=k2fj"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/mob/tools/network/NetworkHelper$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mob/tools/network/NetworkHelper$a;-><init>(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$1;)V

    .line 3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/network/KVPair;

    .line 7
    iget-object v1, v0, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V

    return-void
.end method

.method private kvPairsToObjHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .line 3
    iget-object v2, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private kvPairsToStrHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/network/KVPair;

    .line 3
    iget-object v2, v1, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private requestParamsToUrl(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
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
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x26

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setHeader(Ljava/net/URLConnection;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1
    new-instance v1, Lcom/mob/tools/network/NetworkHelper$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/mob/tools/network/NetworkHelper$1;-><init>(Lcom/mob/tools/network/NetworkHelper;[BLjava/io/OutputStream;)V

    invoke-virtual {p0, p1, v1, p3}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    .line 2
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/FileDownloadListener;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/FileDownloadListener;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    const-string v10, "use time: "

    if-eqz p4, :cond_1

    .line 4
    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    if-eqz p6, :cond_0

    const/16 v0, 0x64

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 p1, p6

    move/from16 p2, v0

    move-wide/from16 p3, v2

    move-wide/from16 p5, v4

    invoke-virtual/range {p1 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->onProgress(IJJ)V

    .line 10
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v4, p5

    .line 11
    invoke-direct {v1, v2, v4}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v11

    .line 12
    iget-boolean v4, v1, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 13
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->connect()V

    .line 14
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ne v4, v5, :cond_1a

    .line 15
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "Content-Disposition"

    .line 16
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_4

    .line 17
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 18
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ";"

    .line 19
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 20
    array-length v7, v5

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v12, v7, :cond_5

    aget-object v13, v5, v12

    .line 21
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v15, "filename"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "="

    .line 22
    invoke-virtual {v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v14

    const-string v13, "\""

    .line 23
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 24
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v14

    invoke-virtual {v6, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_2
    move-object/from16 v16, v6

    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    :cond_5
    if-nez v16, :cond_a

    .line 25
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_b

    const-string v6, "Content-Type"

    .line 26
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_b

    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b

    const/4 v6, 0x0

    .line 28
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_6

    const-string v4, ""

    goto :goto_2

    .line 29
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v6, "image/"

    .line 30
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v2, 0x6

    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "jpeg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v2, "jpg"

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_8
    const/16 v4, 0x2f

    .line 33
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v4, :cond_9

    add-int/2addr v4, v14

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_b

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    const/16 v4, 0x2e

    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v4, :cond_b

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    const/16 v7, 0xa

    if-ge v6, v7, :cond_b

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_a
    :goto_4
    move-object/from16 v5, v16

    .line 39
    :cond_b
    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_d

    .line 41
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    if-eqz p6, :cond_c

    const/16 v0, 0x64

    .line 44
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 p1, p6

    move/from16 p2, v0

    move-wide/from16 p3, v2

    move-wide/from16 p5, v4

    invoke-virtual/range {p1 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->onProgress(IJJ)V

    .line 45
    :cond_c
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_d
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 47
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_e
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 49
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_f
    if-eqz p6, :cond_11

    .line 50
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 51
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    const/4 v2, 0x0

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 53
    :cond_11
    :try_start_1
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 54
    :try_start_2
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 55
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v2, 0x400

    :try_start_3
    new-array v6, v2, [B

    .line 56
    invoke-virtual {v13, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-lez v2, :cond_15

    const/4 v4, 0x0

    .line 57
    invoke-virtual {v15, v6, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int v7, v3, v2

    if-eqz p6, :cond_13

    if-gtz v0, :cond_12

    const/16 v2, 0x64

    const/16 v3, 0x64

    goto :goto_6

    :cond_12
    mul-int/lit8 v2, v7, 0x64

    .line 58
    div-int/2addr v2, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v3, v2

    :goto_6
    int-to-long v4, v7

    move-object/from16 v17, v15

    int-to-long v14, v0

    move-object/from16 v2, p6

    move/from16 p1, v0

    move-object v0, v6

    move/from16 v18, v7

    move-wide v6, v14

    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lcom/mob/tools/network/FileDownloadListener;->onProgress(IJJ)V

    .line 59
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_7

    :cond_13
    move/from16 p1, v0

    move-object v0, v6

    move/from16 v18, v7

    move-object/from16 v17, v15

    .line 60
    :cond_14
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move-object v6, v0

    move-object/from16 v15, v17

    move/from16 v3, v18

    const/4 v14, 0x1

    move/from16 v0, p1

    goto :goto_5

    :cond_15
    move-object/from16 v17, v15

    :goto_7
    if-eqz p6, :cond_18

    .line 61
    invoke-virtual/range {p6 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 62
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 63
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 64
    :cond_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x2

    :try_start_5
    new-array v0, v2, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v13, v0, v2

    const/4 v2, 0x1

    aput-object v17, v0, v2

    .line 65
    invoke-static {v0}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x0

    return-object v2

    :cond_17
    const/16 v0, 0x64

    .line 66
    :try_start_6
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 p1, p6

    move/from16 p2, v0

    move-wide/from16 p3, v2

    move-wide/from16 p5, v4

    invoke-virtual/range {p1 .. p6}, Lcom/mob/tools/network/FileDownloadListener;->onProgress(IJJ)V

    .line 67
    :cond_18
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x2

    :try_start_7
    new-array v0, v2, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v13, v0, v2

    const/4 v2, 0x1

    aput-object v17, v0, v2

    .line 68
    invoke-static {v0}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 69
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 70
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 71
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v17, v15

    goto :goto_8

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    move-object/from16 v17, v2

    goto :goto_8

    :catchall_4
    move-exception v0

    const/4 v2, 0x0

    move-object v13, v2

    move-object/from16 v17, v13

    :goto_8
    const/4 v2, 0x2

    :try_start_8
    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v17, v2, v3

    .line 72
    invoke-static {v2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 73
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 74
    :goto_9
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 75
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 76
    :cond_19
    throw v0

    :cond_1a
    const/4 v2, 0x0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    :try_start_9
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 79
    :try_start_a
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 80
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_1c

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1b

    const/16 v6, 0xa

    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1b
    const/16 v6, 0xa

    .line 83
    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_a

    :cond_1c
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 85
    invoke-static {v2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 86
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 87
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "005k5fjfjgefj"

    .line 88
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "006+hiFfSfhSf.fehi"

    .line 89
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Throwable;

    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    move-object v13, v5

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v13, v2

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object v3, v2

    move-object v13, v3

    :goto_c
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v13, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 91
    invoke-static {v2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 92
    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToObjHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToStrHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v1, 0x7530

    .line 3
    iput v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v1, 0x2710

    .line 4
    iput v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "hgt: %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p3, v3, v4

    const-string v5, "hd: %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->requestParamsToUrl(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/mob/tools/network/NetworkHelper;->setHeader(Ljava/net/URLConnection;Ljava/util/HashMap;)V

    .line 8
    iget-boolean p2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0xc8

    const/16 p4, 0xa

    const-string v3, "utf-8"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p2, p3, :cond_3

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    :try_start_0
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p3, v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 16
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_1
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    new-array p4, v5, [Ljava/io/Closeable;

    aput-object v3, p4, v4

    aput-object p3, p4, v2

    .line 19
    invoke-static {p4}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "use time: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object p1

    :catchall_0
    move-exception p1

    move-object v6, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p3, v6

    :goto_1
    new-array p2, v5, [Ljava/io/Closeable;

    aput-object v6, p2, v4

    aput-object p3, p2, v2

    .line 23
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 24
    throw p1

    .line 25
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    :try_start_3
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 27
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 28
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_5

    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 30
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    :cond_4
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :cond_5
    new-array p4, v5, [Ljava/io/Closeable;

    aput-object v1, p4, v4

    aput-object v0, p4, v2

    .line 33
    invoke-static {p4}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 34
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p4, "005k^fjfjgefj"

    .line 36
    invoke-static {p4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "0067hi%f(fh.fLfehi"

    .line 37
    invoke-static {p3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance p2, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_3
    move-exception p1

    move-object v6, v1

    goto :goto_3

    :catchall_4
    move-exception p1

    goto :goto_3

    :catchall_5
    move-exception p1

    move-object v0, v6

    :goto_3
    new-array p2, v5, [Ljava/io/Closeable;

    aput-object v6, p2, v4

    aput-object v0, p2, v2

    .line 39
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 40
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    new-instance v5, Lcom/mob/tools/network/NetworkHelper$5;

    invoke-direct {v5, p0, v0}, Lcom/mob/tools/network/NetworkHelper$5;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    const-string p1, "resp"

    .line 64
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToObjHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p2

    invoke-direct {p0, p4}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToStrHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 66
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpPost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 67
    invoke-direct {p0, p1, p5}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p3, 0x1

    .line 68
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p5, "010ZiigefmfmCk>fi3fHfggefm"

    .line 69
    invoke-static {p5}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v2, "Keep-Alive"

    invoke-virtual {p1, p5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/mob/tools/network/KVPair;

    .line 71
    iget-object v2, p5, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p5, p5, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, v2, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance p2, Lcom/mob/tools/network/StringPart;

    invoke-direct {p2}, Lcom/mob/tools/network/StringPart;-><init>()V

    const/4 p5, 0x0

    .line 73
    invoke-virtual {p2, p5}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 74
    iget-boolean v2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 75
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 77
    :try_start_1
    invoke-virtual {p2}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object p5

    const/high16 p2, 0x10000

    new-array p2, p2, [B

    .line 78
    invoke-virtual {p5, p2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :goto_1
    if-lez v5, :cond_1

    .line 79
    invoke-virtual {v4, p2, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    invoke-virtual {p5, p2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p5, p2, v3

    aput-object v4, p2, p3

    .line 82
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz p4, :cond_2

    .line 83
    :try_start_2
    new-instance p2, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {p2, p1}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p4, p2}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 85
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 86
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 87
    throw p2

    .line 88
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 89
    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception p1

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v4, p5

    :goto_3
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p5, p2, v3

    aput-object v4, p2, p3

    .line 90
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 91
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpPost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, p1, p7}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p7

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p7, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "010Giigefmfm@k)fi-f$fggefm"

    .line 6
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Keep-Alive"

    invoke-virtual {p7, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 8
    invoke-direct {p0, p7, p1, p2, p3}, Lcom/mob/tools/network/NetworkHelper;->getFilePostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object p1

    if-ltz p5, :cond_1

    .line 9
    invoke-virtual {p7, p5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p7, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/mob/tools/network/HTTPPart;->b()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p7, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 12
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/tools/network/KVPair;

    .line 13
    iget-object p4, p3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p3, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p7, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    iget-boolean p2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p7, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 15
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->connect()V

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    :try_start_1
    invoke-virtual {p1}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object p3

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 18
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_2
    if-lez v3, :cond_3

    .line 19
    invoke-virtual {p5, p1, p4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 20
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    new-array p1, p2, [Ljava/io/Closeable;

    aput-object p3, p1, p4

    aput-object p5, p1, v2

    .line 22
    invoke-static {p1}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz p6, :cond_4

    .line 23
    :try_start_2
    new-instance p1, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {p1, p7}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p6, p1}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 25
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 26
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 27
    throw p1

    .line 28
    :cond_4
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29
    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception p1

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object p5, p3

    :goto_4
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object p3, p2, p4

    aput-object p5, p2, v2

    .line 30
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 31
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpPost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 34
    invoke-direct {p0, p1, p7}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p7

    const/4 v2, 0x1

    .line 35
    invoke-virtual {p7, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "010AiigefmfmMk2fi!fIfggefm"

    .line 36
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Keep-Alive"

    invoke-virtual {p7, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 37
    array-length v3, p3

    if-lez v3, :cond_0

    .line 38
    invoke-direct {p0, p7, p1, p3}, Lcom/mob/tools/network/NetworkHelper;->getDataPostHttpPart(Ljava/net/HttpURLConnection;Ljava/lang/String;[B)Lcom/mob/tools/network/HTTPPart;

    move-result-object p1

    if-ltz p5, :cond_1

    .line 39
    invoke-virtual {p7, p5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, p7, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->getTextPostHTTPPart(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mob/tools/network/HTTPPart;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/mob/tools/network/HTTPPart;->b()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p7, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 42
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mob/tools/network/KVPair;

    .line 43
    iget-object p4, p3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object p3, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p7, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_2
    iget-boolean p2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p7, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 45
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->connect()V

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 47
    :try_start_1
    invoke-virtual {p1}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object p3

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 48
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_2
    if-lez v3, :cond_3

    .line 49
    invoke-virtual {p5, p1, p4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 50
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {p5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    new-array p1, p2, [Ljava/io/Closeable;

    aput-object p3, p1, p4

    aput-object p5, p1, v2

    .line 52
    invoke-static {p1}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz p6, :cond_4

    .line 53
    :try_start_2
    new-instance p1, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {p1, p7}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p6, p1}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 55
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 56
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 57
    throw p1

    .line 58
    :cond_4
    invoke-virtual {p7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception p1

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object p5, p3

    :goto_4
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object p3, p2, p4

    aput-object p5, p2, v2

    .line 60
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 61
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public httpPostFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v7, Lcom/mob/tools/network/NetworkHelper$3;

    invoke-direct {v7, p0, v0}, Lcom/mob/tools/network/NetworkHelper$3;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    const-string p1, "resp"

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public httpPostFilesChecked(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v7, Lcom/mob/tools/network/NetworkHelper$4;

    invoke-direct {v7, p0, v0}, Lcom/mob/tools/network/NetworkHelper$4;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;[BLjava/util/ArrayList;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    const-string p1, "resp"

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "use time: "

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hpt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\nhd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v10}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object/from16 v7, p4

    .line 3
    invoke-direct {v1, v0, v7}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v7

    const/4 v8, 0x1

    .line 4
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 5
    invoke-direct {v1, v7, v3}, Lcom/mob/tools/network/NetworkHelper;->setHeader(Ljava/net/URLConnection;Ljava/util/HashMap;)V

    const-string v0, "010Miigefmfm kXfiUf7fggefm"

    .line 6
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Keep-Alive"

    invoke-virtual {v7, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0332fhGggFgffgfifhVf$fggefmAi\'fnjkhfhfhfjkhjgefj;n=jkfefjgf9kLfmfige\'jkj"

    .line 7
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Content-Type"

    invoke-virtual {v7, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/mob/tools/network/StringPart;

    invoke-direct {v0}, Lcom/mob/tools/network/StringPart;-><init>()V

    if-eqz v2, :cond_0

    .line 9
    invoke-direct {v1, v2}, Lcom/mob/tools/network/NetworkHelper;->requestParamsToUrl(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/network/StringPart;->b()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v7, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 11
    iget-boolean v2, v1, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {v7, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 12
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v2, 0x2

    .line 13
    :try_start_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 14
    :try_start_1
    invoke-virtual {v0}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/high16 v0, 0x10000

    :try_start_2
    new-array v0, v0, [B

    .line 15
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v12

    :goto_0
    if-lez v12, :cond_1

    .line 16
    invoke-virtual {v10, v0, v9, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v12

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 19
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/16 v12, 0xc8

    const/16 v13, 0xa

    const-string v14, "utf-8"

    if-eq v0, v12, :cond_5

    const/16 v12, 0x12c

    if-ge v0, v12, :cond_2

    goto :goto_3

    .line 20
    :cond_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 21
    :try_start_4
    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v15, v3, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 22
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 23
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    :goto_1
    if-eqz v14, :cond_4

    .line 24
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_3

    .line 25
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    :cond_3
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_7
    new-array v13, v2, [Ljava/io/Closeable;

    aput-object v3, v13, v9

    aput-object v15, v13, v8

    .line 28
    invoke-static {v13}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 29
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v13, "005k<fjfjgefj"

    .line 30
    invoke-static {v13}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "006]hiAf$fhDf*fehi"

    .line 31
    invoke-static {v12}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_2

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_2
    new-array v12, v2, [Ljava/io/Closeable;

    aput-object v3, v12, v9

    aput-object v15, v12, v8

    .line 33
    invoke-static {v12}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 34
    throw v0

    .line 35
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 36
    :try_start_8
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v3, v12, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 37
    :try_start_9
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 38
    :try_start_a
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    :goto_4
    if-eqz v14, :cond_7

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_6

    .line 40
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    :cond_6
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :cond_7
    :try_start_b
    new-array v13, v2, [Ljava/io/Closeable;

    aput-object v12, v13, v9

    aput-object v3, v13, v8

    .line 43
    invoke-static {v13}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 45
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v11, v2, v9

    aput-object v10, v2, v8

    .line 46
    invoke-static {v2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 47
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0

    :catchall_3
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v0

    move-object v0, v3

    move-object/from16 v3, v17

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v12, v0

    move-object v0, v3

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v12, v0

    const/4 v0, 0x0

    :goto_5
    const/4 v3, 0x0

    :goto_6
    :try_start_c
    new-array v13, v2, [Ljava/io/Closeable;

    aput-object v3, v13, v9

    aput-object v0, v13, v8

    .line 48
    invoke-static {v13}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 49
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v11

    goto :goto_7

    :catchall_7
    move-exception v0

    const/4 v3, 0x0

    goto :goto_7

    :catchall_8
    move-exception v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 50
    :goto_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v9

    aput-object v10, v2, v8

    .line 51
    invoke-static {v2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 52
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 53
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public httpPostWithBytes(Ljava/lang/String;[BLjava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "use time: "

    const-string v3, "utf-8"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hpt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object/from16 v6, p4

    .line 3
    invoke-direct {v1, v0, v6}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object v6

    const/4 v7, 0x1

    .line 4
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    move-object/from16 v0, p3

    .line 5
    invoke-direct {v1, v6, v0}, Lcom/mob/tools/network/NetworkHelper;->setHeader(Ljava/net/URLConnection;Ljava/util/HashMap;)V

    const-string v0, "010[iigefmfm%kAfi,fQfggefm"

    .line 6
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "Keep-Alive"

    invoke-virtual {v6, v0, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v9, "application/octet-stream"

    .line 7
    invoke-virtual {v6, v0, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-boolean v0, v1, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 9
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v9, 0x2

    .line 10
    :try_start_0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 11
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 12
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 15
    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->write([B)V

    move-object/from16 v0, p2

    .line 16
    invoke-virtual {v13, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 17
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 18
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 19
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 20
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/high16 v0, 0x10000

    :try_start_2
    new-array v0, v0, [B

    .line 21
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    :goto_0
    if-lez v13, :cond_0

    .line 22
    invoke-virtual {v11, v0, v8, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 23
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 25
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v13, 0xc8

    const/16 v14, 0xa

    if-eq v0, v13, :cond_4

    const/16 v13, 0x12c

    if-ge v0, v13, :cond_1

    goto/16 :goto_3

    .line 26
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 27
    :try_start_3
    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v15, v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 28
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_3

    .line 30
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 31
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :cond_2
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_6
    new-array v10, v9, [Ljava/io/Closeable;

    aput-object v3, v10, v8

    aput-object v15, v10, v7

    .line 34
    invoke-static {v10}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 35
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v10, "005kFfjfjgefj"

    .line 36
    invoke-static {v10}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "006=hiTf(fhLfJfehi"

    .line 37
    invoke-static {v10}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v10, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    goto :goto_2

    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_2
    new-array v3, v9, [Ljava/io/Closeable;

    aput-object v10, v3, v8

    aput-object v15, v3, v7

    .line 39
    invoke-static {v3}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 40
    throw v0

    .line 41
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 42
    :try_start_7
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v10, v13, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 43
    :try_start_8
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 44
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    :goto_4
    if-eqz v13, :cond_6

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_5

    .line 46
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    :cond_5
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :cond_6
    :try_start_a
    new-array v13, v9, [Ljava/io/Closeable;

    aput-object v3, v13, v8

    aput-object v10, v13, v7

    .line 49
    invoke-static {v13}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 51
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    new-array v3, v9, [Ljava/io/Closeable;

    aput-object v12, v3, v8

    aput-object v11, v3, v7

    .line 52
    invoke-static {v3}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 53
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0

    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    move-object v0, v10

    move-object/from16 v10, v17

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object v0, v10

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_5
    const/4 v10, 0x0

    :goto_6
    :try_start_b
    new-array v13, v9, [Ljava/io/Closeable;

    aput-object v10, v13, v8

    aput-object v0, v13, v7

    .line 54
    invoke-static {v13}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 55
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    move-object v10, v12

    goto :goto_7

    :catchall_7
    move-exception v0

    const/4 v10, 0x0

    goto :goto_7

    :catchall_8
    move-exception v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 56
    :goto_7
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    new-array v3, v9, [Ljava/io/Closeable;

    aput-object v10, v3, v8

    aput-object v11, v3, v7

    .line 57
    invoke-static {v3}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 58
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 59
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToObjHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->httpPut(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/OnReadListener;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/OnReadListener;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            "Lcom/mob/tools/network/OnReadListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpPut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->requestParamsToUrl(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p5, 0x0

    .line 9
    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string v2, "PUT"

    .line 10
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    .line 11
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p4}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToStrHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/mob/tools/network/NetworkHelper;->setHeader(Ljava/net/URLConnection;Ljava/util/HashMap;)V

    .line 13
    iget-boolean p4, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    const/4 p4, 0x2

    const/4 v2, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 16
    :try_start_1
    new-instance v4, Lcom/mob/tools/network/FilePart;

    invoke-direct {v4}, Lcom/mob/tools/network/FilePart;-><init>()V

    if-eqz p6, :cond_1

    .line 17
    invoke-virtual {v4, p6}, Lcom/mob/tools/network/HTTPPart;->setOnReadListener(Lcom/mob/tools/network/OnReadListener;)V

    .line 18
    :cond_1
    iget-object p3, p3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v4, p3}, Lcom/mob/tools/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/high16 p6, 0x10000

    :try_start_2
    new-array p6, p6, [B

    .line 20
    invoke-virtual {p3, p6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_0
    if-lez v4, :cond_2

    .line 21
    invoke-virtual {v3, p6, p5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 22
    invoke-virtual {p3, p6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    new-array p6, p4, [Ljava/io/Closeable;

    aput-object p3, p6, p5

    aput-object v3, p6, p2

    .line 24
    invoke-static {p6}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 25
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 p6, 0xc8

    const/16 v3, 0xa

    const-string v4, "utf-8"

    if-eq p3, p6, :cond_6

    const/16 p6, 0xc9

    if-ne p3, p6, :cond_3

    goto/16 :goto_3

    .line 26
    :cond_3
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    :try_start_3
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 28
    :try_start_4
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 30
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 31
    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :cond_4
    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_5
    new-array p4, p4, [Ljava/io/Closeable;

    aput-object p1, p4, p5

    aput-object v0, p4, p2

    .line 34
    invoke-static {p4}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "005k^fjfjgefj"

    .line 36
    invoke-static {p2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "006,hiQf.fhKf@fehi"

    .line 37
    invoke-static {p2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance p2, Ljava/lang/Throwable;

    new-instance p3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p3, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p3

    move-object v2, p1

    goto :goto_2

    :catchall_1
    move-exception p3

    goto :goto_2

    :catchall_2
    move-exception p3

    move-object v0, v2

    :goto_2
    new-array p1, p4, [Ljava/io/Closeable;

    aput-object v2, p1, p5

    aput-object v0, p1, p2

    .line 39
    invoke-static {p1}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 40
    throw p3

    .line 41
    :cond_6
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    :try_start_6
    new-instance p6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {p6, v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 43
    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 44
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_8

    .line 45
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 46
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    :cond_7
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :cond_8
    new-array p4, p4, [Ljava/io/Closeable;

    aput-object v4, p4, p5

    aput-object p6, p4, p2

    .line 49
    invoke-static {p4}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "use time: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sub-long/2addr p4, v0

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    return-object p1

    :catchall_3
    move-exception p1

    move-object v2, v4

    goto :goto_5

    :catchall_4
    move-exception p1

    goto :goto_5

    :catchall_5
    move-exception p1

    move-object p6, v2

    :goto_5
    new-array p3, p4, [Ljava/io/Closeable;

    aput-object v2, p3, p5

    aput-object p6, p3, p2

    .line 53
    invoke-static {p3}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 54
    throw p1

    :catchall_6
    move-exception p1

    move-object v2, p3

    goto :goto_6

    :catchall_7
    move-exception p1

    goto :goto_6

    :catchall_8
    move-exception p1

    move-object v3, v2

    :goto_6
    new-array p3, p4, [Ljava/io/Closeable;

    aput-object v2, p3, p5

    aput-object v3, p3, p2

    .line 55
    invoke-static {p3}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 56
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v6, Lcom/mob/tools/network/NetworkHelper$2;

    invoke-direct {v6, p0, v0}, Lcom/mob/tools/network/NetworkHelper$2;-><init>(Lcom/mob/tools/network/NetworkHelper;Ljava/util/HashMap;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/mob/tools/network/NetworkHelper;->jsonPost(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V

    const-string p1, "003Wfj7kAhi"

    .line 3
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "003PfjPkDhi"

    .line 4
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonPost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 11
    invoke-direct {p0, p1, p4}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p4, 0x1

    .line 12
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string v3, "content-type"

    const-string v4, "application/json"

    .line 14
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 15
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/network/KVPair;

    .line 16
    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    new-instance p3, Lcom/mob/tools/network/StringPart;

    invoke-direct {p3}, Lcom/mob/tools/network/StringPart;-><init>()V

    if-eqz p2, :cond_1

    .line 18
    new-instance v3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v3, p2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    .line 19
    :cond_1
    iget-boolean p2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    const/4 p2, 0x2

    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 22
    :try_start_1
    invoke-virtual {p3}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/high16 p3, 0x10000

    new-array p3, p3, [B

    .line 23
    invoke-virtual {v3, p3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :goto_1
    if-lez v5, :cond_2

    .line 24
    invoke-virtual {v4, p3, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 25
    invoke-virtual {v3, p3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    new-array p2, p2, [Ljava/io/Closeable;

    aput-object v3, p2, v2

    aput-object v4, p2, p4

    .line 27
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz p5, :cond_3

    .line 28
    :try_start_2
    new-instance p2, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {p2, p1}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p5, p2}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 30
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 31
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 32
    throw p2

    .line 33
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34
    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception p1

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v4, v3

    :goto_3
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object v3, p2, v2

    aput-object v4, p2, p4

    .line 35
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 36
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public rawGet(Ljava/lang/String;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public rawGet(Ljava/lang/String;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToStrHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public rawGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/RawNetworkCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToStrHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public rawGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 32
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawGet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 33
    invoke-direct {p0, p1, p4}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->setHeader(Ljava/net/URLConnection;Ljava/util/HashMap;)V

    .line 35
    iget-boolean p2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 36
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 37
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v2, 0x12d

    if-ne p2, v2, :cond_0

    const-string p2, "008\'gmgefifh[f4fggefm"

    .line 38
    invoke-static {p2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->rawGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 40
    :try_start_0
    new-instance p2, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {p2, p1}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p3, p2}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 42
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 43
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 44
    throw p2

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    :goto_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public rawGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/RawNetworkCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawGet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    invoke-direct {p0, p1, p4}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->setHeader(Ljava/net/URLConnection;Ljava/util/HashMap;)V

    .line 8
    iget-boolean p2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p4, 0xc8

    if-ne p2, p4, :cond_1

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 14
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p4, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 15
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v5, "utf-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/16 v5, 0xa

    .line 19
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    :cond_2
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v4

    aput-object v2, v0, p4

    .line 22
    invoke-static {v0}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 23
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p4, "005k,fjfjgefj"

    .line 25
    invoke-static {p4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "0060hiXf1fhRfZfehi"

    .line 26
    invoke-static {p3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p2, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v2, v1

    :goto_1
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object v1, p2, v4

    aput-object v2, p2, p4

    .line 28
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 29
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/mob/tools/network/NetworkHelper;->kvPairsToStrHashMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/HTTPPart;Lcom/mob/tools/network/RawNetworkCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mob/tools/network/HTTPPart;",
            "Lcom/mob/tools/network/RawNetworkCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawpost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 29
    invoke-direct {p0, p1, p5}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p5, 0x1

    .line 30
    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/network/KVPair;

    .line 33
    iget-object v4, v3, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-boolean p2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 35
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    const/4 p2, 0x2

    const/4 v3, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 37
    :try_start_1
    invoke-virtual {p3}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/high16 v5, 0x10000

    :try_start_2
    new-array v5, v5, [B

    .line 38
    invoke-virtual {p3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    :goto_1
    if-lez v6, :cond_1

    .line 39
    invoke-virtual {v4, v5, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 40
    invoke-virtual {p3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    new-array v5, p2, [Ljava/io/Closeable;

    aput-object p3, v5, v2

    aput-object v4, v5, p5

    .line 42
    invoke-static {v5}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 43
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 v4, 0xc8

    if-ne p3, v4, :cond_3

    if-eqz p4, :cond_2

    .line 44
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 45
    :try_start_3
    invoke-interface {p4, p2}, Lcom/mob/tools/network/RawNetworkCallback;->onResponse(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array p3, p5, [Ljava/io/Closeable;

    aput-object p2, p3, v2

    .line 46
    invoke-static {p3}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 47
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p3

    .line 48
    :try_start_4
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p3

    new-array p4, p5, [Ljava/io/Closeable;

    aput-object p2, p4, v2

    .line 49
    invoke-static {p4}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    throw p3

    .line 52
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 53
    :goto_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/String;)I

    return-void

    .line 54
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    :try_start_5
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 56
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 57
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_5

    .line 58
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/16 v4, 0xa

    .line 59
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_4
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :cond_5
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object v1, p2, v2

    aput-object v0, p2, p5

    .line 62
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 63
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "005kMfjfjgefj"

    .line 65
    invoke-static {p2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "006;hi2fOfhYf0fehi"

    .line 66
    invoke-static {p2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance p2, Ljava/lang/Throwable;

    new-instance p3, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p3}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p3, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_2
    move-exception p1

    move-object v3, v1

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_4

    :catchall_4
    move-exception p1

    move-object v0, v3

    :goto_4
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object v3, p2, v2

    aput-object v0, p2, p5

    .line 68
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 69
    throw p1

    :catchall_5
    move-exception p1

    move-object v3, p3

    goto :goto_5

    :catchall_6
    move-exception p1

    goto :goto_5

    :catchall_7
    move-exception p1

    move-object v4, v3

    :goto_5
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object v3, p2, v2

    aput-object v4, p2, p5

    .line 70
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 71
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/HTTPPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hptr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 5
    invoke-direct {p0, p1, p6}, Lcom/mob/tools/network/NetworkHelper;->getConnection(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 p6, 0x1

    .line 6
    invoke-virtual {p1, p6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-ltz p4, :cond_0

    .line 7
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->setHeader(Ljava/net/URLConnection;Ljava/util/HashMap;)V

    .line 9
    iget-boolean p2, p0, Lcom/mob/tools/network/NetworkHelper;->instanceFollowRedirects:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    const/4 p2, 0x2

    const/4 p4, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 12
    :try_start_1
    invoke-virtual {p3}, Lcom/mob/tools/network/HTTPPart;->toInputStream()Ljava/io/InputStream;

    move-result-object p4

    const/high16 p3, 0x10000

    new-array p3, p3, [B

    .line 13
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    .line 14
    invoke-virtual {v2, p3, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 15
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    new-array p2, p2, [Ljava/io/Closeable;

    aput-object p4, p2, v4

    aput-object v2, p2, p6

    .line 17
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz p5, :cond_2

    .line 18
    :try_start_2
    new-instance p2, Lcom/mob/tools/network/HttpConnectionImpl23;

    invoke-direct {p2, p1}, Lcom/mob/tools/network/HttpConnectionImpl23;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-interface {p5, p2}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 20
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 21
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 22
    throw p2

    .line 23
    :cond_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 24
    :goto_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "use time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    :catchall_2
    move-exception p1

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v2, p4

    :goto_2
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object p4, p2, v4

    aput-object v2, p2, p6

    .line 25
    invoke-static {p2}, Lcom/mob/tools/utils/FileUtils;->closeIO([Ljava/io/Closeable;)V

    .line 26
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
