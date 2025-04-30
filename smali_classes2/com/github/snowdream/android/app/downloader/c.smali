.class public Lcom/github/snowdream/android/app/downloader/c;
.super Ljava/lang/Object;
.source "CommonDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final q:I = 0x1

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field public static final u:I = 0x2

.field public static final v:I = 0x6

.field public static final w:I = 0x7


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Landroid/os/Handler;

.field c:I

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/io/File;

.field private j:Ljava/net/HttpURLConnection;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Ljava/io/RandomAccessFile;

.field private m:Ljava/io/InputStream;

.field private n:J

.field o:Ljava/lang/String;

.field p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/c;->c:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/io/RandomAccessFile;

    .line 5
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->m:Ljava/io/InputStream;

    .line 6
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->f:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    const-string p1, "/"

    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    .line 11
    :cond_0
    iput-wide p4, p0, Lcom/github/snowdream/android/app/downloader/c;->d:J

    return-void
.end method

.method static synthetic a(Lcom/github/snowdream/android/app/downloader/c;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method static synthetic b(Lcom/github/snowdream/android/app/downloader/c;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic c(Lcom/github/snowdream/android/app/downloader/c;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method static synthetic d(Lcom/github/snowdream/android/app/downloader/c;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private f()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->m:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    .line 10
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private m()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/github/snowdream/android/app/downloader/c;->m:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_2

    .line 3
    iget-object v6, p0, Lcom/github/snowdream/android/app/downloader/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/c;->u()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v6, p0, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v1, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 6
    iget-wide v5, p0, Lcom/github/snowdream/android/app/downloader/c;->n:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/github/snowdream/android/app/downloader/c;->n:J

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v2

    const-wide/16 v9, 0xc8

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 8
    div-long/2addr v2, v7

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/github/snowdream/android/app/downloader/c;->o:Ljava/lang/String;

    .line 9
    iget-wide v2, p0, Lcom/github/snowdream/android/app/downloader/c;->n:J

    const-wide/16 v7, 0x64

    mul-long v2, v2, v7

    iget-wide v7, p0, Lcom/github/snowdream/android/app/downloader/c;->e:J

    div-long/2addr v2, v7

    long-to-int v3, v2

    .line 10
    iput v3, p0, Lcom/github/snowdream/android/app/downloader/c;->p:I

    const/4 v2, 0x5

    .line 11
    invoke-direct {p0, v2}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    move-wide v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private n(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/c;->o:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/snowdream/android/app/downloader/c;->p:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget p1, p0, Lcom/github/snowdream/android/app/downloader/c;->p:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 5
    iget-wide v1, p0, Lcom/github/snowdream/android/app/downloader/c;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->f:Ljava/lang/String;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/c;->f()V

    .line 2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_0
    const/4 v0, 0x3

    .line 4
    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/c;->e:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/c;->d:J

    return-wide v0
.end method

.method public j()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    return-void
.end method

.method public p(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/c;->d:J

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    return-void
.end method

.method public r(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->b:Landroid/os/Handler;

    return-void
.end method

.method public run()V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "application/octet-stream"

    const-string v3, "Content-Type"

    const-string v4, "GET"

    const-string v5, "Keep-Alive"

    const-string v6, "Connection"

    const/4 v0, 0x2

    .line 1
    invoke-direct {v1, v0}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    const/16 v0, 0x13

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/g0;->B(Ljava/lang/String;)Z

    .line 6
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/c;->h:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/c;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    :try_start_0
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    return-void

    .line 11
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->u()V

    return-void

    :cond_2
    const/4 v9, 0x0

    .line 13
    :goto_1
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-lez v0, :cond_25

    .line 14
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    goto :goto_2

    :cond_3
    move-wide v12, v10

    .line 15
    :goto_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->f:Ljava/lang/String;

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    iput-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    const/16 v8, 0xbb8

    .line 17
    invoke-virtual {v15, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 18
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v15, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 19
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v15, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v15, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 21
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    const/16 v8, 0xc8

    if-ne v15, v8, :cond_1d

    .line 22
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 23
    invoke-static {v15}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v17, ""

    if-eqz v16, :cond_4

    move-object/from16 v15, v17

    .line 24
    :cond_4
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 25
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/c;->d:J

    cmp-long v18, v7, v10

    if-nez v18, :cond_5

    .line 26
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/github/snowdream/android/app/downloader/c;->d:J

    .line 27
    :cond_5
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v8, "application/zip"

    const-string v10, "application/vnd.android.package-archive"

    if-nez v7, :cond_8

    :try_start_3
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->d:J

    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    move-object/from16 v20, v8

    int-to-long v7, v11

    cmp-long v11, v14, v7

    if-nez v11, :cond_6

    goto :goto_3

    .line 28
    :cond_6
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_7

    if-nez v9, :cond_22

    goto/16 :goto_b

    .line 31
    :cond_7
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_21

    goto/16 :goto_7

    :cond_8
    move-object/from16 v20, v8

    .line 32
    :goto_3
    :try_start_4
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->d:J

    const-wide/16 v18, 0x0

    cmp-long v8, v14, v18

    if-eqz v8, :cond_a

    .line 33
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v7, v8

    cmp-long v11, v14, v7

    if-eqz v11, :cond_a

    .line 34
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_9

    if-nez v9, :cond_22

    goto/16 :goto_b

    .line 37
    :cond_9
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_21

    goto/16 :goto_7

    .line 38
    :cond_a
    :try_start_5
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v14, v8

    iput-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    const/4 v8, 0x7

    .line 39
    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    .line 40
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v18, 0x0

    cmp-long v8, v14, v18

    if-eqz v8, :cond_d

    cmp-long v8, v12, v14

    if-nez v8, :cond_d

    const/4 v7, 0x1

    .line 41
    :try_start_6
    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->f()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 43
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v18

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    goto/16 :goto_c

    .line 44
    :cond_b
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_c

    const/4 v2, 0x4

    .line 45
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    const/4 v9, 0x1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    const/4 v9, 0x1

    goto/16 :goto_8

    .line 46
    :cond_d
    :try_start_7
    new-instance v8, Lcom/github/snowdream/android/app/downloader/c$a;

    invoke-direct {v8, v1}, Lcom/github/snowdream/android/app/downloader/c$a;-><init>(Lcom/github/snowdream/android/app/downloader/c;)V

    .line 47
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 48
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->u()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 50
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    if-nez v9, :cond_22

    goto/16 :goto_b

    .line 51
    :cond_e
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_f

    const/4 v2, 0x4

    .line 52
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    :cond_f
    return-void

    .line 53
    :cond_10
    :try_start_8
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    const/16 v8, 0xbb8

    .line 54
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 55
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 56
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_11

    .line 58
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    const-string v8, "Range"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_11
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v8, 0xc8

    if-eq v0, v8, :cond_12

    const/16 v8, 0xce

    if-eq v0, v8, :cond_12

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_4

    .line 60
    :cond_12
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    const-string v11, "Transfer-Encoding"

    invoke-virtual {v8, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string v11, "chunked"

    .line 62
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_13
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_14

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_14

    .line 63
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_14
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_17

    .line 64
    new-instance v0, Lcom/github/snowdream/android/app/downloader/c$b;

    invoke-direct {v0, v1}, Lcom/github/snowdream/android/app/downloader/c$b;-><init>(Lcom/github/snowdream/android/app/downloader/c;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_15

    const/4 v8, 0x4

    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 67
    :cond_15
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_16

    if-nez v9, :cond_22

    goto/16 :goto_b

    .line 68
    :cond_16
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_21

    goto/16 :goto_7

    .line 69
    :cond_17
    :try_start_9
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    goto :goto_5

    :cond_18
    move-object/from16 v17, v0

    .line 71
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    move-object/from16 v8, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/c;->d:J

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v14, v0

    cmp-long v0, v10, v14

    if-nez v0, :cond_19

    goto :goto_6

    .line 73
    :cond_19
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 74
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_1a

    if-nez v9, :cond_22

    goto/16 :goto_b

    .line 75
    :cond_1a
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_21

    goto :goto_7

    .line 76
    :cond_1b
    :goto_6
    :try_start_a
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v0, v8, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->l:Ljava/io/RandomAccessFile;

    .line 77
    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    iput-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->n:J

    .line 79
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/c;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->m:Ljava/io/InputStream;

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->m()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 81
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1c

    if-nez v9, :cond_22

    goto/16 :goto_b

    .line 82
    :cond_1c
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_25

    const/4 v2, 0x4

    .line 83
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    goto/16 :goto_d

    .line 84
    :cond_1d
    :try_start_b
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 85
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 86
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_1e

    if-nez v9, :cond_22

    goto :goto_b

    .line 87
    :cond_1e
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_21

    :goto_7
    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    .line 88
    :goto_8
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_1f

    const/4 v8, 0x4

    .line 90
    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 91
    :cond_1f
    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_20

    if-nez v9, :cond_22

    goto :goto_b

    .line 92
    :cond_20
    iget v0, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v0, :cond_21

    :goto_9
    const/4 v7, 0x4

    .line 93
    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    :cond_21
    const/4 v7, 0x4

    goto/16 :goto_1

    .line 94
    :goto_a
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_23

    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/c;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/c;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_23

    if-nez v9, :cond_22

    :goto_b
    const/4 v2, 0x1

    .line 95
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    .line 96
    :cond_22
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/c;->f()V

    goto :goto_d

    .line 97
    :cond_23
    iget v2, v1, Lcom/github/snowdream/android/app/downloader/c;->c:I

    if-nez v2, :cond_24

    const/4 v2, 0x4

    .line 98
    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/c;->n(I)V

    .line 99
    :cond_24
    throw v0

    :cond_25
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/c;->f:Ljava/lang/String;

    return-void
.end method
