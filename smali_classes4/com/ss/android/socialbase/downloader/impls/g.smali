.class public Lcom/ss/android/socialbase/downloader/impls/g;
.super Ljava/lang/Object;
.source "DefaultDownloadHttpService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/i/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/i/h<",
            "Ljava/lang/String;",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/h;

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/h;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/OkHttpClient;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    if-eqz v2, :cond_0

    .line 7
    monitor-exit v1

    return-object v2

    .line 8
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->t()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/g$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/g$2;-><init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/g;->a:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p1

    .line 16
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->s()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/model/c;

    .line 4
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    const-string v4, "ss_d_request_host_ip_114"

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 8
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 9
    invoke-direct {p0, p2, v1}, Lcom/ss/android/socialbase/downloader/impls/g;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/OkHttpClient;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->s()Lokhttp3/OkHttpClient;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_7

    .line 11
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    .line 13
    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 15
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "Content-Encoding"

    .line 16
    invoke-virtual {v4, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p3, "gzip"

    .line 17
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, Ljava/util/zip/GZIPInputStream;

    if-nez p2, :cond_4

    .line 18
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, p2

    goto :goto_2

    :cond_4
    move-object v3, p1

    .line 19
    :goto_2
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/g$1;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/impls/g$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Lokhttp3/Response;Lokhttp3/Call;Lokhttp3/ResponseBody;)V

    return-object p1

    :cond_5
    return-object v0

    .line 20
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get httpClient"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
