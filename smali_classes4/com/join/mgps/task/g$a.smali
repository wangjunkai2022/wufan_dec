.class Lcom/join/mgps/task/g$a;
.super Ljava/lang/Thread;
.source "UNZIPForPluginThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/task/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field b:Ljava/io/File;

.field c:Ljava/io/File;

.field final synthetic d:Lcom/join/mgps/task/g;


# direct methods
.method public constructor <init>(Lcom/join/mgps/task/g;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/task/g$a;->d:Lcom/join/mgps/task/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/task/g$a;->a:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/join/mgps/task/g$a;->c:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/task/g$a;->b:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/task/g$a;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/task/g$a;->a:Z

    return-void
.end method

.method public run()V
    .locals 11

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/task/g$a;->a:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/task/g$a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->n1(Ljava/io/File;)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/task/g$a;->c:Ljava/io/File;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_1

    :cond_0
    move-wide v5, v3

    .line 6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zip currentSize ="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "   surrentApk= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x2

    .line 7
    iget-object v2, p0, Lcom/join/mgps/task/g$a;->d:Lcom/join/mgps/task/g;

    invoke-static {v2}, Lcom/join/mgps/task/g;->b(Lcom/join/mgps/task/g;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v9

    mul-long v9, v9, v7

    cmp-long v2, v9, v3

    if-nez v2, :cond_1

    const-wide/16 v9, 0x1

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/task/g$a;->d:Lcom/join/mgps/task/g;

    invoke-static {v2}, Lcom/join/mgps/task/g;->b(Lcom/join/mgps/task/g;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    const-wide/16 v3, 0x64

    add-long/2addr v0, v5

    mul-long v0, v0, v3

    div-long/2addr v0, v9

    invoke-virtual {v2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";zip progress ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/task/g$a;->d:Lcom/join/mgps/task/g;

    invoke-static {v1}, Lcom/join/mgps/task/g;->b(Lcom/join/mgps/task/g;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/task/g$a;->d:Lcom/join/mgps/task/g;

    invoke-static {v0}, Lcom/join/mgps/task/g;->b(Lcom/join/mgps/task/g;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const-wide/16 v0, 0x3e8

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/task/g$a;->d:Lcom/join/mgps/task/g;

    invoke-virtual {v0}, Lcom/join/mgps/task/g;->a()V

    :cond_2
    return-void
.end method
