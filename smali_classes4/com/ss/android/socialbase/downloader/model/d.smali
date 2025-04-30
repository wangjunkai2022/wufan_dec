.class public Lcom/ss/android/socialbase/downloader/model/d;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/ss/android/socialbase/downloader/network/g;

.field public final c:I

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->a:Ljava/lang/String;

    .line 3
    invoke-interface {p2}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    .line 4
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->c(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v2, "Accept-Ranges"

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Etag"

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Content-Range"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "last-modified"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Last-Modified"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Cache-Control"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/network/g;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:J

    return-wide v0
.end method

.method public i()Z
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->c(Lcom/ss/android/socialbase/downloader/network/g;)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/f;->b(J)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->e:J

    .line 7
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->e:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/f;->i(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
