.class Lcn/aigestudio/downloader/bizs/i;
.super Ljava/lang/Object;
.source "DLThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Lcn/aigestudio/downloader/bizs/j;

.field private b:Lcn/aigestudio/downloader/bizs/f;

.field private c:Lcn/aigestudio/downloader/bizs/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcn/aigestudio/downloader/bizs/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/aigestudio/downloader/bizs/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/aigestudio/downloader/bizs/j;Lcn/aigestudio/downloader/bizs/f;Lcn/aigestudio/downloader/bizs/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    .line 3
    iput-object p3, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    .line 4
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/aigestudio/downloader/bizs/e;

    .line 2
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/e;->a:Ljava/lang/String;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-wide v1, v1, Lcn/aigestudio/downloader/bizs/j;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-wide v1, v1, Lcn/aigestudio/downloader/bizs/j;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Lcn/aigestudio/downloader/bizs/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    return-object v0
.end method

.method public c()Lcn/aigestudio/downloader/bizs/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    return-object v0
.end method

.method public d(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    return-void
.end method

.method public e(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    return-void
.end method

.method public run()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method run() called.url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x2710

    .line 4
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 6
    invoke-direct {p0, v2}, Lcn/aigestudio/downloader/bizs/i;->a(Ljava/net/HttpURLConnection;)V

    .line 7
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    :cond_0
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iput-boolean v1, v3, Lcn/aigestudio/downloader/bizs/j;->e:Z

    .line 9
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dlThreadInfo.start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-wide v4, v4, Lcn/aigestudio/downloader/bizs/j;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";dlInfo.totalBytes.get()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-object v4, v4, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-wide v3, v3, Lcn/aigestudio/downloader/bizs/j;->c:J

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 11
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    invoke-interface {v3, v4}, Lcn/aigestudio/downloader/bizs/l;->c(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 13
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-object v4, v4, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    const-string v5, "rwd"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-wide v4, v4, Lcn/aigestudio/downloader/bizs/j;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open connection.url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-wide v5, v5, Lcn/aigestudio/downloader/bizs/j;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 17
    :goto_0
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v6, v5, Lcn/aigestudio/downloader/bizs/f;->t:Z

    const/4 v7, 0x0

    if-nez v6, :cond_3

    iget-boolean v5, v5, Lcn/aigestudio/downloader/bizs/f;->s:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-boolean v5, v5, Lcn/aigestudio/downloader/bizs/j;->e:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-boolean v5, v5, Lcn/aigestudio/downloader/bizs/j;->g:Z

    if-nez v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Thread running.id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ";threadCount="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/i;->b:Lcn/aigestudio/downloader/bizs/f;

    iget-object v8, v8, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v3, v4, v7, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 20
    iget-object v6, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-wide v7, v6, Lcn/aigestudio/downloader/bizs/j;->c:J

    int-to-long v9, v5

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 21
    iget-object v7, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    iget-object v6, v6, Lcn/aigestudio/downloader/bizs/j;->b:Ljava/lang/String;

    invoke-interface {v7, v6, v5}, Lcn/aigestudio/downloader/bizs/l;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-boolean v4, v4, Lcn/aigestudio/downloader/bizs/j;->e:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v5, " will be stopped."

    const-string v6, "Thread "

    if-eqz v4, :cond_4

    .line 23
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-object v6, v6, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iput-boolean v7, v4, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 25
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    invoke-interface {v4, v5}, Lcn/aigestudio/downloader/bizs/l;->d(Lcn/aigestudio/downloader/bizs/j;)V

    goto :goto_1

    .line 26
    :cond_4
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-boolean v4, v4, Lcn/aigestudio/downloader/bizs/j;->g:Z

    if-eqz v4, :cond_5

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-object v6, v6, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iput-boolean v7, v4, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 29
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    invoke-interface {v4, v5}, Lcn/aigestudio/downloader/bizs/l;->a(Lcn/aigestudio/downloader/bizs/j;)V

    goto :goto_1

    .line 30
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " will be finished."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    invoke-interface {v4, v5}, Lcn/aigestudio/downloader/bizs/l;->c(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    if-eqz v0, :cond_6

    .line 32
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 33
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_10

    .line 34
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    :catch_1
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_8

    :catch_3
    move-exception v4

    goto/16 :goto_c

    :catchall_0
    move-exception v1

    move-object v3, v0

    goto/16 :goto_11

    :catch_4
    move-exception v3

    move-object v4, v3

    move-object v3, v0

    goto :goto_4

    :catch_5
    move-exception v3

    move-object v4, v3

    move-object v3, v0

    goto :goto_8

    :catch_6
    move-exception v3

    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_c

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    goto/16 :goto_11

    :catch_7
    move-exception v3

    move-object v2, v0

    move-object v4, v3

    move-object v3, v2

    .line 35
    :goto_4
    :try_start_6
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iput-boolean v1, v5, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 36
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    invoke-interface {v1, v5}, Lcn/aigestudio/downloader/bizs/l;->d(Lcn/aigestudio/downloader/bizs/j;)V

    .line 37
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_7

    .line 38
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 39
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_7

    .line 40
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_7
    if-eqz v2, :cond_d

    goto :goto_10

    :catch_9
    move-exception v3

    move-object v2, v0

    move-object v4, v3

    move-object v3, v2

    .line 41
    :goto_8
    :try_start_8
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iput-boolean v1, v5, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 42
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    invoke-interface {v1, v5}, Lcn/aigestudio/downloader/bizs/l;->d(Lcn/aigestudio/downloader/bizs/j;)V

    .line 43
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_9

    .line 44
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_a

    :cond_9
    :goto_9
    if-eqz v3, :cond_a

    .line 45
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_b

    .line 46
    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_b
    if-eqz v2, :cond_d

    goto :goto_10

    :catch_b
    move-exception v3

    move-object v2, v0

    move-object v4, v3

    move-object v3, v2

    .line 47
    :goto_c
    :try_start_a
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    iput-boolean v1, v5, Lcn/aigestudio/downloader/bizs/j;->f:Z

    .line 48
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/i;->c:Lcn/aigestudio/downloader/bizs/l;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/i;->a:Lcn/aigestudio/downloader/bizs/j;

    invoke-interface {v1, v5}, Lcn/aigestudio/downloader/bizs/l;->d(Lcn/aigestudio/downloader/bizs/j;)V

    .line 49
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v0, :cond_b

    .line 50
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catch_c
    move-exception v0

    goto :goto_e

    :cond_b
    :goto_d
    if-eqz v3, :cond_c

    .line 51
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_f

    .line 52
    :goto_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_f
    if-eqz v2, :cond_d

    .line 53
    :goto_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return-void

    :catchall_2
    move-exception v1

    :goto_11
    if-eqz v0, :cond_e

    .line 54
    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_12

    :catch_d
    move-exception v0

    goto :goto_13

    :cond_e
    :goto_12
    if-eqz v3, :cond_f

    .line 55
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_14

    .line 56
    :goto_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_14
    if-eqz v2, :cond_10

    .line 57
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 58
    :cond_10
    goto :goto_16

    :goto_15
    throw v1

    :goto_16
    goto :goto_15
.end method
