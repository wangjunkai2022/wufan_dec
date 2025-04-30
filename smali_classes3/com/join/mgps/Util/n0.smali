.class public Lcom/join/mgps/Util/n0;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static a:Ljava/lang/String; = "HttpUtils"

.field private static final b:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "image/png"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/Util/n0;->b:Lokhttp3/MediaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const/4 p1, 0x0

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "GET"

    .line 4
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    .line 5
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x2710

    .line 6
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 10
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 11
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 13
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 14
    new-instance v6, Ljava/lang/String;

    array-length v7, v5

    invoke-direct {v6, v5, p1, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 16
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v6

    :catch_0
    move-exception v1

    move-object v0, v6

    goto :goto_3

    :cond_1
    move-object v1, v3

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    .line 18
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_3

    .line 19
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 20
    :cond_4
    throw p0

    :cond_5
    :goto_5
    return-object v0
.end method

.method public static b(Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 1
    sget-object v3, Lcom/join/mgps/Util/n0;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    const-string v5, "doPostRequest"

    aput-object v5, v0, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v0, v8

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    const-string v0, ""

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_7

    :try_start_0
    new-array v9, v2, [Ljava/lang/String;

    .line 2
    sget-object v10, Lcom/join/mgps/Util/n0;->a:Ljava/lang/String;

    aput-object v10, v9, v4

    aput-object v5, v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retry="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v9}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    return-object v10

    :cond_0
    if-eqz p2, :cond_6

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 7
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 10
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 11
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v13, v14, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v9, 0x7530

    .line 13
    new-instance v12, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v12}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 14
    invoke-static {v12, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v9, 0x1388

    .line 15
    invoke-static {v12, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 16
    invoke-static {v12, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 17
    new-instance v9, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 18
    new-instance v13, Lorg/apache/http/conn/scheme/Scheme;

    const-string v14, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v15

    const/16 v2, 0x50

    invoke-direct {v13, v14, v15, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v13}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 19
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "https"

    invoke-static {}, Lcom/join/mgps/Util/j2;->a()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v14

    const/16 v15, 0x1bb

    invoke-direct {v2, v13, v14, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 20
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v12, v9}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 21
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v2, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 22
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 24
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "utf-8"

    invoke-direct {v12, v11, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 26
    :cond_3
    invoke-interface {v9, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 27
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v11, 0xc8

    if-ne v9, v11, :cond_4

    .line 28
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    :cond_4
    if-eqz v10, :cond_7

    .line 29
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 30
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 33
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 34
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_6
    :goto_3
    return-object v10

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v6, v6, 0x1

    const-string v0, "-1"

    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_7
    :goto_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 36
    sget-object v6, Lcom/join/mgps/Util/n0;->a:Ljava/lang/String;

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "application/json"

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 4
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v3, 0x1388

    .line 6
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 7
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "POST"

    .line 8
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    .line 9
    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v4, "utf-8"

    .line 10
    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-type"

    .line 11
    invoke-virtual {p0, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "accept"

    .line 12
    invoke-virtual {p0, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-WuFan-APP-ID"

    const-string v3, "wufan-third-game-api-event"

    .line 13
    invoke-virtual {p0, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-Real-IP"

    .line 14
    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 16
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 19
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    .line 20
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0xc8

    const-string v0, ""

    if-ne p1, p2, :cond_1

    .line 21
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 22
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "response"

    aput-object v4, v3, v2

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 27
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static e([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/cloud/backupArchive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*****"

    .line 2
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 5
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v5, "POST"

    .line 7
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Connection"

    const-string v6, "Keep-Alive"

    .line 8
    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Charset"

    const-string v6, "UTF-8"

    .line 9
    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "multipart/form-data;boundary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v5, Ljava/io/DataOutputStream;

    .line 12
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    .line 13
    :goto_0
    array-length v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, -0x1

    const-string v9, "/r/n"

    const-string v10, "--"

    if-ge v6, v7, :cond_1

    .line 14
    :try_start_1
    aget-object v7, v0, v6

    const-string v11, "//"

    .line 15
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 16
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&gameId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&archiveName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&archiveFileName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 18
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Disposition: form-data; name=\"file"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\";filename=\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 21
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 22
    :goto_1
    invoke-virtual {v10, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-eq v11, v8, :cond_0

    .line 23
    invoke-virtual {v5, v7, v4, v11}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 28
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v8, :cond_2

    int-to-char v2, v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "successfully"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "url ="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    const-string v2, "/n"

    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    :cond_3
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    const-string v1, "image/png"

    .line 2
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 3
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 4
    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "file"

    invoke-virtual {v2, v3, p0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    const-string v1, "uid"

    .line 6
    invoke-virtual {p0, v1, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    const-string p1, "token"

    .line 7
    invoke-virtual {p0, p1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    const-string p1, "gameId"

    .line 8
    invoke-virtual {p0, p1, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    const-string p1, "typeId"

    .line 9
    invoke-virtual {p0, p1, p4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    const-string p1, "describe"

    .line 10
    invoke-virtual {p0, p1, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p0

    .line 12
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/join/mgps/rpc/g;->i:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/android/v2/game/gamescreenshot/addPic"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 16
    :try_start_0
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " upload jsonString ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    :goto_0
    const-string p0, ""

    return-object p0
.end method
