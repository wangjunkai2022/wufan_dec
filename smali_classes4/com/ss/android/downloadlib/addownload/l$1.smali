.class final Lcom/ss/android/downloadlib/addownload/l$1;
.super Ljava/lang/Object;
.source "ReverseWifiHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/l;->a(Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ILcom/ss/android/downloadlib/addownload/d/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ss/android/downloadad/api/a/b;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/d/c;


# direct methods
.method constructor <init>(ILcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/addownload/d/c;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/downloadlib/addownload/l$1;->a:I

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/l$1;->b:Lcom/ss/android/downloadad/api/a/b;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/l$1;->c:Lcom/ss/android/downloadlib/addownload/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/l;->a(Lcom/ss/android/downloadlib/addownload/a/c;)V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/l$1;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->startPauseReserveOnWifi()V

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/l$1;->b:Lcom/ss/android/downloadad/api/a/b;

    const-string v2, "pause_reserve_wifi_confirm"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/l$1;->c:Lcom/ss/android/downloadlib/addownload/d/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/l$1;->b:Lcom/ss/android/downloadad/api/a/b;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/api/a/b;)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/l;->a(Lcom/ss/android/downloadlib/addownload/a/c;)V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/l$1;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->stopPauseReserveOnWifi()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/l$1;->b:Lcom/ss/android/downloadad/api/a/b;

    const-string v2, "pause_reserve_wifi_cancel"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    .line 5
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/l$1;->c:Lcom/ss/android/downloadlib/addownload/d/c;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/l$1;->b:Lcom/ss/android/downloadad/api/a/b;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/addownload/d/c;->a(Lcom/ss/android/downloadad/api/a/b;)V

    return-void
.end method
