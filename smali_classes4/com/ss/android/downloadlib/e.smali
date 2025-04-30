.class Lcom/ss/android/downloadlib/e;
.super Ljava/lang/Object;
.source "DownloadConfigureImpl.java"

# interfaces
.implements Lcom/ss/android/download/api/a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/download/api/config/b;)Lcom/ss/android/download/api/a;
    .locals 2
    .param p1    # Lcom/ss/android/download/api/config/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/config/b;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/e$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/e$1;-><init>(Lcom/ss/android/downloadlib/e;Lcom/ss/android/download/api/config/b;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$c;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/config/f;)Lcom/ss/android/download/api/a;
    .locals 0
    .param p1    # Lcom/ss/android/download/api/config/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/config/f;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/config/g;)Lcom/ss/android/download/api/a;
    .locals 0
    .param p1    # Lcom/ss/android/download/api/config/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/config/g;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/config/h;)Lcom/ss/android/download/api/a;
    .locals 0
    .param p1    # Lcom/ss/android/download/api/config/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/config/h;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/config/i;)Lcom/ss/android/download/api/a;
    .locals 0
    .param p1    # Lcom/ss/android/download/api/config/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/config/i;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/config/k;)Lcom/ss/android/download/api/a;
    .locals 0
    .param p1    # Lcom/ss/android/download/api/config/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/config/k;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/config/p;)Lcom/ss/android/download/api/a;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/config/p;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/model/a;)Lcom/ss/android/download/api/a;
    .locals 0
    .param p1    # Lcom/ss/android/download/api/model/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/model/a;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)Lcom/ss/android/download/api/a;
    .locals 1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadlib/e$2;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/e$2;-><init>(Lcom/ss/android/downloadlib/e;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/af;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/c/c;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/c/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->addDownloadCompleteHandler(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->initOrCover(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/download/api/a;
    .locals 0

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    const-string v1, "ttdownloader init error"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/j;->a(Lcom/ss/android/download/api/b/a;)V

    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/depend/ag;)V

    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/e$3;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/e$3;-><init>(Lcom/ss/android/downloadlib/e;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method
