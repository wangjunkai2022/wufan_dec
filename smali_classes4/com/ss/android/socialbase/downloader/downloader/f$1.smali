.class Lcom/ss/android/socialbase/downloader/downloader/f$1;
.super Ljava/lang/Object;
.source "DownloadStatusHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/f;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/f;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/f$1;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f$1;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/f$1;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->i(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/f$1;->a:Lcom/ss/android/socialbase/downloader/downloader/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/downloader/f;ILcom/ss/android/socialbase/downloader/exception/BaseException;)V

    return-void
.end method
