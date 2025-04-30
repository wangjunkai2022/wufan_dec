.class Lcom/join/mgps/task/e$a;
.super Ljava/lang/Thread;
.source "UNAndroidZIPThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/task/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field b:Ljava/io/File;

.field c:Ljava/io/File;

.field d:Ljava/io/File;

.field final synthetic e:Lcom/join/mgps/task/e;


# direct methods
.method public constructor <init>(Lcom/join/mgps/task/e;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/task/e$a;->a:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/join/mgps/task/e$a;->d:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/task/e$a;->b:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/task/e$a;->d:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/task/e;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/task/e$a;->a:Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/join/mgps/task/e$a;->d:Ljava/io/File;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/task/e$a;->b:Ljava/io/File;

    .line 10
    iput-object p3, p0, Lcom/join/mgps/task/e$a;->c:Ljava/io/File;

    .line 11
    iput-object p4, p0, Lcom/join/mgps/task/e$a;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/task/e$a;->a:Z

    return-void
.end method

.method public run()V
    .locals 13

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/task/e$a;->a:Z

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/join/mgps/task/e$a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->n1(Ljava/io/File;)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/task/e$a;->c:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->n1(Ljava/io/File;)J

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lcom/join/mgps/task/e$a;->d:Ljava/io/File;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_1

    :cond_0
    move-wide v7, v5

    .line 7
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zip currentSize ="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "   surrentApk= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x2

    .line 8
    iget-object v4, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-static {v4}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    mul-long v11, v11, v9

    .line 9
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-static {v4}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-static {v4}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUnzip_size()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v11, v9

    goto :goto_2

    :catch_0
    move-exception v4

    .line 11
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    cmp-long v4, v11, v5

    if-nez v4, :cond_2

    const-wide/16 v11, 0x1

    .line 12
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-static {v4}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    const-wide/16 v5, 0x64

    add-long/2addr v0, v2

    add-long/2addr v0, v7

    mul-long v0, v0, v5

    div-long/2addr v0, v11

    invoke-virtual {v4, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";zip progress ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-static {v1}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-static {v0}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    iget-boolean v0, v0, Lcom/join/mgps/task/e;->d:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/s;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-static {v3}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-static {v4}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/join/mgps/event/s;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v0, 0x3e8

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/task/e$a;->e:Lcom/join/mgps/task/e;

    invoke-virtual {v0}, Lcom/join/mgps/task/e;->a()V

    :cond_4
    return-void
.end method
