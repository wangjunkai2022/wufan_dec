.class Lcom/ss/android/socialbase/downloader/impls/a$3;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/a;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/ss/android/socialbase/downloader/impls/a;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->a:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->a:I

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->c(I)Lcom/ss/android/socialbase/downloader/h/c;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->a:I

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/impls/a;I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadListeners(Lcom/ss/android/socialbase/downloader/constants/f;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    monitor-enter v0

    const/4 v2, 0x0

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 8
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v3, v1}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->c:Lcom/ss/android/socialbase/downloader/impls/a;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->a:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/downloader/impls/a$3;->b:Z

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lcom/ss/android/socialbase/downloader/impls/a;IZ)V

    return-void
.end method
