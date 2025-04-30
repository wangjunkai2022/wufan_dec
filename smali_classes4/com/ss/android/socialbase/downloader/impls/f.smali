.class public Lcom/ss/android/socialbase/downloader/impls/f;
.super Ljava/lang/Object;
.source "DefaultDownloadHeadHttpService.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->s()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/c;

    .line 5
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_2

    const/high16 v0, 0x200000

    .line 9
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 11
    :cond_1
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/f$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ss/android/socialbase/downloader/impls/f$1;-><init>(Lcom/ss/android/socialbase/downloader/impls/f;Lokhttp3/Response;Lokhttp3/Call;)V

    return-object v0

    .line 12
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get httpClient"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
