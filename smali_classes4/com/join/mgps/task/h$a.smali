.class Lcom/join/mgps/task/h$a;
.super Ljava/lang/Thread;
.source "UNZIPThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/task/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field b:Ljava/io/File;

.field final synthetic c:Lcom/join/mgps/task/h;


# direct methods
.method public constructor <init>(Lcom/join/mgps/task/h;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/task/h$a;->a:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/task/h$a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/task/h$a;->a:Z

    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/task/h$a;->a:Z

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v0}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->b:Ljava/io/File;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->n1(Ljava/io/File;)J

    move-result-wide v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zip currentSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x2

    .line 7
    iget-object v4, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v4}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long v4, v4, v2

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v2}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v2}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    goto :goto_3

    .line 11
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v0}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 12
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";zip progress ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v1}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v0}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v0}, Lcom/join/mgps/task/h;->c(Lcom/join/mgps/task/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/s;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v3}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-static {v4}, Lcom/join/mgps/task/h;->b(Lcom/join/mgps/task/h;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_4
    const-wide/16 v0, 0x3e8

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 17
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/task/h$a;->c:Lcom/join/mgps/task/h;

    invoke-virtual {v0}, Lcom/join/mgps/task/h;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    return-void

    .line 19
    :goto_4
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
