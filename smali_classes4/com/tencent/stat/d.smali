.class Lcom/tencent/stat/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tencent/stat/common/StatLogger;

.field private static d:J

.field private static e:Lcom/tencent/stat/d;

.field private static f:Landroid/content/Context;


# instance fields
.field a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/stat/d;->d:J

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;

    sput-object v0, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-object v0, p0, Lcom/tencent/stat/d;->b:Landroid/os/Handler;

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatDispatcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/stat/d;->d:J

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/stat/d;->b:Landroid/os/Handler;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Lcom/tencent/stat/e;

    invoke-direct {v0, p0}, Lcom/tencent/stat/e;-><init>(Lcom/tencent/stat/d;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->b()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-static {}, Lcom/tencent/stat/StatConfig;->b()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    return-void
.end method

.method static declared-synchronized b()Lcom/tencent/stat/d;
    .locals 2

    const-class v0, Lcom/tencent/stat/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/stat/d;

    invoke-direct {v1}, Lcom/tencent/stat/d;-><init>()V

    sput-object v1, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;

    :cond_0
    sget-object v1, Lcom/tencent/stat/d;->e:Lcom/tencent/stat/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c()Lcom/tencent/stat/common/StatLogger;
    .locals 1

    sget-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    return-object v0
.end method


# virtual methods
.method a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/stat/a/e;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/stat/d;->b(Ljava/util/List;Lcom/tencent/stat/c;)V

    return-void
.end method

.method a(Ljava/util/List;Lcom/tencent/stat/c;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/stat/c;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "mid"

    const-string v2, "st"

    const-string v3, "et"

    const-string v4, "cfg"

    const-string v5, "gzip"

    const-string v6, "["

    const-string v7, "UTF-8"

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v10, v11, :cond_1

    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v12

    if-eq v10, v13, :cond_0

    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getStatReportUrl()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]Send request("

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "bytes):"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v10, "Accept-Encoding"

    invoke-virtual {v6, v10, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Cache-Control"

    invoke-virtual {v6, v10}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    sget-object v10, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v11, "http.route.default-proxy"

    if-eqz v10, :cond_2

    :try_start_1
    iget-object v13, v1, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    sget-object v14, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v14

    invoke-interface {v13, v11, v14}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v13, "X-Online-Host"

    const-string v14, "pingma.qq.com:80"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Accept"

    const-string v14, "*/*"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Content-Type"

    const-string v14, "json"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v9, "X-Content-Encoding"

    move-object/from16 v17, v0

    const-string v0, "rc4"

    move-object/from16 v18, v2

    const-string v2, "rc4,gzip"

    move-object/from16 v19, v3

    const-string v3, "Content-Encoding"

    move-object/from16 v20, v4

    const/16 v4, 0x100

    if-ge v8, v4, :cond_4

    if-nez v10, :cond_3

    :try_start_2
    invoke-virtual {v6, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v9, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v6, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v9, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v4, 0x4

    new-array v8, v4, [B

    invoke-virtual {v13, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v13}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v8, v14}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v8, 0x0

    invoke-static {v14, v8, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v4, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "before Gzip:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes, after Gzip:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v14

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :goto_3
    invoke-static {v14}, Lcom/tencent/stat/common/e;->a([B)[B

    move-result-object v4

    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v8, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v4, v1, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    if-eqz v12, :cond_6

    iget-object v6, v1, Lcom/tencent/stat/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-interface {v6, v11}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    :cond_6
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    sget-object v11, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "recv response status code:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", content length:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v11, "Server response error code:"

    const/16 v12, 0xc8

    const-wide/16 v14, 0x0

    cmp-long v16, v9, v14

    if-nez v16, :cond_8

    :try_start_3
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    if-ne v8, v12, :cond_7

    if-eqz p2, :cond_13

    invoke-interface/range {p2 .. p2}, Lcom/tencent/stat/c;->a()V

    goto/16 :goto_7

    :cond_7
    sget-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_8
    cmp-long v16, v9, v14

    if-lez v16, :cond_12

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    long-to-int v6, v14

    new-array v6, v6, [B

    invoke-virtual {v10, v6}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    invoke-interface {v4, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v10, "gzip,rc4"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v6}, Lcom/tencent/stat/common/k;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/e;->b([B)[B

    move-result-object v6

    goto :goto_4

    :cond_9
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v6}, Lcom/tencent/stat/common/e;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/common/k;->a([B)[B

    move-result-object v6

    goto :goto_4

    :cond_a
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v6}, Lcom/tencent/stat/common/k;->a([B)[B

    move-result-object v6

    goto :goto_4

    :cond_b
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v6}, Lcom/tencent/stat/common/e;->b([B)[B

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_c
    :goto_4
    if-ne v8, v12, :cond_10

    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v2, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/stat/StatConfig;->a(Lorg/json/JSONObject;)V

    :cond_d
    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v4, v18

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    sget-object v5, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get mid respone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/tencent/stat/a/f;->b:Lcom/tencent/stat/a/f;

    invoke-virtual {v3}, Lcom/tencent/stat/a/f;->a()I

    move-result v3

    if-ne v0, v3, :cond_f

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    if-eqz v0, :cond_e

    sget-object v2, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error type for st:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Lcom/tencent/stat/d;->f:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/stat/StatMid;->updateDeviceInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_f
    :goto_5
    if-eqz p2, :cond_11

    invoke-interface/range {p2 .. p2}, Lcom/tencent/stat/c;->a()V

    goto :goto_6

    :cond_10
    sget-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_11
    :goto_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :cond_12
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    :cond_13
    :goto_7
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    :try_start_6
    sget-object v2, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p2, :cond_14

    :try_start_7
    invoke-interface/range {p2 .. p2}, Lcom/tencent/stat/c;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    sget-object v0, Lcom/tencent/stat/d;->c:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_14
    :goto_8
    return-void

    :catchall_3
    move-exception v0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method b(Ljava/util/List;Lcom/tencent/stat/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/stat/c;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/stat/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/stat/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/stat/f;-><init>(Lcom/tencent/stat/d;Ljava/util/List;Lcom/tencent/stat/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
