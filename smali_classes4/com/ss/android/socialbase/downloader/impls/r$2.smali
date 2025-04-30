.class Lcom/ss/android/socialbase/downloader/impls/r$2;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/r;->b(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/ss/android/socialbase/downloader/impls/r;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/r;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->a:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->c(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->d(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "RetryScheduler"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScheduleAllTaskRetry: mWaitingRetryTasksCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/impls/r;->c(Lcom/ss/android/socialbase/downloader/impls/r;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 7
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/r;->e(Lcom/ss/android/socialbase/downloader/impls/r;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/ss/android/socialbase/downloader/impls/r$a;

    if-eqz v13, :cond_3

    .line 9
    iget v4, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->a:I

    iget-boolean v6, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    move-object v1, v13

    move-wide v2, v7

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/impls/r$a;->a(JIIZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->b:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v13}, Lcom/ss/android/socialbase/downloader/impls/r$a;->c()V

    .line 12
    :cond_2
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 13
    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 15
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/impls/r$a;

    .line 16
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/r$2;->c:Lcom/ss/android/socialbase/downloader/impls/r;

    iget v2, v2, Lcom/ss/android/socialbase/downloader/impls/r$a;->a:I

    invoke-static {v3, v2, v0, v11}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r;IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 17
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_5
    return-void
.end method
