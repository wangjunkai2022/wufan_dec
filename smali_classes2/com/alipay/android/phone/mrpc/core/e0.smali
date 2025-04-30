.class public final Lcom/alipay/android/phone/mrpc/core/e0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alipay/android/phone/mrpc/core/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final q:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/z;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/alipay/android/phone/mrpc/core/c0;

.field private d:Lorg/apache/http/client/methods/HttpUriRequest;

.field private e:Lorg/apache/http/protocol/HttpContext;

.field private f:Lorg/apache/http/client/CookieStore;

.field private g:Landroid/webkit/CookieManager;

.field private h:Lorg/apache/http/entity/AbstractHttpEntity;

.field private i:Lorg/apache/http/HttpHost;

.field private j:Ljava/net/URL;

.field k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/o;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/o;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/e0;->q:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/z;Lcom/alipay/android/phone/mrpc/core/c0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->e:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->f:Lorg/apache/http/client/CookieStore;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->l:I

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->m:Z

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->a:Lcom/alipay/android/phone/mrpc/core/z;

    iget-object p1, p1, Lcom/alipay/android/phone/mrpc/core/z;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    return-void
.end method

.method private static a([Ljava/lang/String;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    const-string v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private b(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/e;
    .locals 10

    const-string v0, "ArrayOutputStream close error!"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v1, v3}, Lcom/alipay/android/phone/mrpc/core/e0;->f(Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/alipay/android/phone/mrpc/core/e0;->n:Z

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/e0;->a:Lcom/alipay/android/phone/mrpc/core/z;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/alipay/android/phone/mrpc/core/z;->g(J)V

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/e0;->a:Lcom/alipay/android/phone/mrpc/core/z;

    array-length v5, v1

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/phone/mrpc/core/z;->d(J)V

    new-instance v4, Lcom/alipay/android/phone/mrpc/core/d0;

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/e0;->c(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/b;

    move-result-object v5

    invoke-direct {v4, v5, p2, p3, v1}, Lcom/alipay/android/phone/mrpc/core/d0;-><init>(Lcom/alipay/android/phone/mrpc/core/b;ILjava/lang/String;[B)V

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/e0;->g(Lorg/apache/http/HttpResponse;)J

    move-result-wide p2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/e0;->e(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "charset"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v9, v2

    move-object v2, p1

    move-object p1, v9

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v4, v2}, Lcom/alipay/android/phone/mrpc/core/e;->a(Ljava/lang/String;)V

    iput-object p1, v4, Lcom/alipay/android/phone/mrpc/core/d0;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/alipay/android/phone/mrpc/core/d0;->e:J

    iput-wide p2, v4, Lcom/alipay/android/phone/mrpc/core/d0;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_2
    throw p1

    :cond_2
    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    :cond_3
    :goto_3
    return-object v2
.end method

.method private static c(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/b;
    .locals 5

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/b;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/alipay/android/phone/mrpc/core/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Type"

    aput-object v6, v5, v2

    aput-object v4, v5, v7

    goto :goto_1

    :cond_0
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_1
    aget-object v4, v5, v2

    aget-object v5, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private f(Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)V
    .locals 6

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/p;->c(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const/16 p1, 0x800

    :try_start_0
    new-array p1, p1, [B

    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-boolean v4, v4, Lcom/alipay/android/phone/mrpc/core/d;->a:Z

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p2, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/f0;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HttpWorker Request Error!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/f0;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static g(Lorg/apache/http/HttpResponse;)J
    .locals 4

    const-string v0, "Cache-Control"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/e0;->a([Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    :cond_0
    const-string v0, "Expires"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/android/phone/mrpc/core/p;->i(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private h()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->h:Lorg/apache/http/entity/AbstractHttpEntity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v1, v0, Lcom/alipay/android/phone/mrpc/core/c0;->d:[B

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mrpc/core/c0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    const-string v2, "true"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/alipay/android/phone/mrpc/core/p;->f([B)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    :goto_0
    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->h:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->h:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v1, v1, Lcom/alipay/android/phone/mrpc/core/c0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->h:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_3

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->h()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->h()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method private j()Lcom/alipay/android/phone/mrpc/core/e;
    .locals 14

    const-string v0, "connectivity"

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->b:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    :cond_3
    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v5, v5, Lcom/alipay/android/phone/mrpc/core/c0;->f:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/Header;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->i()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v8

    invoke-interface {v8, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->i()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/phone/mrpc/core/p;->g(Lorg/apache/http/HttpRequest;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->i()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/phone/mrpc/core/p;->j(Lorg/apache/http/HttpRequest;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->i()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    const-string v7, "cookie"

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->o()Landroid/webkit/CookieManager;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v9, v9, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->e:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "http.cookie-store"

    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/e0;->f:Lorg/apache/http/client/CookieStore;

    invoke-interface {v5, v7, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->a:Lcom/alipay/android/phone/mrpc/core/z;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mrpc/core/z;->b()Lcom/alipay/android/phone/mrpc/core/p;

    move-result-object v5

    sget-object v7, Lcom/alipay/android/phone/mrpc/core/e0;->q:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v5, v7}, Lcom/alipay/android/phone/mrpc/core/p;->h(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->l()Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->a:Lcom/alipay/android/phone/mrpc/core/z;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mrpc/core/z;->b()Lcom/alipay/android/phone/mrpc/core/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/phone/mrpc/core/p;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v9, "http.route.default-proxy"

    iget-object v10, p0, Lcom/alipay/android/phone/mrpc/core/e0;->b:Landroid/content/Context;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v12

    if-eqz v10, :cond_5

    new-instance v13, Lorg/apache/http/HttpHost;

    invoke-direct {v13, v10, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_4

    :cond_5
    move-object v13, v11

    :goto_4
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "127.0.0.1"

    invoke-static {v10, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v13}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v10

    const/16 v12, 0x1f97

    if-ne v10, v12, :cond_6

    goto :goto_5

    :cond_6
    move-object v11, v13

    :goto_5
    invoke-interface {v5, v9, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/e0;->i:Lorg/apache/http/HttpHost;

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->n()Ljava/net/URL;

    move-result-object v5

    new-instance v9, Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->m()I

    move-result v11

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v10, v11, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/alipay/android/phone/mrpc/core/e0;->i:Lorg/apache/http/HttpHost;

    move-object v5, v9

    :goto_6
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->m()I

    move-result v9

    const/16 v10, 0x50

    if-ne v9, v10, :cond_8

    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->n()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    :cond_8
    iget-object v9, p0, Lcom/alipay/android/phone/mrpc/core/e0;->a:Lcom/alipay/android/phone/mrpc/core/z;

    invoke-virtual {v9}, Lcom/alipay/android/phone/mrpc/core/z;->b()Lcom/alipay/android/phone/mrpc/core/p;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/android/phone/mrpc/core/e0;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v11, p0, Lcom/alipay/android/phone/mrpc/core/e0;->e:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v9, v5, v10, v11}, Lcom/alipay/android/phone/mrpc/core/p;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/alipay/android/phone/mrpc/core/e0;->a:Lcom/alipay/android/phone/mrpc/core/z;

    sub-long/2addr v9, v7

    invoke-virtual {v11, v9, v10}, Lcom/alipay/android/phone/mrpc/core/z;->f(J)V

    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/e0;->f:Lorg/apache/http/client/CookieStore;

    invoke-interface {v7}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-boolean v8, v8, Lcom/alipay/android/phone/mrpc/core/c0;->h:Z

    if-eqz v8, :cond_9

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->o()Landroid/webkit/CookieManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_9
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; domain="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "; Secure"

    goto :goto_8

    :cond_b
    const-string v8, ""

    :goto_8
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->o()Landroid/webkit/CookieManager;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v10, v10, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_7

    :cond_c
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc8

    if-eq v7, v9, :cond_f

    const/16 v9, 0x130

    if-ne v7, v9, :cond_d

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_e

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v6

    :cond_f
    :goto_a
    invoke-direct {p0, v5, v7, v8}, Lcom/alipay/android/phone/mrpc/core/e0;->b(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/e;

    move-result-object v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/alipay/android/phone/mrpc/core/e;->b()[B

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v5}, Lcom/alipay/android/phone/mrpc/core/e;->b()[B

    move-result-object v8

    array-length v8, v8

    int-to-long v8, v8

    goto :goto_b

    :cond_10
    move-wide v8, v6

    :goto_b
    cmp-long v10, v8, v6

    if-nez v10, :cond_11

    instance-of v6, v5, Lcom/alipay/android/phone/mrpc/core/d0;

    if-eqz v6, :cond_11

    move-object v6, v5

    check-cast v6, Lcom/alipay/android/phone/mrpc/core/d0;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, v6, Lcom/alipay/android/phone/mrpc/core/d0;->h:Lcom/alipay/android/phone/mrpc/core/b;

    const-string v7, "Content-Length"

    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/mrpc/core/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_11
    :try_start_2
    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v6, v6, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    if-eqz v6, :cond_12

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->l()Ljava/lang/String;

    :cond_12
    return-object v5

    :cond_13
    new-instance v5, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "The network is not available"

    invoke-direct {v5, v6, v7}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/alipay/android/phone/mrpc/core/a; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_14
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget v2, p0, Lcom/alipay/android/phone/mrpc/core/e0;->l:I

    if-gtz v2, :cond_15

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/android/phone/mrpc/core/e0;->l:I

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_18
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_6
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_7
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_8
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_9
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_a
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_b
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_c
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mrpc/core/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Url parser error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_e
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->k()V

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/d;->a()Lcom/alipay/android/phone/mrpc/core/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/a;->a()I

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/a;->b()Ljava/lang/String;

    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->p:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    const-string v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/c0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->p:Ljava/lang/String;

    return-object v0
.end method

.method private m()I
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->n()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    return v0
.end method

.method private n()Ljava/net/URL;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->j:Ljava/net/URL;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    iget-object v1, v1, Lcom/alipay/android/phone/mrpc/core/c0;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->j:Ljava/net/URL;

    return-object v0
.end method

.method private o()Landroid/webkit/CookieManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->g:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->g:Landroid/webkit/CookieManager;

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e0;->j()Lcom/alipay/android/phone/mrpc/core/e;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/alipay/android/phone/mrpc/core/c0;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e0;->c:Lcom/alipay/android/phone/mrpc/core/c0;

    return-object v0
.end method
