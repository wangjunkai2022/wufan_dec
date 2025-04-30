.class public Lcom/ss/android/downloadlib/f/b;
.super Ljava/lang/Object;
.source "AppInstallParamsInterceptor.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/a/b;->O()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setLinkMode(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/c/i;->a()V

    :cond_1
    return-void
.end method
