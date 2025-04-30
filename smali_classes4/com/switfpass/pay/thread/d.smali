.class public Lcom/switfpass/pay/thread/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.switfpass.pay.thread.d"

.field private static b:I = 0x1770

.field private static c:Lcom/switfpass/pay/thread/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Z
    .locals 4

    invoke-static {}, Lcom/switfpass/pay/MainApplication;->getContext()Lcom/switfpass/pay/MainApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v1
.end method

.method public static c()Lcom/switfpass/pay/thread/d;
    .locals 1

    sget-object v0, Lcom/switfpass/pay/thread/d;->c:Lcom/switfpass/pay/thread/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/switfpass/pay/thread/d;

    invoke-direct {v0}, Lcom/switfpass/pay/thread/d;-><init>()V

    sput-object v0, Lcom/switfpass/pay/thread/d;->c:Lcom/switfpass/pay/thread/d;

    :cond_0
    sget-object v0, Lcom/switfpass/pay/thread/d;->c:Lcom/switfpass/pay/thread/d;

    return-object v0
.end method

.method private static e()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Lcom/switfpass/pay/thread/c;

    invoke-direct {v1, v0}, Lcom/switfpass/pay/thread/c;-><init>(Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "gzip"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    sget v2, Lcom/switfpass/pay/thread/d;->b:I

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v2, Lcom/switfpass/pay/thread/d;->b:I

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "Android/1.0"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json;charset=UTF-8"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x2000

    const-string v4, "UTF-8"

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Http Response Code:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_7

    :catch_0
    move-object v2, p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v2, p1

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_7

    :catch_2
    :goto_3
    if-eqz v2, :cond_3

    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catch_3
    move-exception p2

    :goto_5
    :try_start_3
    invoke-virtual {p2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    :goto_6
    return-object v1

    :goto_7
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    goto :goto_9

    :goto_8
    throw p2

    :goto_9
    goto :goto_8
.end method

.method public d(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/switfpass/pay/thread/f;
    .locals 4

    const-string p3, "httpsPost failed "

    new-instance p4, Lcom/switfpass/pay/thread/f;

    invoke-direct {p4}, Lcom/switfpass/pay/thread/f;-><init>()V

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :try_start_0
    new-instance p1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "utf-8"

    invoke-direct {p1, p2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/switfpass/pay/thread/d;->e()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object p1

    const/4 p2, -0x3

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    const/16 v2, 0x3a98

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v0, -0x4

    :try_start_2
    invoke-virtual {p1, p5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    if-nez p1, :cond_2

    :try_start_3
    iput p2, p4, Lcom/switfpass/pay/thread/f;->c:I

    return-object p4

    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p5

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p5

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x190

    if-lt p5, v0, :cond_3

    const/16 v0, 0x1f3

    if-gt p5, v0, :cond_3

    iput p5, p4, Lcom/switfpass/pay/thread/f;->c:I

    return-object p4

    :cond_3
    const/16 v0, 0x1f4

    if-lt p5, v0, :cond_4

    const/16 v0, 0x257

    if-gt p5, v0, :cond_4

    iput p5, p4, Lcom/switfpass/pay/thread/f;->c:I

    return-object p4

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz p5, :cond_5

    return-object p4

    :cond_5
    :try_start_4
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p5, p4, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string p1, "Ret"

    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p5, 0x1

    if-eq p1, p5, :cond_6

    iget-object p1, p4, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string p5, "ErrInfo"

    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/switfpass/pay/thread/f;->f(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x2

    iput p1, p4, Lcom/switfpass/pay/thread/f;->c:I

    :cond_6
    :goto_1
    return-object p4

    :catch_2
    iput v0, p4, Lcom/switfpass/pay/thread/f;->c:I

    return-object p4

    :catch_3
    iput p2, p4, Lcom/switfpass/pay/thread/f;->c:I

    return-object p4

    :catch_4
    iput v0, p4, Lcom/switfpass/pay/thread/f;->c:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    return-object p4

    :catch_5
    move-exception p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput p2, p4, Lcom/switfpass/pay/thread/f;->c:I

    return-object p4
.end method
