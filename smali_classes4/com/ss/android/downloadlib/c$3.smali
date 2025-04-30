.class Lcom/ss/android/downloadlib/c$3;
.super Ljava/lang/Object;
.source "BaseDownloadMonitorListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/api/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/api/a/b;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:D

.field final synthetic e:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic f:Lcom/ss/android/downloadlib/c;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/c;Lcom/ss/android/downloadad/api/a/b;JJDLcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/c$3;->f:Lcom/ss/android/downloadlib/c;

    iput-object p2, p0, Lcom/ss/android/downloadlib/c$3;->a:Lcom/ss/android/downloadad/api/a/b;

    iput-wide p3, p0, Lcom/ss/android/downloadlib/c$3;->b:J

    iput-wide p5, p0, Lcom/ss/android/downloadlib/c$3;->c:J

    iput-wide p7, p0, Lcom/ss/android/downloadlib/c$3;->d:D

    iput-object p9, p0, Lcom/ss/android/downloadlib/c$3;->e:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/c$3;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/l;->b(Lcom/ss/android/downloadad/api/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/ss/android/downloadlib/c$3;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/ss/android/downloadlib/c$3;->c:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/ss/android/downloadlib/c$3;->d:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "install_no_enough_space"

    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/d;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/c$3;->a:Lcom/ss/android/downloadad/api/a/b;

    const-string v3, "clean_space_install"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/c$3;->e:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-wide v1, p0, Lcom/ss/android/downloadlib/c$3;->d:D

    double-to-long v1, v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/c$3;->b:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 6
    iget-object v0, p0, Lcom/ss/android/downloadlib/c$3;->a:Lcom/ss/android/downloadad/api/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/a/b;->g(Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
