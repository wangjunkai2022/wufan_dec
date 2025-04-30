.class public Lcom/bytedance/sdk/openadsdk/downloadnew/c;
.super Ljava/lang/Object;
.source "TTDownloadLibUrlConnection4DZ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/c;

    .line 24
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return-object p1

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_3

    .line 27
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/c;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 32
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;-><init>(Ljava/io/InputStream;Ljava/util/Map;ILjava/net/HttpURLConnection;)V

    return-object v2

    :cond_3
    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 4
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "accept"

    const-string v1, "*/*"

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connection"

    const-string v1, "Keep-Alive"

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 12
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0x12c

    if-lt v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    return-object p0

    :cond_2
    if-lt v0, v2, :cond_3

    const/16 v1, 0x190

    if-ge v0, v1, :cond_3

    const-string v0, "Location"

    .line 13
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-object v1, p0

    :catch_1
    move-object p0, v1

    :cond_3
    return-object p0
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 18
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
