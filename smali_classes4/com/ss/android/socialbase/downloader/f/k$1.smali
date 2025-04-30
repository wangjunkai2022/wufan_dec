.class Lcom/ss/android/socialbase/downloader/f/k$1;
.super Ljava/lang/Object;
.source "SegmentDispatcher.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/h/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/f/k;

.field private b:I


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/f/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/k;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/f/k;->b(Lcom/ss/android/socialbase/downloader/f/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/f/k;->c(Lcom/ss/android/socialbase/downloader/f/k;)Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/f/k;->d(Lcom/ss/android/socialbase/downloader/f/k;)Lcom/ss/android/socialbase/downloader/model/d;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/f/k;->e(Lcom/ss/android/socialbase/downloader/f/k;)J

    move-result-wide v10

    const-wide/16 v3, 0x0

    cmp-long v5, v10, v3

    if-gtz v5, :cond_2

    .line 5
    monitor-exit v0

    return-wide v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->b:I

    .line 7
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    const/4 v5, 0x0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v8, v10

    .line 9
    invoke-static/range {v4 .. v9}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/k;ZJJ)Lcom/ss/android/socialbase/downloader/f/m;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v2, v1}, Lcom/ss/android/socialbase/downloader/f/k;->a(Lcom/ss/android/socialbase/downloader/f/k;Lcom/ss/android/socialbase/downloader/f/m;)Z

    .line 11
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/f/m;->f()V

    .line 12
    iget v1, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->b:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/f/k$1;->a:Lcom/ss/android/socialbase/downloader/f/k;

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/f/k;->f(Lcom/ss/android/socialbase/downloader/f/k;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    mul-long v1, v1, v10

    monitor-exit v0

    return-wide v1

    .line 13
    :cond_3
    monitor-exit v0

    return-wide v10

    .line 14
    :cond_4
    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :goto_1
    return-wide v1
.end method
