.class Lcom/ss/android/socialbase/downloader/impls/g$1;
.super Lcom/ss/android/socialbase/downloader/network/e;
.source "DefaultDownloadHttpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/g;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lokhttp3/Response;

.field final synthetic c:Lokhttp3/Call;

.field final synthetic d:Lokhttp3/ResponseBody;

.field final synthetic e:Lcom/ss/android/socialbase/downloader/impls/g;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Lokhttp3/Response;Lokhttp3/Call;Lokhttp3/ResponseBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->e:Lcom/ss/android/socialbase/downloader/impls/g;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lokhttp3/ResponseBody;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    invoke-virtual {v0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->b:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->d:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$1;->c:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
