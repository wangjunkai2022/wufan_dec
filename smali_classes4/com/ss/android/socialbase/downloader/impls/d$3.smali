.class Lcom/ss/android/socialbase/downloader/impls/d$3;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Landroid/util/SparseArray;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/impls/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->c:Lcom/ss/android/socialbase/downloader/impls/d;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->b:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->c:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/impls/d;)Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->c:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/impls/d;)Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->a:Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->a:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 5
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 7
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->c:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lcom/ss/android/socialbase/downloader/impls/d;)Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/k;->f()Landroid/util/SparseArray;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->b:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 13
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->c:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->b(Lcom/ss/android/socialbase/downloader/impls/d;)V

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d$3;->c:Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->h()V

    .line 17
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/d;->c:Lcom/ss/android/socialbase/downloader/constants/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/constants/d;)V

    return-void

    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
