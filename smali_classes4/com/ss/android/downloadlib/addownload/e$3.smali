.class Lcom/ss/android/downloadlib/addownload/e$3;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/e;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/ss/android/downloadad/api/a/b;

.field final synthetic d:I

.field final synthetic e:Lcom/ss/android/downloadlib/addownload/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/e;IZLcom/ss/android/downloadad/api/a/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/e$3;->a:I

    iput-boolean p3, p0, Lcom/ss/android/downloadlib/addownload/e$3;->b:Z

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/e$3;->c:Lcom/ss/android/downloadad/api/a/b;

    iput p5, p0, Lcom/ss/android/downloadlib/addownload/e$3;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/api/a/b;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/e;->d(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "fix_handle_pause"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/e;->e(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/downloadlib/addownload/g;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->d(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 5
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/e;->d(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/e;->d(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/e;->d(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->stopPauseReserveOnWifi()V

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$3;->c:Lcom/ss/android/downloadad/api/a/b;

    const-string v1, "pause_reserve_wifi_cancel_on_wifi"

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->e:Lcom/ss/android/downloadlib/addownload/e;

    iget v0, p0, Lcom/ss/android/downloadlib/addownload/e$3;->a:I

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/e$3;->d:I

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/e;->d(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method
