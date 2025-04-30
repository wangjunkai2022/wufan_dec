.class Lcom/ss/android/socialbase/downloader/f/l;
.super Ljava/lang/Object;
.source "SegmentOutput.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/f/e;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/f/i;

.field private final b:Lcom/ss/android/socialbase/downloader/model/e;

.field private final c:Lcom/ss/android/socialbase/downloader/f/e;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/b;Lcom/ss/android/socialbase/downloader/f/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/f/l;->a:Lcom/ss/android/socialbase/downloader/f/i;

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/f/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/i;)Lcom/ss/android/socialbase/downloader/model/e;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    .line 4
    new-instance p1, Lcom/ss/android/socialbase/downloader/f/h;

    invoke-direct {p1, p2, p0}, Lcom/ss/android/socialbase/downloader/f/h;-><init>(Lcom/ss/android/socialbase/downloader/f/e;Lcom/ss/android/socialbase/downloader/f/e;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/l;->c:Lcom/ss/android/socialbase/downloader/f/e;

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/f/i;)Lcom/ss/android/socialbase/downloader/model/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v3, "flush_buffer_size_byte"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/ss/android/socialbase/downloader/model/e;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/model/e;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v0, 0x41e

    invoke-direct {p2, v0, p1}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->c:Lcom/ss/android/socialbase/downloader/f/e;

    return-object v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/e;->b()V

    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/f/a;)V
    .locals 4
    .param p1    # Lcom/ss/android/socialbase/downloader/f/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    iget-object v1, p1, Lcom/ss/android/socialbase/downloader/f/a;->a:[B

    iget v2, p1, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/ss/android/socialbase/downloader/model/e;->a([BII)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->a:Lcom/ss/android/socialbase/downloader/f/i;

    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/a;->c:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/f/i;->b(J)V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/e;->c()V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/l;->b:Lcom/ss/android/socialbase/downloader/model/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method public e()Lcom/ss/android/socialbase/downloader/f/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/l;->a:Lcom/ss/android/socialbase/downloader/f/i;

    return-object v0
.end method
