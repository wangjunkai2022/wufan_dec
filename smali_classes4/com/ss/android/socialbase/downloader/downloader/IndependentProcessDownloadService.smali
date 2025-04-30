.class public Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;
.super Lcom/ss/android/socialbase/downloader/downloader/DownloadService;
.source "IndependentProcessDownloadService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->T()Lcom/ss/android/socialbase/downloader/downloader/c$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/v;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/v;-><init>()V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/downloader/c$a;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->z()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloadService;->a:Lcom/ss/android/socialbase/downloader/downloader/o;

    .line 6
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->a(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
