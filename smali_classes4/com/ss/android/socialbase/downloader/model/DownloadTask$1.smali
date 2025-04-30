.class Lcom/ss/android/socialbase/downloader/model/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/model/DownloadTask;->asyncDownload(Lcom/ss/android/socialbase/downloader/downloader/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/p;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/downloader/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadTask$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadTask$1;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadTask$1;->b:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->download()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadTask$1;->a:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(I)V

    :cond_0
    return-void
.end method
