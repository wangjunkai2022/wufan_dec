.class public Lcom/ss/android/socialbase/downloader/i/c;
.super Ljava/lang/Object;
.source "DownloadListenerUtils.java"


# direct methods
.method public static a(ILandroid/util/SparseArray;ZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;",
            ">;Z",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            "Lcom/ss/android/socialbase/downloader/exception/BaseException;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p2

    .line 4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 6
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 7
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq p0, v1, :cond_7

    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    const/4 v1, 0x4

    if-eq p0, v1, :cond_5

    const/4 v1, 0x5

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-eq p0, v1, :cond_3

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFailed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_1

    .line 9
    :pswitch_1
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onSuccessed(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 10
    :pswitch_2
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onCanceled(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 11
    :pswitch_3
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onPause(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 12
    :pswitch_4
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFirstSuccess(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 13
    :pswitch_5
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;

    if-eqz v1, :cond_8

    .line 14
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;

    invoke-virtual {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;->onIntercept(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 15
    :cond_1
    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/s;

    if-eqz v1, :cond_8

    .line 16
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/s;

    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/s;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onRetryDelay(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onFirstStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-interface {v0, p3, p4}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onRetry(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onProgress(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 21
    :cond_6
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onStart(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 22
    :cond_7
    invoke-interface {v0, p3}, Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;->onPrepare(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 23
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
