.class public Lcom/ss/android/downloadlib/f/a;
.super Ljava/lang/Object;
.source "AppInstallInvokeInterceptor.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/f/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/f/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
    .locals 2
    .param p2    # Lcom/ss/android/downloadlib/guide/install/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/api/a/b;)Z

    move-result v0

    .line 3
    invoke-static {p1}, Lcom/ss/android/downloadlib/b/f;->b(Lcom/ss/android/downloadad/api/a/b;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/f/a$3;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/f/a$3;-><init>(Lcom/ss/android/downloadlib/f/a;Lcom/ss/android/downloadlib/guide/install/a;)V

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/b/c;->a(Lcom/ss/android/downloadad/api/a/b;Lcom/ss/android/downloadlib/guide/install/a;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/ss/android/downloadlib/guide/install/a;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V
    .locals 2
    .param p2    # Lcom/ss/android/downloadlib/guide/install/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/ss/android/downloadlib/b/i;->a(Lcom/ss/android/downloadad/api/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/ss/android/downloadlib/f/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/f/a$2;-><init>(Lcom/ss/android/downloadlib/f/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/api/a/a;Lcom/ss/android/downloadlib/guide/install/a;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/f/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/f/a$1;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/f/a$1;-><init>(Lcom/ss/android/downloadlib/f/a;Lcom/ss/android/socialbase/appdownloader/c/i;)V

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/f/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadlib/guide/install/a;)V

    return-void
.end method
